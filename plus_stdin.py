#!/usr/bin/python3
# SPDX-FileCopyrightText: 2022 Aso Hidetoshi asouhide2002@gmaiil.com
# SPDX-License-Identifier: BSD-3-Clause

import sys

ans = 0.0
for line in sys.stdin:
    ans+=float(line)

print(ans)