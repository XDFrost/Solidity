// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// Least Used
// Only statement is given

contract RevertStatement {
    function CheckOverflow(uint256 num1, uint256 num2) public pure returns(string memory, uint256) {
        uint256 sum = num1 + num2;
        if(sum < 0 || sum > 255) {
            revert("Overflow");
        }
        else {
            return("No Overflow", sum);
        }
    }   
}
