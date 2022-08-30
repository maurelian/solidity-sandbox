// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import "forge-std/Test.sol";

// A test to see if structs are efficient for use as calldata

contract Data3 {
  struct Args {
    bytes14 padding;
    bytes16 shortenedAmount;
    bytes2 assetId;
  }
}

contract Target3 is Data3 {

  function submitBytes32Compressed(bytes32) external view {
    console.log(msg.data.length); // 36
    console.logBytes(msg.data);
  }

  // can you compress data by using a struct for an arg?
  function submitStrArgs(Args calldata) external view {
    console.log(msg.data.length); // 100
    console.logBytes(msg.data);
  }
}

contract Test3 is Data3 {
    Target3 t;
    bytes32 foo = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    function setUp() public {
        t = new Target3();
    }

    function test_1() external view {
      t.submitBytes32Compressed(foo);
    }

    function test_2() external view {
      Args memory a = Args({
        padding: 0xffffffffffffffffffffffffffff,
        shortenedAmount: 0xffffffffffffffffffffffffffffffff,
        assetId: 0xffff
      });
      t.submitStrArgs(a);
    }
}




