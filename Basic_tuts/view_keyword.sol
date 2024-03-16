// SPDX-License-Identifier: MIT

// We are able to access state vars using view but we'll get error if we'll change them

pragma solidity ^0.8.24;
contract view_ {
    uint256 num1 = 2;
    uint256 num2 = 4;

    // function getResults() public view returns(uint256, uint256) {
    //     return (num1, num2);
    // }

    function getResults() public view returns(uint256 product, uint256 total) {
        product = num1 * num2;
        total = num1+num2;
    }
}
