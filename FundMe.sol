//GET FUNDS FROM USER
//WITHDRAW FUNDS
//SET A MINIMUM FUND VALUE

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Fund
{
    uint256 public num=9;
    uint256 public mimUsd=50;
    function fund() public payable
    //payable is the keyword which also give the red color to function fund
    //similar to wallet function do have their address and can hold fund 
    {
        num=69;
        require(msg.value>1e18,"Didn't send enough");
         //1e18 is 10^18 wei which is equal to 1eth
        //the require is a checker value and if the value is less than 1eth it will display the error mssg didn't send enough
        //if the value is less than  1eth then it is reverted with error mssg if the value is greater than 1 eth then only num will be  set to 69 otherwise it will be reverted and undo the num will be set back to 5
        // require(msg.value>=mimUsd,"Didn't send enough");
        //chainlinks provide data of the real world to the blockchain 
        //chainlink itself is a decentralised network 
        //chainlink can be customized to get the desired data
        //chainlink gets the oracle data gas in exchannge of giving the data
        //chainlink vrf provides random number to the number to the contract since if we generate a random number in smart contract It wont a be a random number since it is already known
        //chainlink keepers are similar to event listener in js it peforms a speciic task/action like deploy ,generate etc which we did manually,at a specified time interval or a condition is triggered which we have mentioned 
        //chainlink can make direct request to any api
        //Inorder to get data from chainlink we need to pay oracle gas or link token



    }
    // function withdraw()
    // {

    // }

}
