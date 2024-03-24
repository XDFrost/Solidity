// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// Only takes condition ; Acts as an if condition

contract AssertStatement {
    bool public result;

    function checkOverFlow(uint256 _num1, uint256 _num2) public {
        uint256 sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    function getResult() public view returns(string memory) {
        if(result == true) {
            return "No Overflow";
        }
        else {
            return "Overflow exists";
        }
    }
}
