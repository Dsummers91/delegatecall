var Library = artifacts.require("./Library.sol");
var Child = artifacts.require("./Child.sol");

module.exports = function(deployer) {
  deployer.deploy(Library)
    .then((lib) => {
      return Library.deployed();
    })
    .then((lib) => {
      deployer.deploy(Child, lib.address);
    })
};
