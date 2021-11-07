pragma solidity ^0.6.0;

contract SimpleStorage {
    // this will deploy as 0
    uint256 bigMoney;
    // if i where to add a variable it would be at index 1
    
    struct People {
        uint256 bigMoney;
        string name;
        
    }
    
    People[1] public people;
    
    
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
    
    function addPerson(string memory _name, uint256 _bigMoney) public{
        people.push(People({bigMoney: _bigMoney, name:_name }));
    
        
    }
    



} 
// paste this back in the remix ide for now.