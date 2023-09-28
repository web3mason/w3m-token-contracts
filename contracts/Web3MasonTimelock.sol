// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract Web3MasonTimelock is TimelockController {
    uint256 private _minDelay = 60;
    address[] private _proposers = [0xBAE8BD25EFB531c98162903BB504080f1d8557de];
    address[] private _executors = [0xBAE8BD25EFB531c98162903BB504080f1d8557de];

    address private _admin = address(0);

    constructor()
        TimelockController(_minDelay, _proposers, _executors, _admin)
    {}
}
