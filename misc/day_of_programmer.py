#!/bin/python3

import sys

def solve(year):
    feb = 28;
    if year > 1918 and (year % 400 == 0 or (year % 4 == 0 and year % 100 != 0)):
        feb = 29
    elif year == 1918:
        feb = 15 # lucky guess
    elif year < 1918 and year % 4 == 0:
        feb = 29
        
    days_in_month = [31, feb, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    num = 0
    i = 0
    while num < 256:
        num += days_in_month[i]
        if num >= 256:
            day = (days_in_month[i] - (num - 256)) # the days of the month minus the differnence between the end of the month and the 256th day
        i += 1 # go to the next month
    month = i
    return "{}.0{}.{}".format(day, month, year) # always before the 10th month for some reason.

year = int(input().strip())
result = solve(year)
print(result)