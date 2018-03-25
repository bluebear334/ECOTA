pragma solidity ^0.4.18;

import './Validation.sol';

contract Voting is Validation{

enum State {neutral, yes, no}
State public currentState;
bool decision = false;
uint amountOfYes = 0;
uint amountOfNo = 0;

function voting(bool _decision) payable {
    require(msg.sender == validators[0] || msg.sender == validators[1] || msg.sender == validators[2]);
      //require(counter <=3);
      decision = _decision;

    if(decision) {
      amountOfYes += 1;
    }
    else if(!decision)
    {
      amountOfNo += 1;
    }

    if(amountOfYes>amountOfNo){
      currentState = State.yes;
      }
    else if(amountOfYes<amountOfNo){
      currentState = State.no;
      }
}
}
}

function rewardsOrPunishment() {
  require(msg.sender == validators[0] || msg.sender == validators[1] || msg.sender == validators[2]);
  for(var i=0, i<=3, i++) {
    if(validator[i] = State.yes && decision = true) { //how to properly check/store state of validator[i]??
      msg.sender +=validatorBonus/(amountOfYes);
      }
      else if(validator[i] = State.no && verdict = false) {
        msg.sender+=validatorBonus/(amountOfNo);
      }
      else {//could add something about punishment}
  }
}
