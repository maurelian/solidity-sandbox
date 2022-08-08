// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "forge-std/Test.sol";

// A demonstration of the fact that logging info as indexed ('topics') is
// almost always cheaper than otherwise (as data).
// Run with
// $ forge test --match-contract TestLog


contract LogDefs {
    event LogIndexed(uint indexed, address indexed);//, bytes32 indexed);
    event LogNonindexed(uint, address);//, bytes32);
}

contract TestLogTopics is LogDefs, DSTest {

    function test_logIndexed() public { // [2045]
        emit LogIndexed(
            1,
            0xFFfFfFffFFfffFFfFFfFFFFFffFFFffffFfFFFfF);
        // );
    }
}


contract TestLogData is LogDefs, DSTest {
    function test_logNonIndexed() public { // [2344]
        emit LogNonindexed(
            1,
            0xFFfFfFffFFfffFFfFFfFFFFFffFFFffffFfFFFfF
        );
    }
}
