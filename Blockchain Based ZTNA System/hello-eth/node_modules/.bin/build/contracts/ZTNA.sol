pragma solidity >= 0.8.11 <= 0.8.11;
pragma experimental ABIEncoderV2;
//ZTNA solidity code
contract ZTNA {

    uint public userCount = 0; 
    mapping(uint => user) public userList; 
     struct user
     {
       string username;
       string password;
       string phone;
       string email;
       string home_address;
     }
 
   // events 
   event userCreated(uint indexed _userId);
   
   //function  to save user details to Blockchain
   function saveUser(string memory uname, string memory pass, string memory phone, string memory em, string memory add) public {
      userList[userCount] = user(uname, pass, phone, em, add);
      emit userCreated(userCount);
      userCount++;
    }

     //get user count
    function getUserCount()  public view returns (uint) {
          return  userCount;
    }

    uint public accessCount = 0; 
    mapping(uint => access) public accessList; 
     struct access
     {
       string access_user;
       string activity;
       string activity_time;
     }
 
   // events 
   event accessCreated(uint indexed _accessId);
   
   //function  to save access details to Blockchain
   function saveAccess(string memory au, string memory ac, string memory at) public {
      accessList[accessCount] = access(au, ac, at);
      emit accessCreated(accessCount);
      accessCount++;
    }

    //get File count
    function getAccessCount()  public view returns (uint) {
          return accessCount;
    }

    uint public fileVerifyCount = 0; 
    mapping(uint => file) public fileList; 
     struct file
     {
       string username;
       string filename;
       string hash;       
       string role;
     }
 
   // events 
   event fileCreated(uint indexed _fileId);
   
   //function  to save File hash details to Blockchain
   function saveFile(string memory uname, string memory fname, string memory h, string memory access_role) public {
      fileList[fileVerifyCount] = file(uname, fname, h, access_role);
      emit fileCreated(fileVerifyCount);
      fileVerifyCount++;
    }

    //get File count
    function getFileCount()  public view returns (uint) {
          return fileVerifyCount;
    }

    function getUsername(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.username;
    }

    function getPassword(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.password;
    }

    function getPhone(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.phone;
    }    

    function getEmail(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.email;
    }

    function getAddress(uint i) public view returns (string memory) {
        user memory doc = userList[i];
	return doc.home_address;
    }

    function getOwner(uint i) public view returns (string memory) {
        file memory doc = fileList[i];
	return doc.username;
    }

    function getFilename(uint i) public view returns (string memory) {
        file memory doc = fileList[i];
	return doc.filename;
    }

    function getHash(uint i) public view returns (string memory) {
        file memory doc = fileList[i];
	return doc.hash;
    }   
    
    function getRole(uint i) public view returns (string memory) {
        file memory doc = fileList[i];
	return doc.role;
    } 
     function getAccessUser(uint i) public view returns (string memory) {
        access memory doc = accessList[i];
	return doc.access_user;
    }

    function getActivity(uint i) public view returns (string memory) {
        access memory doc = accessList[i];
	return doc.activity;
    }   
    
    function getActivityTime(uint i) public view returns (string memory) {
        access memory doc = accessList[i];
	return doc.activity_time;
    } 

}