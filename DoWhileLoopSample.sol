// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract DoWhileLoopSample {
    uint256[]  data;
    uint8 j=0;

    function loop() public returns (uint256[] memory) {
        do{
            j++;
            data.push(j);

        }while(j<5);
        return data;
    }

    function getData() public view returns (uint256[] memory){
        return data;
    } 
}