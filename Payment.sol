Contract Payment is Voting {

function Escrow(address seller, uint amount) {
    require(balances[msg.sender] >= amount);
    balances[msg.sender] -= amount;
    address(this).transfer(amount);
    //transfer funds from seller of service into smart contract
}

  function approvedOrNotApproved(address buyer) {
    if(currentState=yes) {
      require(address(this).balance >= amount);
      address(this).balance -= amount;
      buyer.transfer(amount);
      // If work was approved, transfer the money to the person who completed the service from the smart contract
    }
    else if(currentState=no) {
      require(address(this).balance >= amount);
      address(this).balance -= amount;
      seller.transfer(amount);
      // If the work wasn't approved, transfer the money back to the seller from the smart contract
    }
  }
}
