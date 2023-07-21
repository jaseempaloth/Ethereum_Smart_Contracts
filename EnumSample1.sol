// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled

    }

 import "./Enum.sol"; 
 //sample

 contract EnumSample2 {
    Status public status;
 } 
