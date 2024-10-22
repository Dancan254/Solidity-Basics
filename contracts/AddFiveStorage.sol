// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFive is SimpleStorage{

    function store(uint256 numUpdate) pure  public override {
        numUpdate = numUpdate + 5;
    }
}