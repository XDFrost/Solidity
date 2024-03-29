// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
// Enum --> Enumerable
contract Enum {
    // Enum for shipping
    enum Status {
        Pending,
        Shiped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is first element
    // Pending in this case

    Status public status;       // Creating a enum type variable
    // Returns uint
    // Pending - 0
    // Shiped - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4

    function get() public view returns(Status) {
        return status;          // Pending for default
    }

    // Updating Status by passing uint
    function set(Status index) public {
        status = index;
    }

    // Changing state by calling
    function cancel() public {
        status = Status.Canceled;
    }

    // Deletes resets the enum to default value i.e. 0
    function reset() public {
        delete status;
    } 
}
