// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";
import {console2} from "../../lib/forge-std/src/console2.sol";

contract Test30 is Test {
  function test_tilde() external {
    // ~ is a bitwise not
    console.log(~uint256(0));
  }
}
