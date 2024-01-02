// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract LocalVariables{

    uint public mynum;

    function helper()public returns(address, uint, uint){
        uint i = 249;
        mynum = i;

        i += 1;

        address myAddr = msg.sender;

        return (myAddr, mynum, i);
    }

}