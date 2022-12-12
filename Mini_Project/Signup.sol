// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/**
 * @title companydetails
 * @dev Store & retrieve value in a variable
 */
contract Company {
    mapping(string=>provider) internal providermap;
    struct provider{
        string c_name;
        string email;
        string service;
        string password;
    }
    provider internal p;
    address internal owner; 

    constructor()  {
        owner = msg.sender;
    }
    modifier isOwner() {
        require(msg.sender == owner, "Access is allowed only to owner");
        _;
    }

    function store_company(string memory companyname, string memory email, string memory servicename, string memory password) public isOwner {
        
        p.email = email;
        p.service = servicename;
        p.password = password;
        providermap[companyname] = p; 
       
    }

}
