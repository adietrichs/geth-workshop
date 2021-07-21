// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract HelloWorldInvoker {
    function call(uint256 v, uint256 r, uint256 s, address addr) external payable {
        bool success;
        assembly {
            pop(auth(0, v, r, s))
            success := authcall(0, addr, 0, 0, 0, 0, 0, 0)
        }
        require(success, "authcall failed");
    }
}
