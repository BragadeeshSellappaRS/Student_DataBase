require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config()

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks:{
    hardhat:{},
    sepolia:{
      url:"https://sepolia.infura.io/v3/7a1d25c06e5549c4bc67a1cfc2915605",
      accounts:[process.env.PRIVATE_KEY]

    }
  }
};
