#!/bin/bash


sleep 10

########
# rs.slaveOK(); -- Enable salve read
########



# mongo --host localhost:27017 <<EOF
# db.stats()
# EOF
echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
mongo --host localhost:27018 <<EOF
db.stats()
EOF
# echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
# mongo --host localhost:27019 <<EOF
# db.stats()
# EOF
# echo '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>'
# mongo --host localhost:27017 <<EOF
# rs.initiate(
#   {
#     _id : "mongodb0",
#     members: [
#       { _id : 0, host : "localhost:27017" },
#       { _id : 1, host : "localhost:27018" },
#       { _id : 2, host : "localhost:27019" }
#     ]
#   }
# );
# EOF

echo "mongo mongodb://localhost:27017,localhost:27018,localhost:27019/test"