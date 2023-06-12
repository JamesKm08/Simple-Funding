// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 < 0.9.0;

contract Fund{

//pinpointing an integer to the address needed to be funded
    mapping (address => uint256) public AddressFunded;

//create a function with keyword payable to enable the funding transaction to work
    function fund() public payable {
        AddressFunded[msg.sender] += msg.value;
        
    }

}
