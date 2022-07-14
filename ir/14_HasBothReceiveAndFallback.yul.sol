
/// @use-src 7:"src/test/14_receiveAndFallback.sol"
object "HasBothReceiveAndFallback_10264" {
    code {
        /// @src 7:283:486  "contract HasBothReceiveAndFallback {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_HasBothReceiveAndFallback_10264()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("HasBothReceiveAndFallback_10264_deployed"), datasize("HasBothReceiveAndFallback_10264_deployed"))

        return(_1, datasize("HasBothReceiveAndFallback_10264_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 7:283:486  "contract HasBothReceiveAndFallback {..."
        function constructor_HasBothReceiveAndFallback_10264() {

            /// @src 7:283:486  "contract HasBothReceiveAndFallback {..."

        }
        /// @src 7:283:486  "contract HasBothReceiveAndFallback {..."

    }
    /// @use-src 7:"src/test/14_receiveAndFallback.sol"
    object "HasBothReceiveAndFallback_10264_deployed" {
        code {
            /// @src 7:283:486  "contract HasBothReceiveAndFallback {..."
            mstore(64, memoryguard(128))

            if iszero(calldatasize()) { fun__10256() stop() }
            fun__10263() stop()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            /// @ast-id 10256
            /// @src 7:351:414  "receive() external payable {..."
            function fun__10256() {

                /// @src 7:393:407  "LogSomething()"
                let _1 := 0xf4a961a5b363a31441f394b096ad69143287efc760d4fc9f98009b79d2811573
                {
                    let _2 := allocate_unbounded()
                    let _3 := abi_encode_tuple__to__fromStack(_2 )
                    log1(_2, sub(_3, _2) , _1)
                }
            }
            /// @src 7:283:486  "contract HasBothReceiveAndFallback {..."

            /// @ast-id 10263
            /// @src 7:420:484  "fallback() external payable {..."
            function fun__10263() {

                /// @src 7:463:477  "LogSomething()"
                let _4 := 0xf4a961a5b363a31441f394b096ad69143287efc760d4fc9f98009b79d2811573
                {
                    let _5 := allocate_unbounded()
                    let _6 := abi_encode_tuple__to__fromStack(_5 )
                    log1(_5, sub(_6, _5) , _4)
                }
            }
            /// @src 7:283:486  "contract HasBothReceiveAndFallback {..."

        }

        data ".metadata" hex"a264697066735822122071f9d8346f6c66cbd1fa3ea48c759f705220f9e18a40b03517b664177223a32764736f6c634300080e0033"
    }

}


