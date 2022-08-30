
/// @use-src 10:"src/test/16_bytesArgLencheck.sol"
object "Target16_8670" {
    code {
        /// @src 10:2625:3017  "contract Target16 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Target16_8670()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Target16_8670_deployed"), datasize("Target16_8670_deployed"))

        return(_1, datasize("Target16_8670_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 10:2625:3017  "contract Target16 {..."
        function constructor_Target16_8670() {

            /// @src 10:2625:3017  "contract Target16 {..."

        }
        /// @src 10:2625:3017  "contract Target16 {..."

    }
    /// @use-src 2:"lib/forge-std/src/console.sol", 10:"src/test/16_bytesArgLencheck.sol"
    object "Target16_8670_deployed" {
        code {
            /// @src 10:2625:3017  "contract Target16 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x30c8d1da
                {
                    // foo(bytes)

                    external_fun_foo_8669()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // bytes
            function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                // max length is 8 bytes:
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                // ensures the length is within the bounds of the calldata:
                if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_foo_8669() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_bytes_calldata_ptr(4, calldatasize())
                let ret_0 :=  fun_foo_8669(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_2776e6021f04673b43240d2676f6b0f9356f9036f710253bda613535a501d3e1(memPtr) {

                mstore(add(memPtr, 0), "foo: message")

            }

            function copy_literal_to_memory_2776e6021f04673b43240d2676f6b0f9356f9036f710253bda613535a501d3e1() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(12)
                store_literal_in_memory_2776e6021f04673b43240d2676f6b0f9356f9036f710253bda613535a501d3e1(add(memPtr, 32))
            }

            function convert_t_stringliteral_2776e6021f04673b43240d2676f6b0f9356f9036f710253bda613535a501d3e1_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_2776e6021f04673b43240d2676f6b0f9356f9036f710253bda613535a501d3e1()
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function copy_calldata_to_memory(src, dst, length) {
                calldatacopy(dst, src, length)
                // clear end
                mstore(add(dst, length), 0)
            }

            function abi_decode_available_length_t_bytes_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory(src, dst, length)
            }

            function convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(value, length) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                abi_decode_available_length_t_bytes_memory_ptr(value, length, calldatasize())

            }

            function array_length_t_bytes_calldata_ptr(value, len) -> length {

                length := len

            }

            /// @ast-id 8669
            /// @src 10:2799:3014  "function foo(bytes calldata _message) external returns (uint256) {..."
            function fun_foo_8669(var__message_8640_offset, var__message_8640_length) -> var__8643 {
                /// @src 10:2855:2862  "uint256"
                let zero_t_uint256_1 := zero_value_for_split_t_uint256()
                var__8643 := zero_t_uint256_1

                /// @src 10:2874:2881  "console"
                let expr_8645_address := linkersymbol("lib/forge-std/src/console.sol:console")
                /// @src 10:2874:2901  "console.log('foo: message')"
                let _2_mpos := convert_t_stringliteral_2776e6021f04673b43240d2676f6b0f9356f9036f710253bda613535a501d3e1_to_t_string_memory_ptr()
                fun_log_11770(_2_mpos)
                /// @src 10:2911:2918  "console"
                let expr_8651_address := linkersymbol("lib/forge-std/src/console.sol:console")
                /// @src 10:2928:2936  "msg.data"
                let expr_8655_offset := 0
                let expr_8655_length := calldatasize()
                /// @src 10:2911:2937  "console.logBytes(msg.data)"
                let _3_mpos := convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(expr_8655_offset, expr_8655_length)
                fun_logBytes_11294(_3_mpos)
                /// @src 10:2947:2954  "console"
                let expr_8658_address := linkersymbol("lib/forge-std/src/console.sol:console")
                /// @src 10:2959:2967  "_message"
                let _4_offset := var__message_8640_offset
                let _4_length := var__message_8640_length
                let expr_8661_offset := _4_offset
                let expr_8661_length := _4_length
                /// @src 10:2959:2974  "_message.length"
                let expr_8662 := array_length_t_bytes_calldata_ptr(expr_8661_offset, expr_8661_length)
                fun_log_11756(expr_8662)
                /// @src 10:2992:3000  "_message"
                let _5_offset := var__message_8640_offset
                let _5_length := var__message_8640_length
                let expr_8665_offset := _5_offset
                let expr_8665_length := _5_length
                /// @src 10:2992:3007  "_message.length"
                let expr_8666 := array_length_t_bytes_calldata_ptr(expr_8665_offset, expr_8665_length)
                /// @src 10:2985:3007  "return _message.length"
                var__8643 := expr_8666
                leave

            }
            /// @src 10:2625:3017  "contract Target16 {..."

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value0,  tail)

            }

            /// @ast-id 11294
            /// @src 2:1283:1407  "function logBytes(bytes memory p0) internal view {..."
            function fun_logBytes_11294(var_p0_11282_mpos) {

                /// @src 2:1396:1398  "p0"
                let _6_mpos := var_p0_11282_mpos
                let expr_11289_mpos := _6_mpos
                /// @src 2:1358:1399  "abi.encodeWithSignature(\"log(bytes)\", p0)"

                let expr_11290_mpos := allocate_unbounded()
                let _7 := add(expr_11290_mpos, 0x20)

                mstore(_7, 0x0be77f5600000000000000000000000000000000000000000000000000000000)
                _7 := add(_7, 4)

                let _8 := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(_7, expr_11289_mpos)
                mstore(expr_11290_mpos, sub(_8, add(expr_11290_mpos, 0x20)))
                finalize_allocation(expr_11290_mpos, sub(_8, expr_11290_mpos))
                fun__sendLogPayload_11199(expr_11290_mpos)

            }
            /// @src 10:2625:3017  "contract Target16 {..."

            /// @src 2:88:174  "address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67)"
            function constant_CONSOLE_ADDRESS_11183() -> ret {
                /// @src 2:131:173  "0x000000000000000000636F6e736F6c652e6c6f67"
                let expr_11181 := 0x636f6e736f6c652e6c6f67
                /// @src 2:123:174  "address(0x000000000000000000636F6e736F6c652e6c6f67)"
                let expr_11182 := expr_11181
                let _10 := expr_11182

                ret := _10
            }

            /// @ast-id 11199
            /// @src 2:181:557  "function _sendLogPayload(bytes memory payload) private view {..."
            function fun__sendLogPayload_11199(var_payload_11185_mpos) {

                /// @src 2:275:282  "payload"
                let _9_mpos := var_payload_11185_mpos
                let expr_11190_mpos := _9_mpos
                /// @src 2:275:289  "payload.length"
                let expr_11191 := array_length_t_bytes_memory_ptr(expr_11190_mpos)
                /// @src 2:251:289  "uint256 payloadLength = payload.length"
                let var_payloadLength_11189 := expr_11191
                /// @src 2:324:339  "CONSOLE_ADDRESS"
                let expr_11195 := constant_CONSOLE_ADDRESS_11183()
                /// @src 2:299:339  "address consoleAddress = CONSOLE_ADDRESS"
                let var_consoleAddress_11194 := expr_11195
                /// @src 2:392:551  "assembly {..."
                {
                    let usr$payloadStart := add(var_payload_11185_mpos, 32)
                    let usr$r := staticcall(gas(), var_consoleAddress_11194, usr$payloadStart, var_payloadLength_11189, 0, 0)
                }

            }
            /// @src 10:2625:3017  "contract Target16 {..."

            /// @ast-id 11756
            /// @src 2:5514:5624  "function log(uint p0) internal view {..."
            function fun_log_11756(var_p0_11744) {

                /// @src 2:5613:5615  "p0"
                let _11 := var_p0_11744
                let expr_11751 := _11
                /// @src 2:5576:5616  "abi.encodeWithSignature(\"log(uint)\", p0)"

                let expr_11752_mpos := allocate_unbounded()
                let _12 := add(expr_11752_mpos, 0x20)

                mstore(_12, 0xf5b1bba900000000000000000000000000000000000000000000000000000000)
                _12 := add(_12, 4)

                let _13 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_12, expr_11751)
                mstore(expr_11752_mpos, sub(_13, add(expr_11752_mpos, 0x20)))
                finalize_allocation(expr_11752_mpos, sub(_13, expr_11752_mpos))
                fun__sendLogPayload_11199(expr_11752_mpos)

            }
            /// @src 10:2625:3017  "contract Target16 {..."

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            /// @ast-id 11770
            /// @src 2:5630:5751  "function log(string memory p0) internal view {..."
            function fun_log_11770(var_p0_11758_mpos) {

                /// @src 2:5740:5742  "p0"
                let _14_mpos := var_p0_11758_mpos
                let expr_11765_mpos := _14_mpos
                /// @src 2:5701:5743  "abi.encodeWithSignature(\"log(string)\", p0)"

                let expr_11766_mpos := allocate_unbounded()
                let _15 := add(expr_11766_mpos, 0x20)

                mstore(_15, 0x41304fac00000000000000000000000000000000000000000000000000000000)
                _15 := add(_15, 4)

                let _16 := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(_15, expr_11765_mpos)
                mstore(expr_11766_mpos, sub(_16, add(expr_11766_mpos, 0x20)))
                finalize_allocation(expr_11766_mpos, sub(_16, expr_11766_mpos))
                fun__sendLogPayload_11199(expr_11766_mpos)

            }
            /// @src 10:2625:3017  "contract Target16 {..."

        }

        data ".metadata" hex"a2646970667358221220cf7a48ef0b16a6717148b17e9e8b116ccba62632d804b2058e26f767a981455c64736f6c634300080e0033"
    }

}


