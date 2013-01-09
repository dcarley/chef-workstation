A toy around with Chef to configure my local workstations.

For Mint:

    rbenv sudo chef-solo -c config/solo.rb -j config/mint.json

For Mac:

    chef-solo -c config/solo.rb -j config/mac.json
