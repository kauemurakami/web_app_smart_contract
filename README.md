
# web_app_smart_contract
constructing with hardhat, ganache, truffle and waffle

Hardhat -> run locally, debug

install guide dependencies the hard hat
https://hardhat.org/plugins/nomiclabs-hardhat-ethers.html

alterar contrato
alterar script sampe-js para deploy.js

install metamaks no crhome 
ir em MainNet Ethereum -> clicar em msotrar ocultos -> ATIVAR redes de teste 
Selecionar rede Ropsten 
Copiar endereço da account
Prcurar sites que geram eth fake pra Ropsten Faucet.

Alchemy
https://www.alchemy.com/
Criar conta ou logar
Criar projeto 
Ethereum com a network Ropsten inicialmente.
Ao criar o projeto clicque em view API KEY e selecione a url HTTP

em harthat.config.js
```
require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.4",
  networks: {
    ropsten:{
      url: 'https://eth-ropsten.alchemyapi.io/v2/lH85SKJJRrTRmJNvbokNeg9qj1AUAgHX', <- API key da ropsten
      accounts:['f113efb9abf8d099a15478af1b9a98494cf3f51c4a70b4a0a07251e1a86def7a'] < - seu endereço de wallet ( estático até entao)
    }
  }
};

```

Agora o deploy do contrato
npx hardhat run scripts/deploy.js --network ropsten



# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
