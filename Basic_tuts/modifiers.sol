// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; 

// Modifiers : Code that can run before or after function call
// Reasons to use : 
        // 1. Restriction
        // 2. Validation of inputs
        // 3. Guard against reentrancy hack

contract Modifiers {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier OnlyOwner() {          // Allows only owner to call the function
        require(msg.sender == owner, "Not Owner");
        _;
    }

    modifier validateData(address _address) {
        require(_address != address(0), "Not valid address");
        _;
    }

    function ChangeOwner(address newOwner) public OnlyOwner validateData(newOwner) {           // Calling the two modifiers as functions
        owner = newOwner;
    }
}
