// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

contract Test25 is Test {
    // Shows that downcasting has an implicit overflow check.
    function test_downcast() external {
      // does not revert?
      uint32(
        uint64(
          type(uint32).max
        ) + 1
      );

      // reverts?
      vm.expectRevert(stdError.arithmeticError);
      // uint32(
      //   uint64(
          type(uint32).max + 1;
      //   )
      // );
    }
}
