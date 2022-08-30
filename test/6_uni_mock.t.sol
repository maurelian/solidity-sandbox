// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import "forge-std/Test.sol";

import {console} from "../../lib/forge-std/src/console.sol";

interface ERC20 {
  function transfer(address,uint256) external returns (bool);
}

interface ERC20Reverts {
  function transfer(address,uint256) external;
}

// Universal mock contract
contract UniMock {
  // UniMock specific error
  error CallNotFound(bytes);

  enum CallState { NotSet, Succeeds, Reverts }
  struct Response {
    bytes responseData;
    CallState callState;
  }
  // key: hash of the calldata. Value: data to respond with.
  mapping(bytes32 => Response) callAndResponse;

  // The only non-fallback public function. Sorry if you have a selector collision.
  function setMock(
    CallState _state,
    bytes calldata _call, // the calldata you'll submit
    bytes calldata _responseData // the response you want
  ) external
  {
    callAndResponse[keccak256(abi.encode(_call))] = Response ({
      responseData: _responseData,
      callState: _state
    });
  }

  fallback(bytes calldata call) payable external returns(bytes memory) {
    bytes32 key = keccak256(abi.encode(call));
    Response memory response = callAndResponse[key];
    delete callAndResponse[key];

    if (response.callState == CallState.Succeeds) return response.responseData;
    if (response.callState == CallState.Reverts) revert(string(response.responseData));
    revert CallNotFound(call);
  }
  receive() payable external {}
}

contract Test6 is Test {

  UniMock u;

  constructor() {
      u = new UniMock();
  }

  function test_TransferMock() external {
    // Test a mocked successful transfer.
    bytes memory mockCall = abi.encodeWithSignature('transfer(address,uint256)', address(1), 1);
    bytes memory mockResponse = abi.encode(true);
    u.setMock(UniMock.CallState.Succeeds, mockCall, mockResponse);
    assertTrue(
      ERC20(address(u)).transfer(address(1), 1)
    );

    // Test a mocked failed transfer.
    mockResponse = abi.encode(false);
    u.setMock(UniMock.CallState.Succeeds, mockCall, mockResponse);
    assertTrue(
      ERC20(address(u)).transfer(address(1), 1) == false
    );

    // Test a mocked reverting transfer.
    u.setMock(UniMock.CallState.Reverts, mockCall, "Insufficient balance");
    bytes memory expected = abi.encodeWithSignature("Error(string)", "Insufficient balance");
    (bool success, bytes memory r) = address(u).call(mockCall);
    assertTrue(!success);
    assertEq0(
      expected,
      r
    );

    // test a succesful transfer with no return data
    u.setMock(UniMock.CallState.Succeeds, mockCall, "");
    (bool success2, bytes memory r2) = address(u).call(mockCall);
    assertTrue(success2);
    assertEq0(
      "",
      r2
    );
  }

  function testFail_UnsetMock() public {
    // Test a call that isn't setup yet
    ERC20(address(u)).transfer(address(1), 1);
  }
}
