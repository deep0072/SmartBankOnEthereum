pragma solidity >= 0.7.0 <0.9.0 ;

contract SmartBank {
    uint totalContractBalance = 0;

    function getBalance() public view returns(uint){
        return totalContractBalance;
    }


   
    mapping(address=>uint)balances;
    

    // add money to contract 
    function addMoney() public payable {
        balances[msg.sender] = msg.value;
        totalContractBalance = totalContractBalance + msg.value;
    }
}
