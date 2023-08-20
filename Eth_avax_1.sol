// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MathOperation {
    function Division(uint256 _num, uint256 _den) external pure returns (uint256) {
        // Use require to prevent division by zero
        //Checks conditions and reverts transactions if the condition is not met, ensuring valid state changes.
        require(_den != 0, "Cannot divide by zero");

        // Calculate and return the result
        return _num / _den;
    }

    function check_even(uint256 _value) external pure returns (bool) {
        // Use assert to check if the value is even
        //Used to validate conditions that should never be false; it reverts transactions if the condition fails unexpectedly.

        assert(_value % 2 == 0);
        return true;
    }

    function check_negetive(uint256 _input) external pure returns (uint256) {
        // Use revert if the input is negative
        //Halts execution and reverts changes if a certain condition is not met or if an error occurs intentionally.
        if (_input < 0) {
            revert("Input cannot be negative");
        }
        return _input;
    }
}
