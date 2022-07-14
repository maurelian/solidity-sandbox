// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import {DSTest} from "../../lib/ds-test/src/test.sol";
import {Vm} from "../../lib/forge-std/src/Vm.sol";
import {console} from "../../lib/forge-std/src/console.sol";
import {console2} from "../../lib/forge-std/src/console2.sol";

// incomplete experiment.
// See the  IR, it does look like some validation is happening on the input.
contract Test16 is DSTest {
    Vm vm = Vm(HEVM_ADDRESS);
    Target16 target = new Target16();
    event WhatHappened(
        bool success,
        bytes returndata
    );

    // conclusion:
    // it's possible to modify the length in the abi-encoding to some extent
    function test_bytesArgLencheck() external {
        bytes memory message = hex"abcd";
        bytes memory data = abi.encodeWithSelector(Target16.foo.selector, message);

        emit log('message length');
        emit log_uint(message.length);
        emit log('message');
        emit log_bytes(message);

        emit log('calldata length:');
        emit log_uint(data.length);
        emit log('calldata');
        emit log_bytes(data);

        // The length of the data is 3. The following is the correctly encoded data.
        // hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000002abcd000000000000000000000000000000000000000000000000000000000000"

        // We now make several modifications to the data we want to send.
        bytes memory lenSlightlyTooHigh =  hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000004abcd";
        bytes memory lenSlightlyTooLow =   hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000001abcd";
        bytes memory lenZero =             hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000abcd";
        bytes memory lenMuchTooHigh =      hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000021abcd";
        emit log('log the data');
        emit log_bytes(data);
        emit log('call with correct length');
        (bool success, bytes memory returndata) = address(target).call(data);
        emit WhatHappened(success, returndata);

        emit log('call with length too high: 4 Bytes'); // Fails
        // enforced by this statement in the IR:
        // if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
        (success,  returndata) = address(target).call(bytes.concat(Target16.foo.selector, lenSlightlyTooHigh));
        emit WhatHappened(success, returndata);

        emit log('call with length too low: 1 Byte'); // Works
        (success,  returndata) = address(target).call(bytes.concat(Target16.foo.selector, lenSlightlyTooLow));
        emit WhatHappened(success, returndata);

        emit log('call with length zero: 0 Bytes'); // Works
        (success,  returndata) = address(target).call(bytes.concat(Target16.foo.selector, lenZero));
        emit WhatHappened(success, returndata);

        emit log('call with length much too high: 21 Bytes'); // Fails
        (success,  returndata) = address(target).call(bytes.concat(Target16.foo.selector, lenMuchTooHigh));
        emit WhatHappened(success, returndata);
    }
}

contract Target16 {
    // writing this to get the IR for the function to see if there is a check to ensure the
    // length of the data is correct in the abi encoding.
    function foo(bytes calldata _message) external returns (uint256) {
        console.log('foo: message');
        console.logBytes(msg.data);
        console.log(_message.length);
        return _message.length;
    }

}
