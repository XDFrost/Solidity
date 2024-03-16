// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// CHECKS FOR A CONDITION
// Requires both condition and result
// Costs very low gas
// Can act as a break statement

contract Require {
    function checkInp(uint256 _input) public pure returns(string memory) {
        require(_input >= 0, "INVALID UINT8");          // If input is greater than or equals to 0, display the message
        require(_input <=255, "INVALID UINT");

        return "Input is uint8";
    }

    function Odd(uint256 _input) public pure returns(bool) {
        require(_input % 2 != 0);
        return true;
    }
}
