// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SendEther {
    function sendEth(address payable _to) public payable {
        // Just forward the ETH received in this payable function
        // to the given address
        uint amounToSend = msg.value;

        bool sent = _to.send(amounToSend);
        require(sent == true, "Failed to send Eth");
    }
}