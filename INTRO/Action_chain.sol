
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

//ACTIONS AFTER IMPLEMENTATION OF SMART CONTRACTS

contract MyContract {
    //To receive ether directly to a smart contract
    receive() external payable {
        //additional info
    }
    //checking for a specific message or keyword for a transaction
        uint public count = 0;
    fallback() external payable{
        count++;
    }
    //Checking the balance on an account
    function checkBalande() public view returns ( uint ) {
        return address(this).balance;
    }
    //Sending ether to a different address of account
    function transfer( address payable _to) public payable {
        ( bool sent, ) = _to.call{ value: msg.value}("");
        require(sent, "Failed");
    }

}
