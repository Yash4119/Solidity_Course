// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract View{
    uint num1 = 3;
    uint num2 = 4;

    function display() public view returns (uint, uint){
        return (num1, num2);
    }

    function Addition()public view returns(uint sum){
        sum = num1 + num2;
    }

    // function helper()public view returns(uint Num1, uint Num2, uint product, uint total){
    //     Num1 = 23;
    //     Num2 = 2;

    //     product = num1 * num2;
    //     total = num1 + num2;
    // }

    function helper()public returns(uint product, uint total){
        num1 = 23;
        num2 = 2;

        product = num1 * num2;
        total = num1 + num2;
    }
}