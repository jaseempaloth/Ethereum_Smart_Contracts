// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract ForLoopSample{

    uint256[] data;
    function loop() public returns(uint256[] memory) {
        for(uint256 i=0; i<5; i++){
            data.push(i);
        }
        return data;
    }
    function getData() public view returns (uint256[] memory){
        return data;
    }
}