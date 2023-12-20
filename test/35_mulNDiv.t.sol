// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";

contract Test35 is Test {
    function test_mulNDiv() external {
        console2.log(12, get75P(12));
        console2.log(11, get75P(11));
        console2.log(10, get75P(10));
        console2.log(9, get75P(9));
        console2.log(8, get75P(8));
        console2.log(7, get75P(7));
        console2.log(6, get75P(6));
    }

    function get75P(uint256 x) public returns (uint256 y) {
        y = (x * 75) / 100;
    }
}
