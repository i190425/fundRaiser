//Usama Khatab, Abdullah Usman, Ahmed Rohan
//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2 ; 

import './startup.sol';

// linter warnings (red underline) about pragma version can igonored!

// contract code will go here
contract deploymentContract {
    startupInfo[] public deployedCampaigns;
    
    function createCampaign(uint minimumAmount, uint fundGoals) public {
        startupInfo newCampaign = new startupInfo(minimumAmount, msg.sender, fundGoals) ;
        //newCampaign.startUpFundingAmount(minimumAmount, fundGoals);
        deployedCampaigns.push(newCampaign);
    }
    
    function getDeployedCampaigns() public view returns (startupInfo[] memory) {
        return deployedCampaigns;
    }
}
