// SPDX-License-Identifier: GPL3.0

pragma solidity ^0.8.22;

contract NFTCounter{
    uint256 nftCount;

    function addNFT() public{
        nftCount += 1;
    }

    function deleteNFT() public{
        require(nftCount>0);
        nftCount -= 1;
    }

    function getNFTCount() public view returns(uint256){
        return nftCount;
    }
}