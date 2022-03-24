// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

contract hello {
        event Print(string message);

        function helloWorld() public {
            emit Print("Hello, World!");
        }

        function factorial(uint n) public pure returns (uint){
            if(n == 1){
                return 1;
            }
            return n * factorial(n - 1);
        }
        function deposit()external payable{}
            event NotEnoughBalance(string message);
        function withdraw(uint amountInWei)external{
            if(address(this).balance>=amountInWei){
                payable(msg.sender).transfer(amountInWei);
            }
            else{
                emit NotEnoughBalance("Balance too low!!!");
           }
       }
       function getBalance()external view returns (uint){
           return address(this).balance;
       }
}
