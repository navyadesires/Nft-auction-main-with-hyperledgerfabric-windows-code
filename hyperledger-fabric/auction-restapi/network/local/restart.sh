# bring up the network
./network.sh up -ca -s couchdb

# create the defaultchannel
./network.sh createChannel -c defaultchannel -p DefaultChannel

# package and install 'auctionchaincode' chaincode on org1 and org2 nodes
./network.sh deployCC -ccn auctionchaincode -ccp ../../../auction-chaincode/src/goauction -ccl go -ccsd true

# deploy 'auctionchaincode' chaincode on 'defaultchannel'
./network.sh deployCC -c defaultchannel -ccn auctionchaincode -ccp ../../../auction-chaincode/src/goauction -ccl go -cci Init -ccsp true

