# Decentralized Freelance Marketplace  

## Project Description  
The **FreelanceMarketplace** smart contract facilitates a decentralized freelance ecosystem where clients can create projects, freelancers can be assigned by a DAO, and payments are handled transparently. The platform ensures trust, security, and community-driven governance through a decentralized autonomous organization (DAO).  

## Features 
- Fully decentralized governance through DAO.
- Transparent and immutable job postings.
- Secure and automated contract execution.
- Community-driven dispute resolution. 
- **Project Creation**: Clients can create projects with a title, description, and payment offer.  
- **DAO Governance**: Only the DAO can assign freelancers to projects, ensuring fair allocation.  
- **Project Completion**: Clients can mark projects as completed once the work is done.  
- **Transparency & Security**: All project-related information is stored immutably on the blockchain.  
- **DAO-Controlled Operations**: The DAO can update its address and govern project assignments.  

## Contract Address  
📍 **[0x6fc30fc43b00d3bed15bf94ec993735981c01153]**  
![image](https://github.com/user-attachments/assets/6bca01ce-a03b-40dd-8015-b37dfc4da5ca)


## How It Works  
1. **Clients** create a project with a title, description, and payment.  
2. The **DAO assigns** a freelancer to the project.  
3. The **Freelancer completes** the project.  
4. The **Client marks** the project as completed.  

## Smart Contract Functions  
- `createProject(string _title, string _description, uint _payment)`: Clients create a new project.  
- `assignFreelancer(uint _id, address _freelancer)`: DAO assigns a freelancer to a project.  
- `completeProject(uint _id)`: Clients mark their project as completed.  
- `getProject(uint _id)`: Fetch project details.  
- `setDAO(address _newDAO)`: DAO updates its governance address.  


## Project Vision
To create a truly decentralized freelance ecosystem where governance and decisions are controlled by the community, enabling a fair and transparent work environment.

## Future Scope
- Integration with smart contract-based escrow payments.
- DAO-based dispute resolution mechanisms.
- Tokenized reputation system for freelancers and clients.
- AI-powered job matching and project recommendations.




