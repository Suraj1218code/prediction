pragma solidity ^0.8.0;

contract DynamicNFT {
    mapping(uint256 => address) private _owners;
    uint256 private _totalSupply;

    function mint() public {
        uint256 tokenId = _totalSupply + 1;
        _owners[tokenId] = msg.sender;
        _totalSupply++;
    }

    function ownerOf(uint256 tokenId) public view returns (address) {
        return _owners[tokenId];
    }
}
