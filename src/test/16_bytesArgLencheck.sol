// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";

import {console} from "../../lib/forge-std/src/console.sol";
import {console2} from "../../lib/forge-std/src/console2.sol";

// incomplete experiment.
// See the  IR, it does look like some validation is happening on the input.
contract Test16 is Test {

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

        // The length of the data is 2. The following is the correctly encoded data.
        // hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000002abcd000000000000000000000000000000000000000000000000000000000000"
        // The solidity docs say that abi encoding requires padding to multiple of 32 bytes.

        // We now make several modifications to the data we want to send.
        bytes memory lenSlightlyTooHigh =  hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000004abcd000000000000000000000000000000000000000000000000000000000000";
        bytes memory lenSlightlyTooLow =   hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000001abcd000000000000000000000000000000000000000000000000000000000000";
        bytes memory lenZero =             hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000abcd000000000000000000000000000000000000000000000000000000000000";
        bytes memory lenMuchTooHigh =      hex"00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000021abcd000000000000000000000000000000000000000000000000000000000000";
        emit log('log the data');
        emit log_bytes(data);
        emit log('call with correct length');
        (bool success, bytes memory returndata) = address(target).call(data);
        emit WhatHappened(success, returndata);

        emit log('call with length too high: 4 Bytes'); // Passes, because the calldata is padded!
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
    function foo(bytes calldata _message) external view returns (uint256) {
        console.log('foo: message');
        console.logBytes(msg.data);
        console.log(_message.length);
        return _message.length;
    }

}
