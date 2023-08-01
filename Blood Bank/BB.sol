// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface BloodGroup {
    function getBG() external returns (string memory);
}

interface Age {
    function getAge() external returns (uint8);
}

interface Name is BloodGroup, Age {
    function getName() external returns (string memory);
}

contract BB is Name {

    string name;
    uint8 age;
    string bloodgroup;

    constructor (string memory _name, uint8 _age, string memory _bloodgroup) {
        name = _name;
        age = _age;
        bloodgroup = _bloodgroup;
    }

    function getName() external view returns (string memory){
        return name;
    }

    function getAge() external view returns (uint8) {
        return age;
    }

    function getBG() external view returns (string memory) {
        return bloodgroup;
    }
}