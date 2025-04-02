pragma solidity ^0.8.20;

import { ConditionalTokens } from "./ConditionalTokens.sol";
import { ERC20 } from "github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract ToyToken is ERC20 {
    constructor(string memory name, string memory symbol) public ERC20(name, symbol) {}
    
    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }
}

// Zero address:        0x0000000000000000000000000000000000000000000000000000000000000000

// PRIMARY QUESTION:    0xa955c555c77bc6783a42600c2f8c9f5f52c009dd7a8acafd59d08577dcbb56dd
// ORACLE:              0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
// OUTCOMES:            A   -   B
// PRIMARY CONDITION:   0x543b86598e089f57366d27007551ced62b2c230af23aa82d19c404e422c0e286
// A-CollectionId:      0x1c9434d1d3b9bffa35495244bac9ff86c6b60920b8f50e08e6e7aced5fb713fb
// B-CollectionId:      0x1bf6e0aabb028dc1e24559b1583584f3c43a44e3f0f2ccf9f633a4797a3df273

// SUB QUESTION 1:      0x67ba20c3436d02dda7b42d6f0f65d6db2dcc1ec269f7a289784236c446cf2a72
// ORACLE:              0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
// OUTCOMES:            Yes     -      No
// SUB CONDITION 1:     0xf01f784d27c642d6b67290a1350d43839498f56642e8211197deefe6504a4cbd