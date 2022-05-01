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
    transactionsCount += 1;
    // message msg é uma variável global, que é em relação a quem chaam o contrato ( que somos nós )
    // Como todas as transações/deployments estão dentro de um bloco, nós possuimos um objeto block e conseguimos nosso timesstamp
    transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));
    // realizando transação
    emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
  }

  //mostrar todas as transferências
  //view não vai alterar nossas variáveis de estado
  function getAllTransactions() public view returns(TransferStruct[] memory){
    return transactions;
  }

  //quantas transações realizou
  function getTransactionCount() public view returns(uint256){
    return transactionsCount;
  }

}




