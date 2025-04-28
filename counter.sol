// Project 2: Counter with 0.7-style overflow under Solidity 0.8.x
// Requirements:
// 1. Use a uint8 state variable `v` initialized to 0.
// 2. Provide an unchecked increment function so that v++ wraps around (255 → 0).
// 3. Provide an unchecked add(n) function so that v = v + n wraps on overflow.
// 4. Expose the current value of `v` via a public reader.
// 5. Compile under pragma solidity ^0.8.0 using unchecked blocks for both operations.
//
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Counter with unchecked overflow
/// @notice Demonstrates how to reproduce Solidity 0.7.x wraparound behavior in 0.8.x
contract Counter {
    /// @notice 8-bit counter value, starts at zero
    uint8 v = 0;

    /// @notice Increment `v` by 1 without overflow checks
    /// @dev Uses `unchecked` to disable the default 0.8.x overflow revert
    function incr() public {
        unchecked {
            v++;
        }
    }

    /// @notice Add `n` to `v` without overflow checks
    /// @param n Amount to add (wraps around on overflow)
    function add(uint8 n) public {
        unchecked {
            v = v + n;
        }
    }

    /// @notice Read the current counter value
    /// @return The current value of `v`
    function val() public view returns (uint8) {
        return v;
    }
}