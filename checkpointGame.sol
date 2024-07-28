// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

/**
 * @title CheckpointGame
 * @dev A simple contract where players deposit Ether to reach certain milestones and earn rewards.
 */
contract CheckpointGame {

    // Milestone and reward values in Ether
    uint256 public payoutMileStone1 = 3 ether;
    uint256 public mileStoneReward1 = 2 ether;
    uint256 public payoutMileStone2 = 5 ether;
    uint256 public mileStoneReward2 = 3 ether;
    uint256 public payoutMileStone3 = 10 ether;
    uint256 public mileStoneReward3 = 5 ether;

    // Total Ether deposited in the contract
    uint256 public depositedEther;

    // Mapping to store redeemable rewards for each player
    mapping(address => uint256) public redeemableEther;

    // Events to log when a game is played and when a reward is claimed
    event GamePlayed(address indexed player, uint256 amountDeposited);
    event RewardClaimed(address indexed player, uint256 rewardAmount);

    /**
     * @dev Allows a player to play the game by depositing exactly 0.5 Ether.
     * If the deposited amount reaches any of the milestones, the player is credited with the respective reward.
     * Emits a {GamePlayed} event.
     */
    function play() public payable {
        // Ensure the player sends exactly 0.5 Ether
        require(msg.value == 0.5 ether, "You must send exactly 0.5 ether to play");

        // Calculate the new balance after the current deposit
        uint256 currentBalance = depositedEther + msg.value;

        // Check if the current balance hits any milestone and credit the respective reward
        if (currentBalance == payoutMileStone1) {
            redeemableEther[msg.sender] += mileStoneReward1;
        } else if (currentBalance == payoutMileStone2) {
            redeemableEther[msg.sender] += mileStoneReward2;
        } else if (currentBalance == payoutMileStone3) {
            redeemableEther[msg.sender] += mileStoneReward3;
        }

        // Update the total deposited Ether
        depositedEther += msg.value;

        // Emit the GamePlayed event
        emit GamePlayed(msg.sender, msg.value);
    }

    /**
     * @dev Allows a player to claim their reward after the final milestone is reached.
     * Emits a {RewardClaimed} event.
     */
    function claimReward() public {
        // Ensure the final milestone has been reached
        require(depositedEther >= payoutMileStone3, "The game is not complete yet");

        // Ensure the caller has a reward to claim
        require(redeemableEther[msg.sender] > 0, "No reward to claim");

        // Transfer the reward to the caller
        uint256 transferAmount = redeemableEther[msg.sender];
        redeemableEther[msg.sender] = 0;
        payable(msg.sender).transfer(transferAmount);

        // Emit the RewardClaimed event
        emit RewardClaimed(msg.sender, transferAmount);
    }
}
