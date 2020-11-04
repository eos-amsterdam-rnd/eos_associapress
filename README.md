# Associated Press election data on EOS blockchain

The Associated Press is [publishing the U.S. election race
calls](https://developer.ap.org/ap-elections-api/) on Ethereum and EOS
public blockchains. 

This tool is collecting the election data from EOS blockchain and
storing it in a publicly accessible MariaDB/MySQL server.

Each transaction contains a text string in JSON format with electoral
college votes. The database records the transaction ID, block number,
and block timestamp for every call, in order to provide an easy to
verify dataset.

Any MySQL-compatible database client can access and retrieve the data
for further processing. Here is an example using the command-line
client:

```
mysql --batch --host=associapress.eosamsterdam.eoswatch.info \
 --user=associapressro --password=associapressro --database=associapress \
 --execute="SELECT block_time, data FROM ELECTION"
```

EOS Amsterdam is providing this data for the mere purpose of
information accessibility and transparency. EOS Amsterdam does not
hold any responsibility for correctness of data published by
Associated Press.



## Copyright and License

Copyright 2019 cc32d9, EOS Amsterdam.

This work is licensed under a Creative Commons Attribution 4.0
International License.

http://creativecommons.org/licenses/by/4.0/
