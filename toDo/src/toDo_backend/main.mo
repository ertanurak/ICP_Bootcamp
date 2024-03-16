// Import the necessary modules from the mo:base library for creating data structures and handling text and numeric data.
import Map "mo:base/HashMap";
import Hash "mo:base/Hash";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Text "mo:base/Text";

// Define the actor named 'Assistant'.
actor Assistant {

  // Define a custom data type 'ToDo' representing a to-do item.
  type ToDo = {
    description: Text;
    completed: Bool;
  };

  // Define a function 'natHash' to hash a Nat value.
  func natHash(n: Nat): Hash.Hash {
    // Convert the Nat value to Text and hash it using the Text module.
    Text.hash(Nat.toText(n))
  };

  // Declare a mutable variable 'todos' of type HashMap to store to-do items.
  // The initial capacity is set to 0, and a custom hash function 'natHash' is used for hashing Nat keys.
  var todos = Map.HashMap<Nat, ToDo>(0, Nat.equal, natHash);

  // Declare a mutable variable 'nextId' to track the ID of the next to-do item.
  var nextId: Nat = 0;

  // Define a public query function 'getTodos' to retrieve all to-do items.
  // It returns an array of ToDo items, asynchronously.
  public query func getTodos(): async [ToDo] {
    // Convert the values of the 'todos' map to an array and return it.
    Iter.toArray(todos.vals());
  };

  // Define a public function 'addTodo' to add a new to-do item.
  // It takes a description for the to-do item and returns the assigned ID, asynchronously.
  public func addTodo(description: Text): async Nat {
    // Assign the current value of 'nextId' to 'id'.
    let id = nextId;
    // Insert a new to-do item into the 'todos' map with the given description and mark it as not completed.
    todos.put(id, { description = description; completed = false });
    // Increment 'nextId' for the next to-do item.
    nextId += 1;
    // Return the assigned ID.
    id
  };

  // Define a public function 'completeTodo' to mark a to-do item as completed.
  // It takes the ID of the to-do item as input, asynchronously.
  public func completeTodo(id: Nat): async () {
    // Ignore any errors that may occur during the execution.
    ignore do ? {
      // Retrieve the description of the to-do item with the given ID.
      let description = todos.get(id)!.description;
      // Update the to-do item's status to completed in the 'todos' map.
      todos.put(id, { description; completed = true });
    }
  };

  // Define a public query function 'showTodos' to display all to-do items.
  // It returns a formatted text containing all to-do items, asynchronously.
  public query func showTodos(): async Text {
    // Initialize the output text with a header.
    var output: Text = "\n___TO-DOs___";
    // Iterate over each to-do item in the 'todos' map.
    for (todo: ToDo in todos.vals()) {
      // Append the description of the to-do item to the output text.
      output #= "\n" # todo.description;
      // If the to-do item is completed, append a check mark to the output text.
      if (todo.completed) { output #= " ✔"; };
    };
    // Return the formatted text containing all to-do items.
    output # "\n"
  };

  // Define a public function 'clearCompleted' to remove completed to-do items from the list.
  // It removes completed items from the 'todos' map, asynchronously.
  public func clearCompleted(): async () {
    // Filter out completed to-do items from the 'todos' map and update it accordingly.
    todos := Map.mapFilter<Nat, ToDo, ToDo>(todos, Nat.equal, natHash, 
              func(_, todo) { if (todo.completed) null else ?todo });
  };
};
