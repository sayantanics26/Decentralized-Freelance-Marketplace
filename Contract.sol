
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract FreelanceMarketplace {
    struct Project {
        uint id;
        string title;
        string description;
        address client;
        address freelancer;
        uint payment;
        bool completed;
    }
    
    uint public projectCount;
    mapping(uint => Project) public projects;
    address public dao;
    
    event ProjectCreated(uint id, string title, address client);
    event FreelancerAssigned(uint id, address freelancer);
    event ProjectCompleted(uint id);
    
    modifier onlyDAO() {
        require(msg.sender == dao, "Only DAO can execute this");
        _;
    }
    
    modifier onlyClient(uint _id) {
        require(msg.sender == projects[_id].client, "Only client can execute this");
        _;
    }
    
    constructor(address _dao) {
        dao = _dao;
    }
    
    function createProject(string memory _title, string memory _description, uint _payment) public {
        projectCount++;
        projects[projectCount] = Project(projectCount, _title, _description, msg.sender, address(0), _payment, false);
        emit ProjectCreated(projectCount, _title, msg.sender);
    }
    
    function assignFreelancer(uint _id, address _freelancer) public onlyDAO {
        projects[_id].freelancer = _freelancer;
        emit FreelancerAssigned(_id, _freelancer);
    }
    
    function completeProject(uint _id) public onlyClient(_id) {
        require(projects[_id].freelancer != address(0), "Freelancer not assigned");
        projects[_id].completed = true;
        emit ProjectCompleted(_id);
    }
    
    function getProject(uint _id) public view returns (Project memory) {
        return projects[_id];
    }
    
    function setDAO(address _newDAO) public onlyDAO {
        dao = _newDAO;
    }
}
