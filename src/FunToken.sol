// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.11;

import "solmate/tokens/ERC20.sol";

contract FunToken is ERC20("FunToken", "FUN", 18) {
    constructor() {
        _mint(msg.sender, 1000000000000000000000000000);
    }
}
