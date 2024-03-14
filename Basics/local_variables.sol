// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Defined inside a function/block
// STored on memory not on blockchain

contract LocalVariables {
    uint256 public myNumber;
    address myaddress;

    // Function for loacal variable
    function local() public returns(address, uint256, uint256) {            // Will change address, i and myNumber value
        uint256 i = 255;
        myNumber = i;
        i += 45;
        myaddress = address(1);             // Defining the address
        return (myaddress, myNumber, i);
    }
}
