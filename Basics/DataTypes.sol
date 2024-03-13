// SPDX-License-Identifier: MIT

// THERE IS NO NULL OR UNDEFINED IN SOLIDITY
pragma solidity ^0.8.23;

contract DataTypes {
    // 1. Boolean
    bool public hey;
    bool public yes = true;

    // 2. uint: Unsigned Integer i.e. no negative integer only positive integers; Range - 8 to 256 ; TAKES 256 IF RANGES IS NOT DEFINED
    uint8 a = 1; // ranges from (0 to 2**8 - 1) or 255 ; LOWEST
    uint16 b = 1; // ranges from (0 to 2**16 - 1) or 65535
    uint256 c = 1; // ranges from (0 to 2**256 - 1) ; HIGHEST


    // Variable size defines gas fee ; LOW SIZE = LOW GAS FEE


    uint8 public u8 = 1;
    uint public u256 = 256;
    uint public u = 123;

    // 3. int: CAN BE NEGATIVE ; USED IF WE WANT TO ADD NEGATIVE NUMBERS ; RANGES FROM (-2**255 to 2**255 - 1)
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -1234; 

    // FINDING MINIMUM and MAXIMUM VALUE IN NUMBERS
    int public minInt = type(int).min;
    int public maxInt = type(int).max;


    // ARRAYS

    // In solidity datatype bytes represents a sequence of bytes, so generally there are 2 different types of bytes
    // Types:
        // --- FIXED SIZED BYTES ARRAY : Defined explicitly
        // --- DYNAMICALLY SIZED BYTES ARRAY
    // When an array is defined, it is represented as dynamic bytes array
    bytes1 public d = 0xb5;
    bytes1 public e = 0x56;

    // Address Types

    address public not;
    address public present = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //DEFAULT VALUES
    bool public defaultbool;        // False
    uint public defaultunum;         // 0
    int public defaultnum;         // 0
    address public defaultaddr;             // 0x000000000000000000000000
}

// BYTES has more gas efficiency
