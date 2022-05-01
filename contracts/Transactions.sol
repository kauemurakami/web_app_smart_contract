//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions{
  //inteira padrao positive unsized
  uint256 transactionsCount;

  event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
  
  //model
  struct TransferStruct{
    address sender;
    address receiver;
    uint amount; 
    string message;
    uint256 timestamp; 
    string keyword;
  }

  TransferStruct[] transactions;
  //payable - terá uma taxa de gás
  //memory - não vai pra blockchain, especie de cache
  function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
    
  }

}




