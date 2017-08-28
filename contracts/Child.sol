pragma solidity ^0.4.13;

contract Child {
  uint    public number;
  address public libraryAddress;

  function Child(address addr) {
    libraryAddress = addr;
  }

  function() {
    require(libraryAddress.delegatecall(msg.data));
  }
}