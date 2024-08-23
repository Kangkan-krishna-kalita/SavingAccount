// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SavingsAccount {
    address public owner;
    uint public interestRate; // Interest rate in percentage (e.g., 5 for 5%)
    mapping(address => uint) public balances;
    mapping(address => uint) public lastDepositTime;

    event Deposited(address indexed user, uint amount);
    event Withdrawn(address indexed user, uint amount);

    constructor(uint _interestRate) {
        owner = msg.sender;
        interestRate = _interestRate;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
        uint interest = calculateInterest(msg.sender);
        balances[msg.sender] += msg.value + interest;
        lastDepositTime[msg.sender] = block.timestamp;
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint amount) public {
        uint availableBalance = balances[msg.sender] + calculateInterest(msg.sender);
        require(amount <= availableBalance, "Insufficient funds");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }

    function calculateInterest(address user) public view returns (uint) {
        uint timeElapsed = block.timestamp - lastDepositTime[user];
        uint interest = (balances[user] * interestRate * timeElapsed) / (365 days * 100);
        return interest;
    }

    function checkBalance() public view returns (uint) {
        return balances[msg.sender] + calculateInterest(msg.sender);
    }

    function setInterestRate(uint _interestRate) public onlyOwner {
        interestRate = _interestRate;
    }
}

