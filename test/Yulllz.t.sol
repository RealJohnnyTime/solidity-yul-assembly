// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Yulllz.sol";

contract YulllzTest is Test {
    Yulllz public yulllz;

    function setUp() public {
        yulllz = new Yulllz();
    }

    function testIncrement() public {
        yulllz.increment();
        assertEq(yulllz.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        yulllz.setNumber(x);
        assertEq(yulllz.number(), x);
    }

    function testAddOneAnTwo() public {
        assertEq(yulllz.addOneAnTwo(), 3);
    }

    function testHowManyEvens() public {
        assertEq(yulllz.howManyEvens(1, 10), 5);
        assertEq(yulllz.howManyEvens(1, 15), 7);
        assertEq(yulllz.howManyEvens(0, 4), 2);
    }
}
