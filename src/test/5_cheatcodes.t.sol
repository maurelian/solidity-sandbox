// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import {DSTest} from "../../lib/ds-test/src/test.sol";
import {Vm} from "../../lib/forge-std/src/Vm.sol";
import "./console.sol";

// A test to see if structs are efficient for use as calldata

contract Target {
    function foo() external {
        console.log(block.timestamp);
    }
}

contract Test5 is DSTest {
    Vm vm = Vm(HEVM_ADDRESS);
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
