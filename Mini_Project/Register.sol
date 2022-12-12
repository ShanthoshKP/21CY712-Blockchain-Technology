// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/**
 * @title companydetails
 * @dev Store & retrieve value in a variable
 */

 contract Airline {
    
     
      mapping(uint256 => airline)  airlinelist;
      
    
     struct  airline{
         string  airline_name;
         string  aircraft_type;
         string  airline_address;
         string  part_name;
         uint256 part_id;
         uint256 part_manufactureddate;
         uint256 part_expirydate;
         uint256 units_manufactured;
         uint256 phone_no;

          
     }
     airline a;
     
     address owner;
    
      constructor() public {
          owner = msg.sender;
      }
      
      
      // modifier to give access only to airline
      modifier isOwner() {

         require(msg.sender == owner, "Access is not allowed");

         _;

     }
      
     
     function store_manufacture_details(uint256 aircraft_id,uint256 _part_id,uint256 _part_manufactureddate,uint256 _part_expirydate,uint256 _units_manufactured,uint256 _phone_no,string memory _airline_name,string memory _airline_address,string memory _part_name)public isOwner {
        
         a.airline_name = _airline_name;
         a.airline_address = _airline_address;
         a.part_name = _part_name;
         a.part_id = _part_id;
         a.part_manufactureddate = _part_manufactureddate;
         a.part_expirydate = _part_expirydate;
         a.units_manufactured = _units_manufactured;
         a.phone_no = _phone_no;
         
        airlinelist[aircraft_id] = a;
        
        
         }
         
        

         function retreive_manufacture_details(uint256 aircraft_id) public view returns (string memory,string memory,string memory){
             
     airline memory a1 = airlinelist[aircraft_id];
     
     return (a1.airline_name,a1.airline_address,a1.part_name);
     
          }
          
          
          
}