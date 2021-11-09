//SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    // this will deploy as 0
    uint256 bigMoney;
    // if i where to add a variable it would be at index 1
    bool favbool;
    
    struct People {
        uint256 bigMoney;
        string name;
        
    }
    
    /// the people array is not a fixed array, below the push function is used to push values into this array in this case it would be a string and a uint
    /// the mapping is linking a type of variable to another to be able to pull values associated with each other.
    People[] public people;
    mapping(string => uint256) public nametobigmoney;
    
    
    function store(uint256 _bigMoney) public {
        bigMoney = _bigMoney;
    
        
    }
    
   
    /// function store2() public {
        
    //view means you will read a state 
    // public variables are also view functions
    // pure functions do only math but the state will not be saved
    
    
    function retrieve() public view returns(uint256) {
        
        return bigMoney;
    }
    /// this function uses the 
    /// storing in memory stores them only for execution, the string in solidity is an array of bytes that you can append text into
    function addPerson(string memory _name, uint256 _bigMoney) public{
        people.push(People(_bigMoney, _name));
        nametobigmoney[_name] = _bigMoney;
    }
    
    


} 