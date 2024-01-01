// SPDX-License-Identifier: MIT

pragma solidity ^0.8.22;

contract Data_types{
    /*
    Boolean 
    Unsigned Integers
    Signed Integers
    Fixed Point numbers
    Bytes
    Address
    Enums
    */

    bool  flag;
    uint256  num1;
    int256  num2;
    bytes1  byte1;
    address  addr;
    enum my_enum {_this, _is, _yash}

    function Enum() public pure returns(my_enum){
        return my_enum._is;
    }

    function setDataTypes(bool _flag, uint256 _num1, int256 _num2, bytes1 _byte1, address _addr) public {
        flag = _flag;
        num1 = _num1;
        num2 = _num2;
        byte1 = _byte1;
        addr = _addr;
    }

    function getDataTypes() public view returns(bool, uint, int, bytes1, address){
        return (flag, num1, num2, byte1, addr);
    }

    /*
    ### Reference Types ###
    Arrays
    String
    Struct
    Mapping
    */

    uint256[5] arr;
    string str;
    struct Student{
        uint256 id;
        string name;
    }

    Student s1;

    function structure() public returns(uint256, string memory){
        s1.id = 3;
        s1.name = "Yash";

        return (s1.id, s1.name);
    }

    mapping (address => Student) mp;
    address[] student_result;

    function displayReferenceTypes()public view returns (uint256[5] memory, string memory, uint, string memory){
        return (arr, str, s1.id, s1.name);
    }

    function setReferencceTypes(uint[5] memory _arr,  string memory _str) public {
        arr = _arr;
        str = _str;
    }

}