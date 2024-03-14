// First we'll define the compiler version we want to use
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;                   // ^ means we'll take all the versions above 0.8.18
contract MyFirstContract {                 // Contract Creation

//  WAYS TO GET DATA

    // string public hey = "Hello";                     // public keyword creates a getter function so that we can get data ; Called state variable ; Others contracts can access only public values 
    // uint256 public no = 4;

// USING CONSTRUCTOR                    // Data is given at deployment time

    // string public hey;
    // uint public no;

    // constructor(string memory _hey, uint _no) {             // We'll recieve data in this constructor and assign it to hey
    //     hey = _hey;
    //     no = _no;
    // }

// USING FUNCTION

    string public hey;
    uint public no;

    function addInfo(string memory _hey, uint _no) public {
        hey = _hey;
        no = _no;
    }
}

// During compilation, ABI will contain all the data
// ABI runs on ethereum blockchain