// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract EnumSample {
    //enum represent shipping status
    
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled

    }
    Status public status;

    // return uint
    // Pending -0
    // Shipped -1
    // Accepted -2
    // Rejected -3
    // Canceled -4
    function getStatus() public view returns(Status){
        return status;
  }
  
  function set(Status _status) public {
    status = _status;

  } 
  function concel() public {
    status = Status.Canceled;
  }
  function reset() public {
    delete status;
  } 
}