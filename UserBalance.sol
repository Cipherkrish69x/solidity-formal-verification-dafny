// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserBalance {
    mapping(address => uint256) public balances;
    
    function deposit(uint256 amount) public returns (uint256 updated_balance) {
        require(amount > 0, "Deposit must be greater than zero");
        
        balances[msg.sender] += amount;
        
        return balances[msg.sender];
    }
}
