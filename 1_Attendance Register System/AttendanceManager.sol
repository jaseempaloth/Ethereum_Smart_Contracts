// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract AttendanceManager{
    struct Student{
        string name;
        uint256 class;
        
    }

    address public teacher;
    uint8 rollNumber;

    event Added(string name, uint256 class, uint256 time);

    mapping(uint8 => Student) public registered;

    modifier isTeacher {
        require(msg.sender == teacher, "Only teacher can add students" );
        _;
    } 

    constructor() {
        teacher = msg.sender;
    } 

    function add(string memory name, uint256 class) public isTeacher {
        require(class > 0 && class <= 12, "Invalid Class");
        Student memory s = Student(name, class);
        rollNumber++;
        registered[rollNumber] = s;
        emit Added(name, class, block.timestamp);
    }

}
