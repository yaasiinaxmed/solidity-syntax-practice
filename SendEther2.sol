// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendEther2 {
    function sendEther2(address payable _to) public payable {
        // Use the transfer method to send the ETH.
        _to.transfer(msg.value);
    }
}