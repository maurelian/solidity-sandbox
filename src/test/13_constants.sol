// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

// I noticed that the name of a constant var might affect the compiled bytecode?
// so this isn't a DSTest, just a couple contracts so I can compile and compare.
contract Test13_Const1 {
  uint8 public constant VERSION1 = 1;
}

contract Test13_Const2 {
  uint8 public constant VERSION2 = 1;
}
// Ah of course. The reason is that these are public vars.
// Try `diff misc/13_constants.yul misc/13_constants2.yul` to see.