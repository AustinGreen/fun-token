// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.11;

import "ds-test/test.sol";
import "../FunToken.sol";

contract FunTokenTest is DSTest {
    FunToken funToken;

    function setUp() public {
        funToken = new FunToken();
    }

    function testTotalSupply() public {
        assertEq(funToken.totalSupply(), 1000000000000000000000000000);
    }

    function testBalanceOf() public {
        assertEq(
            funToken.balanceOf(address(this)),
            1000000000000000000000000000
        );
    }

    function testTransfer(address _to) public {
        funToken.transfer(_to, 500000000000000000000000000);
        assertEq(funToken.balanceOf(address(this)), funToken.balanceOf(_to));
    }
}
