// SPDX-License-Identifier: UNLICENSED 
// DESCRIPTION: This is a comment indicating the license of the contract. UNLICENSED means the contract isn’t under any specific license.

pragma solidity ^0.8.9;
// This line specifies the version of Solidity that the contract is written in. The ^ symbol means the contract is compatible with any version from 0.8.9 up to, but not including, 0.9.0.

contract CrowdFunding {
    // This line declares a new contract named CrowdFunding.

    struct Campaign {
        address owner;
        string title;
        string description;
        uint256 target;
        uint256 deadline;
        uint256 amountCollected;
        string image;
        address[] donators;
        uint256[] donations;
    }
    // This block defines a custom data type called Campaign, which consists of several variables that represent the state of a crowdfunding campaign. For example, owner is the address of the campaign creator, target is the amount of money needed to fund the campaign, donators is an array of addresses that have donated to the campaign, etc

    mapping(uint256 => Campaign) public campaigns;
    // This line declares a public variable named campaigns, which is a mapping from an unsigned integer to a Campaign struct. A mapping is like a hash table that allows you to store and retrieve values by a key. In this case, the key is the campaign ID and the value is the corresponding Campaign struct

    uint256 public numberOfCampaigns = 0;
    // This line declares and initializes a public variable named numberOfCampaigns, which is an unsigned integer that keeps track of how many campaigns have been created.

    // creating function of what the platform will do.
    function createCampaign(address _owner, string memory _title, string memory _description, uint256 _target, uint256 _deadline, string memory _image) public returns (uint256) {}
    // This block defines a public function named createCampaign, which takes six parameters: the address of the campaign owner, the title, the description, the target amount, the deadline, and the image URL. The function returns an unsigned integer, which is the ID of the newly created campaign.

    function donateToCampaign() public{}

    function getDonators() public {}

    function getCampaigns() public {}
}