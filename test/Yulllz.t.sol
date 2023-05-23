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
}
