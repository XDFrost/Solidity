// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Pure is only restricted to local variables
// Only use when we aren't accessing state variables

contract Pure_ {
    uint256 num1 = 4;
    uint256 num2 = 6;

    function getData() public pure returns(uint256, uint256) {
        uint256 N1 = 20;
        uint256 N2 = 40;

        uint256 prod = N1*N2;
        uint256 total = N1+N2;

        return (prod, total);
    }
}
