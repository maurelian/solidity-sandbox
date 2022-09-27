// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

contract Test25 is Test {

  // Shows that downcasting has an implicit overflow check.
  function test_downcast() external returns (uint32) {
    vm.expectRevert(stdError.arithmeticError);
    uint64 a = type(uint32).max + 1;
    return uint32(a);
  }
}
