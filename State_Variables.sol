// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract StateVariables{
    uint256 public num;
    string public state;

    // int public num2 = 256;
    // string public name = "Yash Jayram Ambekar";

    // uint[] arr;
    // uint [] public temp;

    constructor (string memory _state, uint _num){
        state = _state;
        num = _num;
    }

    function updateStateVariables(string memory _state, uint _num) public {
        state = _state;
        num = _num;
    }
}