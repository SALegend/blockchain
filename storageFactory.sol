//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";
//Importing a contract is a better option than copy and pasting the code


contract StorageFactory
{
    //Calling one contract from another contract 
    // Simple public simple;
    Simple[] public array;
    function createSimpleContract() public{
     Simple  simple= new Simple();
     array.push(simple);
    }
    function sfStore(uint256 index,uint256 number) public
    {
        //Address
        //ABI Application Binary Interface 
        // we automatically get abi of SimpleStorage just by importing in the compile section in compilation details
        Simple simple=array[index];
        simple.store(number);

    }
    function sfGet(uint256 index) public view returns(uint256)
    {
        Simple simple=array[index];
        return simple.retrieve();
        //An alternative to above
        // return array[index].retrieve();
    }

     
}