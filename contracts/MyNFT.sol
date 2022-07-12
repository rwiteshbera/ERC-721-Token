// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage, Ownable {

    constructor() ERC721("CryptoDragon", "CRD"){}

    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;


    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns(uint256){
        _tokenIds.increment();
        uint256 newNFT_Id = _tokenIds.current();
        _mint(recipient, newNFT_Id);
        _setTokenURI(newNFT_Id, tokenURI);       

        return newNFT_Id; 
    }
}
    