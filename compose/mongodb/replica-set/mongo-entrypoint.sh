#!/bin/bash

sleep 10;

echo '>>>>>>>>>>>>>>>>>>>>>>>>>>>>> config ......'

./usr/bin/mongo --eval 'db.stats()'

./usr/bin/mongod --replSet cluster0 --smallfiles

# sleep 10

# ./usr/bin/mongo --eval 'rs.slaveOk();'

echo '>>>>>>>>>>>>>>>>>>>>>>>>>>>>> config inited'