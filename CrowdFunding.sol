// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


contract CrowdSource{
    struct request{
        string description;  
        uint value;          
        address recipiant;   
        bool complete;
    }



    address public manager;
    uint public MinimumContribution;
    address[] public approvals;

    function campaign(uint minimum)public{
        manager = msg.sender;
        MinimumContribution = minimum; 
    }

    function contribute() public payable{        
        require(msg.value > MinimumContribution);  
        approvals.push(msg.sender);
    }
}
