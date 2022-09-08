// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

contract Test23 is Test {
  struct Thing {
    uint256 a;
    bytes2 b;
    int256 c;
  }

  Thing aThing = Thing(1, hex"0102", -2);

  // I have questions about structs...
  // Q; can you reduce the number of sloads by caching a struct??
  // A: Doens't seem to make much difference.
  // See [the ir](../ir/23_struct_sloads.yul.sol), both functions have 3 sloads
  // in calls to read_from_storage_split_offset_XX() functions.
  function test_structSloadsUncached() external { // 4463 gas
    uint256 a = aThing.a;
    bytes2 b = aThing.b;
    int256 c = aThing.c;
  }

  function test_structSloadsCached() external { // 4454 gas
    Thing storage thing = aThing;
    uint256 a = thing.a;
    bytes2 b = thing.b;
    int256 c = thing.c;
  }

  // just a little test to demonstrate the danger of misunderstanding
  // reference types.
  function test_passByReference_passByCopy() external { // 4454 gas
    Thing storage thingStorage = aThing;
    Thing memory thingMemory = aThing;
    thingMemory.a = 2;
    assert(thingStorage.a == 1);
    assert(thingMemory.a == 2);
  }
}
