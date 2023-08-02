// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract Test32 is Test {


  function test_ternary_hell() external returns (string memory) {
    uint num = block.timestamp % 10;

    return num == 1 ? "one" :
      num == 2 ? "two" :
      num == 3 ? "three" :
      num == 4 ? "four" :
      num == 5 ? "five" :
      num == 6 ? "six" :
      num == 7 ? "seven" :
      num == 8 ? "eight" :
      num == 9 ? "nine" :
      "zero";
  }

}
