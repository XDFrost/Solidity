// SPDX-License-Identifier: MIT
// Mapping allows to track data in smart contract

// mapping(keyType => valueType) name
// key can be any datatype or any other contract
// valueType can include ONLY MAPPING OR ARRAY

// Ex: Let's say a basket full of users with all having unique names (maps), these maps allows us identify each user

pragma solidity 0.8.24;
contract Mapping {
    // Mapping from address to uint : Creating a mapping and getting uint back
    // Using public will automatically creates a getter function
    mapping(address => uint) public myMap;          // myMap is the name of mapping

    function get(address _add) public view returns(uint) {
        // mapping always returns a value
        // Default value will be given if nothing is provided
        return myMap[_add];
    } 

    function setUser(address _add, uint _id) public {
        // Updating value at address
        myMap[_add] = _id; 
    }
    
    function remove(address _add) public {
        // Reseting value
        // delete is used to delete the value by assigning default value
        delete myMap[_add];
    }
}

contract NestedMapping {
    // Mapping from an address to another mapping
    // Address -> Mapping for user
    // Every single user will have it's own mapping
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _add, uint _id) public view returns(bool) {
        // Getting a value from nested mapping even when it is not initialized
        // Returns TRUE or FALSE
        // Checks if address is really there in nested mapping or not
        return nested[_add][_id];
    }

    function set(address _add, uint _id, bool _boo) public {
        nested[_add][_id] = _boo;
    }

    function remove(address _add, uint _id) public {
        delete nested[_add][_id];
    }
}
