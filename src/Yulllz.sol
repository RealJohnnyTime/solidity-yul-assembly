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

    function addOneAnTwo() external pure returns(uint256) {
        uint256 value;

        assembly {
            let one := 1
            let two := 2
            value := add(one, two)
        }

        return value;
    }

    function howManyEvens(uint256 num1, uint256 num2) external pure returns(uint256) {
        uint256 value;
        
        assembly {
            for{let i := num1} lt(i, add(num2, 1)) {i := add(i, 1)} {
                
                if iszero(i) {
                    continue
                }

                if eq(mod(i, 2), 0) {
                    value := add(value, 1)
                }
            }
        }

        return value;
    }
}
