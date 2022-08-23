// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
import "forge-std/Test.sol";


// question: Can you do a delegate call from a view function???
// https://docs.soliditylang.org/en/latest/contracts.html?highlight=view#view-functions
contract Test18 is Test {

    function test_viewFunctions(address x) external view {
        x.delegatecall("");
        //  error[8961]: TypeError: Function cannot be declared as view because this expression (potentially) modifies the state.
        //   --> src/test/18_viewFunctions.sol:11:9:
        //    |
        // 11 |         x.delegatecall("");
        //    |         ^^^^^^^^^^^^^^^^^^

    }
}
