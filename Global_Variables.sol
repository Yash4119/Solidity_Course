// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract GlobalVariables{
    address owner;
    address Blockhash;
    uint256 Difficulty;
    uint Number;
    uint GasLimit;
    uint Gasprice;
    uint NowOn;
    address Origin;
    bytes callData;
    bytes4 Firstfour;
    uint value;
    uint timeStamp;

    constructor()payable {
        Number = block.number;
        owner = msg.sender;
        Blockhash = block.coinbase;
        Difficulty = block.prevrandao;
        GasLimit = block.gaslimit;
        Gasprice = tx.gasprice;
        timeStamp = block.timestamp;
        callData = msg.data;
        Firstfour = msg.sig;
        Origin = tx.origin;
        value = msg.value;
    }

    function getDetails()public view returns(address, address, address, uint, uint, uint, uint, uint, uint, bytes memory, bytes4){
        return (owner, Blockhash, Origin, Difficulty, Number, GasLimit, Gasprice, value, timeStamp, callData, Firstfour);
    }

}