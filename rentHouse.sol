pragma solidity ^0.4.0;

contract RentHouse {
    
    //需要用户支付gas的事务
    //用户输入一个房屋后，如果写入了区块链，那么将触发这个event，更新界面
    event NewHouse(uint HouseId, uint price, uint rooms);
    
    struct House {
        string location;
        string time;
        uint price;
        uint rooms;
        //入住时间
        address owner;
    }

    House[] public houses;

    //房屋主人的映射
    mapping (uint => address) houseToOwner;
    mapping (address => uint) ownerHouseCount;

    function inputHouse(string _location, uint _price, uint _rooms, string _time) public {
        
        id = houses.push(House(_location, _price, _rooms, _time, msg.sender)) - 1;
        houseToOwner[id] = msg.sender;
        ownerHouseCount++;
        NewHouse(id, _price, _rooms);
    }






}