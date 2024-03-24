// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// There are 2 ways to initialize parent contract with parameters

// Pass parameters in inheritance list 
// contract new is old_contract(VALUE)
contract B is X("Input to X"), Y("Input to Y") {

}

// Pass parameters to constructors 
contract C is X, Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

// Parent constructors are always called in order of inheritance
// Order Below : X -> Y -> D 

contract D is X, Y {
    constructor() X("X was called") Y("Y was called") {} 
}

// Order Below : X -> Y -> E 

contract E is X, Y {
    constructor() X("X was called") Y("Y was called") {} 
}
