// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Option {
        string name;
        uint256 voteCount;
    }

    string public question;
    Option[] public options;
    mapping(address => bool) public hasVoted;
    uint256 public endTime;

    event Voted(address voter, uint256 optionIndex);

    constructor(string memory _question, string[] memory _options, uint256 _duration) {
        question = _question;
        for (uint i = 0; i < _options.length; i++) {
            options.push(Option({
                name: _options[i],
                voteCount: 0
            }));
        }
        endTime = block.timestamp + _duration;
    }

    function vote(uint256 _optionIndex) public {
        require(!hasVoted[msg.sender], "Already voted");
        require(block.timestamp < endTime, "Voting has ended");
        require(_optionIndex < options.length, "Invalid option");

        options[_optionIndex].voteCount++;
        hasVoted[msg.sender] = true;

        emit Voted(msg.sender, _optionIndex);
    }

    function getOptions() public view returns (Option[] memory) {
        return options;
    }
}
