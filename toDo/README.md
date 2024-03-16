# Motoko Assistant To-Do List

Welcome to the Motoko Assistant To-Do List project! This project implements a simple to-do list application using Motoko, a programming language designed for building scalable and efficient smart contracts and decentralized applications (dapps) on the Internet Computer platform.

## Overview

The Motoko Assistant To-Do List provides the following functionalities:

- **Add To-Do:** Add a new to-do item to the list.
- **Complete To-Do:** Mark a to-do item as completed.
- **Show To-Dos:** Display all to-do items in the list.
- **Clear Completed:** Remove completed to-do items from the list.

## How to Use

To use the Motoko Assistant To-Do List, follow these steps:

1. **Initialize To-Do List:** Instantiate the `Assistant` actor.

2. **Add To-Do:** Use the `addTodo` function to add a new to-do item. Provide a description for the to-do item.

3. **Complete To-Do:** Use the `completeTodo` function to mark a to-do item as completed. Provide the ID of the to-do item.

4. **Show To-Dos:** Use the `showTodos` function to display all to-do items in the list.

5. **Clear Completed:** Use the `clearCompleted` function to remove completed to-do items from the list.

## Example Usage

```motoko
import Assistant "assistant";

// Instantiate the Assistant actor
let assistant = Assistant.Actor();

// Add a new to-do item
let todoId = await assistant.addTodo("Complete project presentation");

// Complete the to-do item
await assistant.completeTodo(todoId);

// Display all to-do items
let todos = await assistant.showTodos();

// Clear completed to-do items
await assistant.clearCompleted();
```
## Data Types

ToDo: Represents a to-do item with a description and completion status.

## Functions

addTodo(description: Text): Adds a new to-do item with the provided description and returns its ID.
completeTodo(id: Nat): Marks the to-do item with the given ID as completed.
showTodos(): Returns a formatted text containing all to-do items.
clearCompleted(): Removes completed to-do items from the list.

## Contribution

If you'd like to contribute to the Motoko Assistant To-Do List project, feel free to fork this repository, make your changes, and submit a pull request. We welcome contributions from the community!
