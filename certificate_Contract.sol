// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.22;

contract Certificate{
    string public certOrg;
    uint256 public certId;
    string certOwner;

    constructor(string memory _certOrg, uint256 _certId){
        certId = _certId;
        certOrg = _certOrg;
    }

    function setCertOwner(string memory owner) public{
        certOwner = owner;
    }

    function getCertOwner() public view returns (string memory){
        return certOwner;
    }

}