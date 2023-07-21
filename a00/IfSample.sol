// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract IfSample {
    
    uint256 public myNum = 5;
    string public myString;

    function get(uint256 _num) public {

        if(_num == 5) {
            myString = "The value of myNum is 5";
        }else {
            myString = "The value is not 5";

        }

    }    

    function getTer(uint256 _num) public returns (string memory) {
        return _num == 5 ? myString = "jaseem It's 5" : myString = "Jaseem it's not 5";
    }   

        
        
    
}

