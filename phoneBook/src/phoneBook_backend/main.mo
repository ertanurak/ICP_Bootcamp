
import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {

type Name = Text;
type Phone = Text;

type Entry = {
  desc: Text;
  phone: Phone;
};

let phoneBook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

public func insert(name: Name, entry: Entry) : async (){
phoneBook.put (name, entry);
};

public query func lookup (name: Name) : async ?Entry {
  phoneBook.get(name)
};

};
