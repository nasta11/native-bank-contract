// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import "./IBank.sol";

contract NativeBank is IBank {
    address public owner;
    mapping(address => uint256) private balances;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function deposit() public payable override {
        require(msg.value > 0, "Deposit must be greater than 0");
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public override {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function withdrawAll() public onlyOwner {
        payable(owner).transfer(address(this).balance);
    }

    function getBalance() public view override returns (uint256) {
        return balances[msg.sender];
    }

    receive() external payable {
        deposit();
    }

    fallback() external payable {
        deposit();
    }
}
