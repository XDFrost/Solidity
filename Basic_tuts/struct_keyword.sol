// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
// Allows to create related data
// Can be imported from a separate file
contract Todos {
    struct Todo {
        string text;
        bool completed;
    }
    // Data defined in struct will be stored in an array 
    // An array of Todo struct
    Todo[] public todos;

    // Function to create todo list
    function create(string calldata _text) public {
        // Calldata stores some outside values inside a function ; Holds function arguments
        // memory acts same as calldata but holds temporary variables
    
        // UPDATING STRUCT
        // 1. Calling it like a function
        // todos.push(Todo(_text, false));

        // 2. By key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // 3. Initialize an empty struct and update
        // Todo memory todo;
        // todo.text = _text;
        // todo.completed = false;
        // todos.push(todo);
    }

    function get(uint _id) public view returns(string memory text, bool completed) {
        // storage holds data temporarily
        Todo storage todo = todos[_id];
        return (todo.text, todo.completed);
    }

    // Updating todo
    function update(uint id, string calldata text) public {
        Todo storage todo = todos[id];
        todo.text = text;
    }

    function togglecomplete(uint id) public {
        Todo storage todo = todos[id];
        todo.completed = !todo.completed;
    }
}
