// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract CheckpointGame {
    
    uint256 public payoutMileStone1 = 3 ether;
    uint256 public mileStoneReward1 = 2 ether;

    uint256 public payoutMileStone2 = 5 ether;
    uint256 public mileStoneReward2 = 3 ether;

    uint256 public payoutMileStone3 = 10 ether;
    uint256 public mileStoneReward3 = 5 ether;

    uint256 public depositedEther;

    mapping(address => uint256) public redeemableEther;

    event GamePlayed(address indexed player, uint256 amountDeposited);
    event RewardClaimed(address indexed player, uint256 rewardAmount);

    function play() public payable {
        // User must pay exactly 0.5 Ether
        require(msg.value == 0.5 ether, "You must send exactly 0.5 ether to play");

        uint256 currentBalance = depositedEther + msg.value;

        // Check milestones and credit the user with the milestone reward
        if (currentBalance == payoutMileStone1) {
            redeemableEther[msg.sender] += mileStoneReward1;
        } else if (currentBalance == payoutMileStone2) {
            redeemableEther[msg.sender] += mileStoneReward2;
        } else if (currentBalance == payoutMileStone3) {
            redeemableEther[msg.sender] += mileStoneReward3;
        }

        depositedEther += msg.value;

        emit GamePlayed(msg.sender, msg.value);
    }

    // Claim Reward
    function claimReward() public {
        // Ensure the game is complete
        require(depositedEther >= payoutMileStone3, "The game is not complete yet");

        // Ensure the caller has a reward to claim
        require(redeemableEther[msg.sender] > 0, "No reward to claim");

        uint256 transferAmount = redeemableEther[msg.sender];
        redeemableEther[msg.sender] = 0;
        payable(msg.sender).transfer(transferAmount);

        emit RewardClaimed(msg.sender, transferAmount);
    }
}
