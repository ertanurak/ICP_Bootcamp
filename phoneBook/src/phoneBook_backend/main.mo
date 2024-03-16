// Import the HashMap module from the mo:base library for creating a map data structure.
import Map "mo:base/HashMap";
// Import the Text module from the mo:base library for handling text data.
import Text "mo:base/Text";

// Define an actor.
actor {

  // Define custom data types for name and phone.
  type Name = Text;
  type Phone = Text;

  // Define a data type for an entry in the phone book.
  type Entry = {
    desc: Text;
    phone: Phone;
  };

  // Initialize a HashMap named 'phoneBook' to store name-entry pairs.
  // The initial capacity is set to 0, and equality and hashing functions for Text types are specified.
  let phoneBook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

  // Define a public function 'insert' to insert a new entry into the phone book.
  // It takes a name and an entry, and it is asynchronous.
  public func insert(name: Name, entry: Entry): async () {
    // Put the entry into the phone book map with the given name as the key.
    phoneBook.put(name, entry);
  };

  // Define a public query function 'lookup' to search for an entry in the phone book by name.
  // It takes a name and returns an entry, wrapped in an optional, asynchronously.
  public query func lookup(name: Name): async ?Entry {
    // Get the entry associated with the given name from the phone book.
    // If the name is not found, it returns null.
    phoneBook.get(name);
  };

};
