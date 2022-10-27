#!/bin/bash
# SPDX-FileCopyrightText: 2022 Aso Hidetoshi asouhide2002@gmaiil.com
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo NG at Line $1
    res=1
}

res=0

### IO test ###
out=$(seq 10 | ./plus) 
[ "$out" = 55.0 ]|| ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res