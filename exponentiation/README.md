# Exponentiation Actor

## Overview
This repository contains an actor written in the Motoko programming language, designed to perform exponentiation operations.

## Usage
To use the Exponentiation actor, follow these steps:
1. **Set Base Number**: Use the `set` function to set the base number.
2. **Calculate Exponentiation**: Utilize the `powAndGetValue` function to calculate the exponentiation of the base number with a given exponent and retrieve the result.

## Functions
- **set(x: Nat)**: Sets the value of the base number.
- **powAndGetValue(n: Nat)**: Calculates the exponentiation of the base number with the given exponent and returns the result.

## Example

```motoko
actor Exponentiation {

  stable var base = 0;

  // Set the value of the base number.
  public func set(x: Nat) : async () {
    base := x;
  };

  // Calculate the exponentiation of the base number and get the value.
  public query func powAndGetValue(n: Nat) : async Nat {
    var result : Nat = 1;
    var i : Nat = 0;
    while (i < n) {
      result *= base;
      i += 1;
    };
    result; // Return the result of the exponential operation.
  };
};
```

## Contributing
Contributions are welcome! Feel free to open an issue or submit a pull request for any enhancements or fixes.

## Acknowledgments
Special thanks to The Motoko Team for their amazing work on the Motoko programming language.

