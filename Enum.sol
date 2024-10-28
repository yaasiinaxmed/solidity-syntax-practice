// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Enum {
    // Enum representing different possible shipping states
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Declare a variable of the type Status
    // This can only contain one of the predefined values
    Status public status;

    // Since enums are internally represented by uints
    // This function will always return a uint
    // Pending = 0
    // Shipped = 1
    // Accepted = 2
    // Rejected = 3
    // Canceled = 4
    // Value higher than 4 cannot be returned
    function get() public view returns (Status) {
        return status;
    }

    // Pass the desired Status enum value as a uint
    function set(Status _status) public {
        status = _status;
    }

    // Update status enum value to a specific enum member, in this case, to the Canceled enum value
    function cancel() public {
        status = Status.Canceled; // Will set status = 4
    }

    function pending() public {
        status = Status.Pending; // Will set status = 0
    }

    function accepted() public {
        status = Status.Accepted; // Will set status = 2
    }
}