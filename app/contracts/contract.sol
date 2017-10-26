pragma solidity ^0.4.7;
contract TheContract {
  struct User {
    address addr;
    uint amount;
  }
  struct Deal {
    address beneficiary;
    uint tenure;
    uint nop;
    bool valid;
    uint numFunders;
    mapping (uint => User) funders;
  }

  uint numDeals;
  mapping (uint => Deal) deals;
  mapping (address => uint) balanceOf;

  /*explicitly enter beneficiary address below*/
  function newContract(address beneficiary, uint tenure, uint nop) returns (uint contractID) {
    contractID = numDeals++;
    Deal storage d = deals[contractID];
    d.beneficiary = beneficiary;
    d.tenure = tenure;
    d.nop = nop;
    d.valid = true;
  }
  /*function payment(uint contractID) payable {
    Deal storage d = deals[contractID];
    User storage u = d.funders[d.numFunders++];
    u.addr = msg.sender;
    /*u.amount = msg.value;

  }*/
  function payment(uint contractID, uint amount) returns (bool paid) {
    Deal storage d = deals[contractID];
    User storage u = d.funders[d.numFunders++];
    if (u.amount < amount)
      return false;
    d.beneficiary.transfer(amount);
    return true;
  }
}
