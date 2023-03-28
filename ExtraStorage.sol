//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";
//Creating a contract Extra which is  children to Simple
//Extra will inherit all the functions of Simple
contract Extra is Simple
{
    // function store(uint256 _fav) public
    // {
    //     fav=_fav+5;
    // }
    // The above will show an error because there is a same function store in SimpleStorage therefore in order to override write virtual in that store function in SimpleStorage and override here in the store function
    function store(uint256 _fav) public override
    {
        fav=_fav+5;
    }

}