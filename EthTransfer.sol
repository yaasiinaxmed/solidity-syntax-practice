// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EthTransfer {

    function sendEther(address payable reciption) external payable {
        require(reciption != address(0), "Invalid reciption address");

        reciption.transfer(msg.value);
    }
}