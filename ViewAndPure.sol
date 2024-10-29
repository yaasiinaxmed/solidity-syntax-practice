// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAndPure {
    // Declare a state variable
    uint public x = 0;

     // Promise not to modify the state (but can read state)
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Promise not to modify or read from state
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    } 
}