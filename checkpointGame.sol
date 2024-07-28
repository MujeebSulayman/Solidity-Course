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

    mapping (address => uint256) redeemableEther;

    function play() public payable {
    //User must pay 0.5 Ether. Them credit their balance at specific milestone 
    require(msg.value == 0.5, "You must have atleast 0.5 ether in your account");
    uint256 currentbalance = depositedEther + msg.value;

    //If at a milestone, credit the use the milestone reward
    require(currentbalance <= payoutMileStone1 );
    if (currentbalance == payoutMileStone1) {
        redeemableEther[msg.sender] += mileStoneReward1;    
    }else if ( currentbalance == payoutMileStone2 ){
        redeemableEther[msg.sender] += mileStoneReward2;
    }else if (currentbalance == payoutMileStone3) {
        redeemableEther[msg.sender] += mileStoneReward3;
    }

    depositedEther += msg.value;
    return;
    }

    //Claim Reward
    function claimRewardd() public {
        //Ensure the game is complete
        depositedEther == payoutMileStone3;

        //Ensure there is a reward giving
       require(redeemableEther[msg.sender] > 0 );
       redeemableEther[msg.sender] = 0;
       msg.sender.transfer(transferValue);
    }
}