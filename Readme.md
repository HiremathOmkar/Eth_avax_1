# Error Handling with require(), assert(), and revert()

Welcome to the Error Handling with `require()`, `assert()`, and `revert()` repository! This project showcases a Solidity smart contract that demonstrates error handling using these powerful statements. These mechanisms play a crucial role in building secure and reliable smart contracts by enforcing conditions, validating inputs, and managing errors effectively.

## Smart Contract: MathOperation

The `MathOperation` smart contract serves as a practical example of utilizing `require()`, `assert()`, and `revert()` for different error handling scenarios.
```javascript
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

```
### Function: `Division(uint256 _num, uint256 _den)`

This function showcases safe division while avoiding division by zero.

- **Parameters:**
  - `_num`: The numerator for the division.
  - `_den`: The denominator for the division.
 ```javascript

  contract MathOperation {
    function Division(uint256 _num, uint256 _den) external pure returns (uint256) {
        // Use require to prevent division by zero
        //Checks conditions and reverts transactions if the condition is not met, ensuring valid state changes.
        require(_den != 0, "Cannot divide by zero");

        // Calculate and return the result
        return _num / _den;
    }
  
```

### Function: `check_even(uint256 _value)`

This function uses the `assert()` statement to verify if a given value is even.

- **Parameters:**
  - `_value`: The value to be checked.
 ```javascript

    function check_even(uint256 _value) external pure returns (bool) {
        // Use assert to check if the value is even
        //Used to validate conditions that should never be false; it reverts transactions if the condition fails unexpectedly.

        assert(_value % 2 == 0);
        return true;
    }

```
### Function: `check_negetive(uint256 _input)`

This function demonstrates how to validate if an input is negative and employs the `revert()` statement to handle negative inputs.

- **Parameters:**
  - `_input`: The input value to be validated.

```javascript

    function check_negetive(uint256 _input) external pure returns (uint256) {
        // Use revert if the input is negative
        //Halts execution and reverts changes if a certain condition is not met or if an error occurs intentionally.
        if (_input < 0) {
            revert("Input cannot be negative");
        }
        return _input;
    }
}

```
## Understanding Error Handling Strategies

- **`require()`:** Use this statement to ensure that conditions are met before proceeding. If a condition evaluates to `false`, the transaction reverts, preventing further execution.
- **`assert()`:** Employ this statement to validate conditions that should never be false. If an assertion fails (condition is false), the transaction reverts. It's commonly used to catch unexpected bugs.
- **`revert()`:** This statement is used to intentionally halt execution and revert changes under specific conditions. It allows controlled error handling.

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.



