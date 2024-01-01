// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Functions{
    uint id;
    string name;

    function setDetails(uint _id, string memory _name) public{
        id = _id;
        name = _name;
    }

    function updateIdByNum(uint num)public returns(uint){
        id = id+num;
        return id;
    }

    function getDetails() public view returns(uint, string memory){
        return (id, name);
    }
}