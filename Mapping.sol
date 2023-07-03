// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Mapping {
    mapping (address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // mapping always returns value.
        // if the value was never set, it will return the default value.
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
       // update the value at this address.
       myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // reset the value to the default value.
        delete myMap[_addr];
    }
}

contract NestedMapping {
    // nested mapping - mapping from address to another mapping
    mapping (address => mapping(uint => bool)) public nested;

    function get(address _addr1 , uint _i) public view returns(bool) {
        // you can always get values from a nested mapping, even when it's not initialized
        return nested[_addr1][_i];
    }
    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }
    
    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
} 