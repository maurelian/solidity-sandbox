Just a simple [forge](https://book.getfoundry.sh/forge/) based repo for playing around with and 
understanding solidity toy code.

## Conventions

The whole purpose of this repo is to make it fast and easy to test stuff, and then keep the test code for
future reference. Specific test contracts can be called with

`forge test --match-contract Test3` or even just `forge test --mc 3`

## Creating a new test

I don't want to have to think about avoiding contract naming collision, so each new test file
is prefixed with a number, and all the contract names in that file have that same number as a suffix.

There's now a script to generate a new file with a contract and empty test function. Just run:

```sh
./newTest.sh
```

## Yul code

Occasionally it's helpful to generate the Yul intermediate representation to understand what's
happening underneath the hood. In that case, I'll just use a command like the following to 
put the IR into the `./ir` dir. Using a `.sol` extension gives pretty decent syntax highlighting
for readability.

```
forge inspect Target16 ir >! ir/bytesArgLenCheck16.yul.sol
```

Yul code can be compiled with `solc --strict-assembly`.
