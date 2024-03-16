# Motoko Phone Book

Welcome to the Motoko Phone Book project! This project implements a simple phone book application using Motoko, a programming language designed for building scalable and efficient smart contracts and decentralized applications (dapps) on the Internet Computer platform.

## Overview

The Motoko Phone Book provides the following functionalities:

- **Insert Entry:** Add a new entry to the phone book.
- **Lookup Entry:** Search for an entry in the phone book by name.

## How to Use

To use the Motoko Phone Book, follow these steps:

1. **Initialize Phone Book:** Instantiate the actor.

2. **Insert Entry:** Use the `insert` function to add a new entry to the phone book. Provide a name and an entry.

3. **Lookup Entry:** Use the `lookup` function to search for an entry in the phone book by name.

## Example Usage

```motoko
import PhoneBook "phonebook";

// Instantiate the PhoneBook actor
let phoneBook = PhoneBook.Actor();

// Insert a new entry
await phoneBook.insert("John", { desc = "John's Description"; phone = "+123456789" });

// Lookup an entry by name
let entry = await phoneBook.lookup("John");


# Data Types

Name: Represents the name of a person in the phone book.
Phone: Represents the phone number associated with a person.
Entry: Represents an entry in the phone book with a description and a phone number.

# Functions

insert(name: Name, entry: Entry): Adds a new entry to the phone book with the provided name and entry.
lookup(name: Name): Searches for an entry in the phone book by name and returns it if found.

# Contribution

If you'd like to contribute to the Motoko Phone Book project, feel free to fork this repository, make your changes, and submit a pull request. We welcome contributions from the community!
