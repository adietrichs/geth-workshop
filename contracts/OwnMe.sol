// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OwnMe {
    address public owner;
    
    fallback() external {
        owner = msg.sender;
    }
}
