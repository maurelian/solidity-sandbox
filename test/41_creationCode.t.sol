// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";

contract Test41 is Test {
    function test_creationCode() external {
        console.logBytes(type(SimpleStorage).creationCode);
    }

    function test_deployCodeAsIs() external {
        bytes memory code = type(SimpleStorage).creationCode;
        address addr;
        assembly {
            addr := create(0, add(code, 0x20), mload(code))
        }
        console.log("deployed at", addr);
    }

    function test_deployCodWithArgs() external {
        bytes memory code = type(SimpleStorage).creationCode;
        address addr;
        assembly {
            addr := create(0, add(code, 0x20), mload(code))
        }
        console.log("deployed at", addr);
    }
}

/// @title A simple getter setter contract
contract SimpleStorage {
    uint256 private storedData;

    constructor(uint256 initVal) {
        storedData = initVal;
    }

    function set(uint256 x) public {
        storedData = x;
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}
