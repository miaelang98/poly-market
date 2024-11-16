const PolyMarket = artifacts.require("PolyMarket");

module.exports = function(deployer) {
    deployer.deploy(PolyMarket);
};
