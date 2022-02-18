Just a simple forge repo for playing around with solidity toy code.

## Conventions

The whole purpose of this repo is to make it fast and easy to test stuff, and then keep the test code for
future reference. Specific test contracts can be called with

`forge test --match-contract Test3`

I don't want to have to worry about avoiding contract naming collision, so each new test file
is prefixed with a number, and all the contract names in that file have that same number as a suffix.


