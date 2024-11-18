// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Vote {
        string question; // 투표 질문
        string[] options; // 선택지
        string imageURL; // 이미지 URL
        mapping(uint => uint) votes; // 선택지 별 투표 수
        bool exists; // 투표 여부 확인
        address creator; // 투표 생성자
    }

    uint public voteCount; // 총 투표 수
    mapping(uint => Vote) public votes; // 투표 ID로 투표 데이터 접근

    // 투표 생성 이벤트
    event VoteCreated(uint voteId, string question,string imageURL, string[] options);

    // 투표 생성 함수
    function createVote(string memory question, string memory imageURL, string[] memory options) public {
        require(options.length > 1, "At least two options are required");
        
        Vote storage newVote = votes[voteCount];
        newVote.question = question;
        newVote.imageURL = imageURL;
        newVote.exists = true;
        newVote.creator = msg.sender;

        for (uint i = 0; i < options.length; i++) {
            newVote.options.push(options[i]);
        }

        emit VoteCreated(voteCount, question, imageURL, options);
        voteCount++;
    }

    // 투표하기
    function castVote(uint voteId, uint optionIndex) public {
        require(votes[voteId].exists, "Vote does not exist");
        require(optionIndex < votes[voteId].options.length, "Invalid option");
        
        votes[voteId].votes[optionIndex]++;
    }

    // 결과 가져오기
    function getResults(uint voteId) public view returns (uint[] memory) {
        require(votes[voteId].exists, "Vote does not exist");
        
        uint[] memory results = new uint[](votes[voteId].options.length);
        for (uint i = 0; i < votes[voteId].options.length; i++) {
            results[i] = votes[voteId].votes[i];
        }
        return results;
    }
}
