// The 'actor' keyword defines a concurrent entity that encapsulates state and behavior.
actor calculator {
  // 'var' keyword declares a mutable variable named 'cell' initialized to 0.
  var cell: Int = 0;

  // 'public' keyword specifies that these functions are accessible from outside the actor.
  // 'func' keyword declares a function.
  // 'addition' function adds the parameter 's' to the 'cell' variable.
  // 'async' keyword indicates that the function is asynchronous.
  // 'Int' specifies the return type of the function.
  public func addition(s: Int): async Int {
    // Increment 'cell' by 's'.
    cell += s;
    // Return the updated value of 'cell'.
    return cell;
  };

  // 'subtraction' function subtracts the parameter 's' from the 'cell' variable.
  public func subtraction(s: Int): async Int {
    // Decrement 'cell' by 's'.
    cell -= s;
    // Return the updated value of 'cell'.
    return cell;
  };

  // 'multiplication' function multiplies the 'cell' variable by the parameter 's'.
  public func multiplication(s: Int): async Int {
    // Multiply 'cell' by 's'.
    cell *= s;
    // Return the updated value of 'cell'.
    return cell;
  };

  // 'division' function divides the 'cell' variable by the parameter 's'.
  // It returns null if 's' is 0 to avoid division by zero errors.
  public func division(s: Int): async ?Int {
    // Check if 's' is zero.
    if (s == 0) { 
      // If 's' is zero, return null.
      return null;
    }
    else {
      // If 's' is not zero, perform division.
      cell /= s;
      // Return the updated value of 'cell'.
      return ?cell;
    }
  };

  // 'clear' function resets the 'cell' variable to 0.
  public func clear(): async () {
    // Set 'cell' to 0.
    cell := 0;
  };
};
