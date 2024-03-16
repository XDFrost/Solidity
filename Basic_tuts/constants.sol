// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Used when value doesn't change/Variables are permanent
// Less executiom cost (GAS)

contract Constants {

    // Exection Cost (Non-CONSTANTS) = 70063
    address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    // Exection Cost (CONSTANTS) = 45697
    address constant public const_add = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstAdd() pure public returns(address) {               // Low gas price
        return const_add;
    }
    function getNonConstAdd() view public returns(address) {            // High gas price
        return myAdd;
    }
}
