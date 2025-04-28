// Requirements:
// - Create a contract Flag with a public bool variable flag initialized to false.
// - Add a function toggle() (non view/pure) that inverts the value of flag.
// - Add a function isFlagTrue() declared view that returns the value of flag.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//

contract Flag{
    bool flag = false;

    /// @notice Invert the value of flag
    function toggle() public{
        flag = !flag;
    }
    /// @notice Returns the current state of flag
    function isFlagTrue() public view returns(bool){
        return flag;
    }
}