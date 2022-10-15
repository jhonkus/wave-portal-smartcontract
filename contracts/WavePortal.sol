// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] public  senders;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function wave(address sender) public {
        totalWaves += 1;
        senders.push(sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getTotalUsers() public view returns (address[] memory) {
        // console.log("We have %d total user!", senders.length);


        return senders;
    }
}
