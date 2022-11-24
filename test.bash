#!/bin/bash
# SPDX-FileCopyrightText: 2022 Aso Hidetoshi asouhide2002@gmail.com
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo NG at Line $1
    res=1
}

res=0

### IO test ###
out=$(seq 10 | ./plus) 
[ "$out" = 55.0 ] || ng ${LINENO}

out=$(./date_nontp)
[ "$?" = 0 ] || ng ${LINENO}

out=$(diff <(./unkothink hello) unko_1)
[ "$?" = 0 ] || ng ${LINENO}

out=$(diff <(./unkothink -s 7 kuso) unko_2)
[ "$?" = 0 ] || ng ${LINENO}

out=$(diff <(echo 'unchi' | ./unkothink) unko_3)
[ "$?" = 0 ] || ng ${LINENO}

out=$(diff <(echo 'unko' | ./unkothink -s 4) unko_4)
[ "$?" = 0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res