// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.

const main = async () => {
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  // await hre.run('compile');

  // We get the contract to deploy
  const transactionsFactory = await hre.ethers.getContractFactory("Transactions")
  const transactionsContract = await transactionsFactory.deploy()

  await transactionsContract.deployed()
  console.log(await transactionsContract.deployed().address);
  let a =  transactionsContract.address
  console.log(a)
  console.log("Transactions deployed to: ," + transactionsContract.address)
  console.log(transactionsContract.address)
}

const runMain = async () => {
  try{
    await main()
    process.exit(0)
  }catch(_){
    console.log(_)
    process.exit(1)
  }
}
// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
// main()
//   .then(() => process.exit(0))
//   .catch((error) => {
//     console.error(error);
//     process.exit(1);
//   });
