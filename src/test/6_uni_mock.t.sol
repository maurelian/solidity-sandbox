// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import {DSTest} from "../../lib/ds-test/src/test.sol";
import {Vm} from "../../lib/forge-std/src/Vm.sol";
import {console} from "../../lib/forge-std/src/console.sol";

interface ERC20 {
  function transfer(address,uint256) external returns (bool);
}

contract UniMock {
  mapping(bytes32 => bytes) callAndResponse;

  function setMock(bytes calldata call, bytes calldata response) external{
    callAndResponse[keccak256(
      abi.encode(call)
    )] = response;
  }

  fallback(bytes calldata call) payable external returns(bytes memory) {
    bytes32 key = keccak256(abi.encode(call));
    bytes memory response = callAndResponse[key];
    delete callAndResponse[key];
    return response;
  }
}

contract Test6 is DSTest {
    Vm vm = Vm(HEVM_ADDRESS);
    UniMock u;

    constructor() {
        u = new UniMock();
    }

    function test_Mocking() external {
        // load the call:
        bytes memory mockCall = abi.encodeWithSignature('transfer(address,uint256)', address(1), 1);
        bytes memory mockResponse = abi.encode(true);
        u.setMock(mockCall, mockResponse);

        bool actualResponse = ERC20(address(u)).transfer(address(1), 1);
        console.logBool(actualResponse);
        // assertEq(actualResponse, true);
    }
}
