// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";

import {console} from "../../lib/forge-std/src/console.sol";

contract Test15 is Test {

    Target15 target = new Target15();

    function test_StructArgs() external view {
        uint256 a = 1;
        uint256 b = 2;
        uint256 c = 3;
        uint256 d = 4;
        uint256 e = 5;
        target.fooStructArgs(Target15.A(a, b, c, d, e));
    }

    function test_NormalArgs() external view {
        uint256 a = 1;
        uint256 b = 2;
        uint256 c = 3;
        uint256 d = 4;
        uint256 e = 5;
        target.fooNormalArgs(a, b, c, d, e);
    }
}

contract Target15 {
    struct A {
        uint256 a;
        uint256 b;
        uint256 c;
        uint256 d;
        uint256 e;
    }

    // gas: 9815
    function fooStructArgs(A calldata _a) public view {
        console.log(_a.a);
        console.log(_a.b);
        console.log(_a.c);
        console.log(_a.d);
        console.log(_a.e);
    }

    // gas: 9689
    function fooNormalArgs(
        uint256 _a,
        uint256 _b,
        uint256 _c,
        uint256 _d,
        uint256 _e
    ) public view {
        console.log(_a);
        console.log(_b);
        console.log(_c);
        console.log(_d);
        console.log(_e);
    }
}
