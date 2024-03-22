import Nat "mo:base/Nat";

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