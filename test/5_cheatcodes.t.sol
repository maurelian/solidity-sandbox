// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import "forge-std/Test.sol";
import "forge-std/console.sol";

// A test to see if structs are efficient for use as calldata

contract Target {
    function foo() external view {
        console.log(block.timestamp);
    }
}

contract Test5 is Test {

    Target t;

    constructor() {
        t = new Target();
    }

    function test_warping() external {
        vm.warp(100);
        console.log(block.timestamp);
        t.foo();
        console.log(block.timestamp);
        t.foo();
        console.log(block.timestamp);
    }
}
