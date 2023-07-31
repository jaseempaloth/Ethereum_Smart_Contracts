// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Rent {
    address payable public landlord;
    string public tenantName;
    uint8 public tenantAge;
    string public tenantOccupation;

    constructor (string memory name, uint8 age, string memory occupation) {
        tenantName = name;
        tenantAge = age;
        tenantOccupation = occupation;
        landlord = payable(msg.sender);
    }

    receive() external payable {
        landlord.transfer(msg.value);
    }
}