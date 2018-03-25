pragma solidity ^0.4.18;

contract Validation {

    uint counter = 0;
    uint stake = 20000000000000000; //in wei
    address[3] validators;
    mapping (address => uint) public balances;

    function addAddressAndStake() payable public{
      //require(balances[msg.sender] >= stake);
      require(counter < 3);
      validators[counter] = msg.sender;
      counter++;

      balances[msg.sender] -= msg.value;
      address(this).transfer(msg.value);
    }

    function() payable public{

    }

    function getBalance() public returns(uint256){
        return address(this).balance;
    }


}
