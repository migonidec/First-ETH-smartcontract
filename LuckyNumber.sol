pragma solidity ^0.4.16;

contract LuckyNumber {
	//Mapping of the nodes addresses and an int (node's LuckyNumber)
	mapping(address => uint) numbers; 
	
	//Set the invoker's LuckyNumber
	function setLuckyNumber(uint _num) public {
		numbers(msg.sender) = _num;
	}
	
	//Get the invoker's LuckyNumber
	function getLuckyNumber(address _reqAddress) public view returns (uint) {
		return numbers[_reqAddress];
	}

}