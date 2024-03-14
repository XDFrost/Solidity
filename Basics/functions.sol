// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Types:
    // 1. Declaring a function
    // 2. Non-Declaring a function

// Syntax:
    // function function_name(parameters) scope returns(return type) {
        // Block of code
    // }

contract Declaring {
    // uint256 public key;
    uint256 key;

    function getInfo() public view returns(uint256) {
        return key;
    }

    function updateData(uint256 _key) public {
        key = _key;
    }

    // function get(uint256 _a, uint256 _b) public pure returns(uint){             // Performing a operation ; pure is used because we are changing the state of variable in blockchain, if we won't have changed the state, view would have been used
    //     uint256 newNum = _a + _b;
    //     return newNum;
    // }           
    
    function get(uint256 _a, uint256 _b) public returns(uint){             // Performing a operation ; pure is used because we are changing the state of variable in blockchain, if we won't have changed the state, view would have been used
        uint256 newNum = _a + _b;
        key = newNum;
        return key;
    }           
}

// Function is a group of code that can be reused anywhere in a program.
// Reduces memory usage 
// Can be used to provide info about non-public values
// view vs pure :
    // view is used when we want to access the contract environment but change nothing
    // pure is used when we don't want to access the contract environment but change the variables inside the function itself


// ABI :
//     [
// 	{
// 		"inputs": [
// 			{
// 				"internalType": "uint256",
// 				"name": "_a",
// 				"type": "uint256"
// 			},
// 			{
// 				"internalType": "uint256",
// 				"name": "_b",
// 				"type": "uint256"
// 			}
// 		],
// 		"name": "get",
// 		"outputs": [
// 			{
// 				"internalType": "uint256",
// 				"name": "",
// 				"type": "uint256"
// 			}
// 		],
// 		"stateMutability": "nonpayable",
// 		"type": "function"
// 	},
// 	{
// 		"inputs": [
// 			{
// 				"internalType": "uint256",
// 				"name": "_key",
// 				"type": "uint256"
// 			}
// 		],
// 		"name": "updateData",
// 		"outputs": [],
// 		"stateMutability": "nonpayable",
// 		"type": "function"
// 	},
// 	{
// 		"inputs": [],
// 		"name": "getInfo",
// 		"outputs": [
// 			{
// 				"internalType": "uint256",
// 				"name": "",
// 				"type": "uint256"
// 			}
// 		],
// 		"stateMutability": "view",
// 		"type": "function"
// 	}
// ]
