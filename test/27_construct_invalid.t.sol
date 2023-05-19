// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

contract Test27 is Test {
  function test_construct_invalid() external {
    assembly {
      // write the invalid opcode to the next free word in memory
      mstore(0x40, 0x6000)
      mstore(0x6000, 0xfe)
      // call the constructor
      pop(create(0, 0x6000, 1))
    }
  }
}


