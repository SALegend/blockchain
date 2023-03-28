//SPDX-License-Identifier: MIT
pragma solidity 0.8.8;
//the latest version of solididty is 0.8.19
//the ^ sign is to tell any version above or equal to the mentioned version will be ok
// pragma solidity >=0.8.7 <0.9.0;
// the above code says any version greater than equal to 0.8.7 and less than 0.9.0 will work
contract Simple{
    //data types boolean int uint address bytes
    //by default the visibility is internal
    uint256 public fav;
    //public creates a getter function to display fav 
    struct People{
        uint256 fave;
        string name;
    }
    //MAP
    mapping(string=>uint256)  public nameToFav;
    People public sha=People({name:"Shashank",fave:34});
    //***********Creating an array*************
    // uint256[] arr;
    //Dynamic array
    People[] public people;
    // People[3] public people; an  example of fixed size array of size 3 which cannot be changed further 

    function  store(uint256 _fav) public virtual //virtual to make it overridable
    {
        // add();
        //here the add function will cost gas since store function requires gas therefore when it calls a view or pure function it also requires gas
        fav=_fav;
        // fav+=1;
    }
    function retrieve() public view returns(uint256)
    {
        return fav;
    }
    //view and pure function when called don't require any gas
    //pure and view disallow any modification of state 
    //pure function also disallow reading from blockchain
    function add() public pure returns(uint256)
    {
        return 1+1;
    }
    //we only need gas if we need to modiy blockchain state
    //if a gas calling funtion calls view or pure function then only it requires which is termed as execution cost
    function add_person(string memory nam,uint256 favnum) public{
        People memory temp=People(favnum,nam);
        people.push(temp);
        // people.push(People(favnum,name)); This is an alternate method
        //memory and calldata are temporary data the only diff between them is calldata cannot be modified whereas memory can be
        nameToFav[nam]=favnum;
    } 

}