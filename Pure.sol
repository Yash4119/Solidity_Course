// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Pure{
    uint num1 = 23;
    uint num2 = 2;

    /*
    Pure Keyword specifies that the defined function only uses the locally declared
    variables. and a function declared as pure doesn't allow to access state variables
    */

    function display() public pure returns(uint product, uint sum){
        uint n1 = 2;
        uint n2 = 3;

        product = n1*n2;
        sum = n1+n2;
    }

    /*
    While on the contrary, the view keyword allows accessing of the local and state 
    variables, but to be taken care that state variables shouldn't be updated.
    */

    function displayView()public view returns(uint product, uint sum){
        product = num1*num2;
        sum = num1+num2;
    }
}