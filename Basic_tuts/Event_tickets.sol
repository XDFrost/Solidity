// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Event {
    uint256 public numberOfTickets;
    uint256 public ticketPrice;
    uint256 public totalAmount;
    uint256 public startAt;
    uint256 public endAt;
    uint256 public timeRange;
    string public message = "Buy your first ticket";

    constructor(uint256 _ticketPrice) {
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;           // Returns 7 
        timeRange = (endAt - startAt)/60/60/24;
    }

    function buyTicket(uint256 _val) public returns(uint256 ID) {
        numberOfTickets++;
        totalAmount+=_val;
        ID = numberOfTickets;
    }

    function getAmount() public view returns(uint256) {
        return totalAmount;
    }
}
