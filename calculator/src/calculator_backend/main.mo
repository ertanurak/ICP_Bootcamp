

actor calculator {
  var cell: Int = 0;
  public func addition(s: Int): async Int {
    cell += s;
    return cell;
  };
  public func subtraction(s: Int): async Int {
    cell -= s;
    return cell;
  };
  public func multiplication(s: Int): async Int {
    cell *= s;
    return cell;
  };
 public func division(s: Int): async ?Int {
    if (s == 0) { 
      return null;
    }
     else {
      cell /= s;
      return ?cell;
    }
  };
  public func clear(): async () {
    cell := 0;
  };
};