require("@nomicfoundation/hardhat-toolbox");
require("@nomiclabs/hardhat-ethers");
require("dotenv").config();

const { API_URL, PRIVATE_KEY } = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  defaultNetwork: "polygon_mumbai",
  networks: {
    hardhat: {},
    polygon_mumbai:{
      url: API_URL,
      accounts: [`0x${PRIVATE_KEY}`]
    }
  }
};

// Deployed contract address: 0x06b271556703569F8F7950F5feBF50bE1659f5B9
