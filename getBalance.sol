pragma solidity >= 0.7.0 <0.9.0 ;
contract SmartBank {
    uint totalContractBalance = 0;

    function getBalance() public view returns(uint){
        return totalContractBalance;
    }
