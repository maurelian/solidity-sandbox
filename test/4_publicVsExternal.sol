// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract Target {


}

contract Test4 {
  function test_ext() external view { // 3033
    _foo();
  }

  function _foo() internal view {
    console.log();
  }

  function test_pub() public view { // 3035
    console.log();
  }
}
