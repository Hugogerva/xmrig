
#!/bin/bash

# autre option de pool: pool.minexmr.com:4444
POOL=xmrpool.eu
PORT=3333
ADDRESS=45KHmgAb8ipJrYahAsWyYnRHY9mzpWhPLjiHofpwEJMWJXieb6t96inU6D7uXrwa2aiHcdzyfSWrVCU2CTKWpvsV1DLciiS

DONATE_LEVEL=1
THREADS=3

(xmrig -o $POOL:$PORT -u $ADDRESS -p x --donate-level=$DONATE_LEVEL) & pid=$!
sleep $1 && kill -SIGINT $pid
