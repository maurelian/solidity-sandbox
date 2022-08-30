// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";


contract Test8 is Test {


    function test_blockHash() external {
        vm.roll(200);
        bytes32 hash0 = blockhash(block.number);
        emit log_bytes32(hash0);
        assertEq(hash0, bytes32(0x00));
        // Test fails with:
        // ├─ emit log_bytes32(: 0x26700e13983fefbd9cf16da2ed70fa5c6798ac55062a4803121a869731e308d2)
        // ├─ emit log(: "Error: a == b not satisfied [bytes32]")
        // ├─ emit log_named_bytes32(key: "  Expected", val: 0x0000000000000000000000000000000000000000000000000000000000000000)
        // ├─ emit log_named_bytes32(key: "    Actual", val: 0x26700e13983fefbd9cf16da2ed70fa5c6798ac55062a4803121a869731e308d2)
        // ├─ emit log_bytes32(: 0xd86d8a3f7c82c89ed8e04140017aa108a0a1469249f92c8f022b9dbafa87b883)
        // ├─ emit log_bytes32(: 0xb912c5eb6319a4a6a83580b9611610bedb31614179330261bfd87a41347cae1c)
        // └─ ← ()

        bytes32 hash1 = blockhash(block.number - 1);
        emit log_bytes32(hash1);

        bytes32 hash2 = blockhash(block.number - 2);
        emit log_bytes32(hash2);
    }
}
