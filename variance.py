#!/usr/bin/env python3

# --- variance ---
#
# Calculate the variance of a sample data set.
#
# Copyright (C) 2020 Robert Coffey
# Licensed under the GNU GPLv2

from math import sqrt
from sys import argv

def mean(l):
    return sum(l) / len(l)

if __name__ == '__main__':
    data = [float(x) for x in argv[1:]]

    variance = sum([(x - mean(data))**2 for x in data]) / len(data)
    deviation = sqrt(variance)

    print(f"Variance: {variance}\nDeviation: {deviation}")
