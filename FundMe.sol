//GET FUNDS FROM USER
//WITHDRAW FUNDS
//SET A MINIMUM FUND VALUE

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Fund
{
    uint256 public num=9;
    function fund() public payable
    //payable is the keyword which also give the red color to function fund
    //similar to wallet function do have their address and can hold fund 
    {
        num=69;
        require(msg.value>1e18,"Didn't send enough"); //1e18 is 10^18 wei which is equal to 1eth
        //the require is a checker value and if the value is less than 1eth it will display the error mssg didn't send enough
        //if the value is less than  1eth then it is reverted with error mssg if the value is greater than 1 eth then only num will be  set to 69 otherwise it will be reverted and undo the num will be set back to 5


    }
    // function withdraw()
    // {

    // }

}