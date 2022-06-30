
/// @use-src 0:"src/test/13_constants.sol"
object "Test13_Const2_9" {
    code {
        /// @src 0:285:349  "contract Test13_Const2 {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Test13_Const2_9()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Test13_Const2_9_deployed"), datasize("Test13_Const2_9_deployed"))

        return(_1, datasize("Test13_Const2_9_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 0:285:349  "contract Test13_Const2 {..."
        function constructor_Test13_Const2_9() {

            /// @src 0:285:349  "contract Test13_Const2 {..."

        }
        /// @src 0:285:349  "contract Test13_Const2 {..."

    }
    /// @use-src 0:"src/test/13_constants.sol"
    object "Test13_Const2_9_deployed" {
        code {
            /// @src 0:285:349  "contract Test13_Const2 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x23845515
                {
                    // VERSION2()

                    external_fun_VERSION2_8()
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

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            /// @src 0:312:346  "uint8 public constant VERSION2 = 1"
            function constant_VERSION2_8() -> ret {
                /// @src 0:345:346  "1"
                let expr_7 := 0x01
                let _1 := convert_t_rational_1_by_1_to_t_uint8(expr_7)

                ret := _1
            }

            /// @ast-id 8
            /// @src 0:312:346  "uint8 public constant VERSION2 = 1"
            function getter_fun_VERSION2_8() -> ret_0 {
                ret_0 := constant_VERSION2_8()
            }
            /// @src 0:285:349  "contract Test13_Const2 {..."

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_VERSION2_8() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_VERSION2_8()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

        }

        data ".metadata" hex"a2646970667358221220f9113c146270fe8046519b2ba5522584ee95791cba2c41587f2b89a8289da4d864736f6c634300080e0033"
    }

}
