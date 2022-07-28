// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import "forge-std/Test.sol";

contract Dispatcher is Test {
  // This contract is a useful case study for exposing the use of the binary search in solidity's
  // dispatcher. If there are 4 functions or less, the search is just linear, above that threshold
  // binary search is used.
  // The functions in this contract are ordered by the value of their function selectors from lowest to highest.
  // Try running `forge test -m test_4` with and without the last function commented out.
  // You'll see that adding the 5th function actually makes test_4() cheaper, because instead of
  // being the 4th selector in the search, it becomes the second function after the initial
  // branch check is performed.


  // selector: 663bc990
  function test_1() public {}

  // selector: 899eb49c
  function test_2() public {}

  // selector: b9e2fa35
  function test_3() public {}

  // selector: e5935e3a
  function test_4() public {}

  // selector: ed94943a
  // function test_5aaaaaaaaaaaaaaaaaa() public {}

}



