// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// msg.sender Provides the account address that starts the contracts
// 

contract GlobalVariables {
    address public owner;
    address public myBlockHash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timestamp;
    uint256 public Value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasPrice;
    bytes public callData;
    bytes4 public FirstFour;



    constructor() {
        owner = msg.sender;       
        // OUTPUT OF CONSTRUCTOR VARIABLE FOR ME - 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4  
        // ACCOUNT I AM USING RIGHT NOW - 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        myBlockHash = block.coinbase;
        difficulty = block.difficulty;
        gasLimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasPrice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        FirstFour = msg.sig;
    }
}
