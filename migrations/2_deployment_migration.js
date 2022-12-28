const deploymentContract = artifacts.require("deploymentContract");

module.exports = function (deployer) {
  deployer.deploy(deploymentContract, startup.address);
};
