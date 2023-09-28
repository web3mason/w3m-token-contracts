// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract Web3MasonTimelock is TimelockController {
    uint256 private _minDelay = 259200;
    address[] private _proposers = [0xEdF9a94536AAED297054668847Fe62F08ef47be6];
    address[] private _executors = [0xEdF9a94536AAED297054668847Fe62F08ef47be6];

    address private _admin = address(0);

    constructor()
        TimelockController(_minDelay, _proposers, _executors, _admin)
    {}
}
