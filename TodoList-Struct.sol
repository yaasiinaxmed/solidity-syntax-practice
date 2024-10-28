// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TodoList {

    // Declare a struct which groups together two data types
    struct TodoItem{
        string text;
        bool completed;
    }

    // Create an array of TodoItem structs
    TodoItem[] public todos;

    function createTodo(string memory _text) public {
         // There are multiple ways to initialize structs

        // Method 1 - Call it like a function
        todos.push(TodoItem(_text, false));

        // Method 2 - Explicitly set its keys
        // todos.push(TodoItem({ text: _text, completed: false }));

        // Method 3 - Initialize an empty struct, then set individual properties
        // TodoItem memory todo;
        // todo.text = _text;
        // todo.completed = false;
        // todos.push(todo);
    }

    // Update a struct value
    function updateTodo(uint _index, string memory _text) public {
        todos[_index].text = _text;
    }

    // Update Completed
    function toggleCompleted(uint _index) public {
        todos[_index].completed = !todos[_index].completed;
    }

    // Get Todos
    function getTodos() public view returns (TodoItem[] memory) {
        return todos;
    }
}