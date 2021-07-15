#!/bin/bash

# 5th - BLIS_JC_NT (n)
# 3rd - BLIS_IC_NT (m)
# 2nd - BLIS_JR_NT (n)
# 1st - BLIS_IR_NT (m)

for j in 2 4 8 16 32 
do
    ((i=64/$j))
    export BLIS_IC_NT=${j}
    export BLIS_JR_NT=${i}
    ./test_libblis.x > test_IC_${j}_JR_${i}
done