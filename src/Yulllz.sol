// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Yulllz {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        assembly {
            sstore(number.slot, newNumber)
        }
    }

    function increment() public {
        assembly {
            let number_ := sload(number.slot)
            sstore(number.slot, add(number_, 1))
        }
    }
}
