const startup = artifacts.require("startupInfo");

module.exports = function (deployer) {
  deployer.deploy(startup, 10, '0x5E90Ae43A802930D48fde661Ee19d10925Eb9e92', 1000);
};
