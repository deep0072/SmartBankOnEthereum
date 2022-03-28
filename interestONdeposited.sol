
    // interest on depostied money

    function getBalance(address user) public view returns(uint){
        //get the principle amount with help of address

        uint principle = balances[user];
        uint timeElapsed = block.timestamp - timeStamps[user];

        return principle * uint((principle*7*timeElapsed)/(100*365*24*60*60)) + 1;
    }
