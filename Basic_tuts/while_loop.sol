// SPDX-License-Identifier: MIT

// USING LOOPS INCREASE EXECUTION COST

pragma solidity ^0.8.24;
contract While {
    uint256[] data;
    uint8 j = 0;

    function loop() public returns(uint256[] memory) {
        while(j<5) {
            j++;
            data.push(j);
        }
        return data;
    } 
}
