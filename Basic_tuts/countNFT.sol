// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract NFTCounter {
    uint public numberofNFT;

    // Fetching data
    function showCount() public view returns(uint256){              // We have used view variable to see state of variable
        return numberofNFT;
    }

    // Increment NFT count by 1
    function addNFT() public {
        numberofNFT+=1;
    }

    // Decrement NFT count by 1
    function deleteNFT() public {
        numberofNFT-=1;
    }
}
