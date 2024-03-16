# Motoko Actor Calculator

Welcome to the Motoko Actor Calculator project! In this project, you'll find a simple calculator application implemented in Motoko, a programming language designed for building scalable and efficient smart contracts and decentralized applications (dapps) on the Internet Computer platform.

## Overview

The Motoko Actor Calculator provides the following arithmetic operations:

- **Addition:** Adds a given value to the current result.
- **Subtraction:** Subtracts a given value from the current result.
- **Multiplication:** Multiplies the current result by a given value.
- **Division:** Divides the current result by a given value. If the divisor is zero, it returns null.

## How to Use

To use the Motoko Actor Calculator, follow these steps:

1. **Initialization:** Instantiate the `calculator` actor.

2. **Perform Operations:** Use the provided functions to perform arithmetic operations:
   - `addition(s: Int)`: Adds the value `s` to the current result.
   - `subtraction(s: Int)`: Subtracts the value `s` from the current result.
   - `multiplication(s: Int)`: Multiplies the current result by the value `s`.
   - `division(s: Int)`: Divides the current result by the value `s`. Returns null if `s` is zero.

3. **Clear Result:** Use the `clear()` function to reset the calculator to its initial state.

## Example Usage

```motoko
import Calculator "calculator";

// Instantiate the calculator actor
let calculator = Calculator.actor();

// Perform arithmetic operations
let result1 = await calculator.addition(5);
// result1: 5

let result2 = await calculator.subtraction(2);
// result2: 3

let result3 = await calculator.multiplication(4);
// result3: 12

let result4 = await calculator.division(3);
// result4: 4

// Clear the calculator
await calculator.clear();
```
## Contribution

If you'd like to contribute to the Motoko Actor Calculator project, feel free to fork this repository, make your changes, and submit a pull request. We welcome contributions from the community!
