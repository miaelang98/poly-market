// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Voting.sol";

contract PolyMarket {
    mapping(uint256 => Voting) public markets;
    uint256 public marketCount;

    event MarketCreated(uint256 marketId, string question, uint256 endTime);

    function createMarket(string memory _question, string[] memory _options, uint256 _duration) public {
        marketCount++;
        Voting newVoting = new Voting(_question, _options, _duration);
        markets[marketCount] = newVoting;
        emit MarketCreated(marketCount, _question, block.timestamp + _duration);
    }

    function getMarket(uint256 _marketId) public view returns (Voting) {
        return markets[_marketId];
    }
}
