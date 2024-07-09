// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Faucet {

    uint256 constant WITHDRAW_AMOUNT = 0.01 ether;
    address public owner;
    mapping(address => bool) public whitelist;

    event Withdrawal(address indexed to, uint256 amount);
    event Whitelisted(address indexed account, bool isWhitelisted);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    modifier onlyWhitelisted() {
        require(whitelist[msg.sender], "Not a whitelisted address");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function whitelistAddress(address _address) public onlyOwner {
        whitelist[_address] = true;
        emit Whitelisted(_address, true);
    }

    function removeWhitelistedAddress(address _address) public onlyOwner {
        whitelist[_address] = false;
        emit Whitelisted(_address, false);
    }

    function withdraw() public onlyWhitelisted {
        require(address(this).balance >= WITHDRAW_AMOUNT, "Insufficient balance in faucet");
        (bool success, ) = msg.sender.call{value: WITHDRAW_AMOUNT}("");
        require(success, "Ether withdrawal failed!");
        emit Withdrawal(msg.sender, WITHDRAW_AMOUNT);
    }

    receive() external payable { }
}