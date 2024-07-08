// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Faucet {

    uint256 constant WITHDRAW_AMOUNT = 0.01 ether;

      function withdraw() public {
        (bool success, ) = (msg.sender).call{value: WITHDRAW_AMOUNT}("");
        require(success, "Ether withdrawl failed!");
    }

    receive() external payable { }
}
