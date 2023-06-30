// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract RevertSample {
    function checkOverFlow(uint256 _num1, uint256 _num2) public pure returns (string memory,uint256){
        uint256 sum = _num1+_num2;

        if (sum < 0 || sum >255){
            revert("overflow exist");
        }else{
            return ("No overflow", sum);
        }

    }
}