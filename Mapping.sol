// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        // The default value for uint is 0
        return myMap[_addr];
    }

    function set(address _address, uint _i) public {
        // Update the value at this address
        myMap[_address] = _i;
        
    }

    function remove(address _address) public {
        // Update the value at this address
        delete myMap[_address];
    }


}