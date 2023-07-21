// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ModifierSample {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier validateData(address _addr) {
        require(_addr != address(0), "Not Valid Address");
        _;
    }

    function changeOwner(
        address _newOwner
    ) public onlyOwner validateData(_newOwner) {
        owner = _newOwner;
    }

    modifier noReentrancy() {
        require(!locked, "No Reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentrancy {
        x -= 1;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}
