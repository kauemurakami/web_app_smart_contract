require("@nomiclabs/hardhat-waffle");


module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten:{
      url: 'https://eth-ropsten.alchemyapi.io/v2/lH85SKJJRrTRmJNvbokNeg9qj1AUAgHX',
      accounts:['f113efb9abf8d099a15478af1b9a98494cf3f51c4a70b4a0a07251e1a86def7a']
    }
  }
};
