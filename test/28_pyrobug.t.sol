// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

contract Test28 is Test {
  bytes32[] public arr;

  constructor() {
    arr.push(hex"1234");
    arr.push(hex"5678");
  }

  function getNum() public pure returns (uint256) {
    return 1;
  }

  function test_pyrobug() external returns (bytes32) {
    return arr[getNum()];
  }
}
