// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract SimpleStorage {
    uint16 favoriteNumber;

    struct People {
        uint16 favoriteNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint16) public nameToFavoriteNumber;

    function store(uint16 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint16) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint16 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
