pragma solidity ^0.4.13;

contract Library {
	uint public number;

	function Library() {
		number = 0;
	}

	function addNumber() {
		number++;
	}
}
