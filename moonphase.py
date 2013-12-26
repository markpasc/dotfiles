#!/usr/bin/env python3

from datetime import datetime


# Convert a date to Julian.
def julian(year, month, day):
    a = (14-month)/12
    y = year+4800-a
    m = (12*a)-3+month

    return day + (153*m+2)/5 + (365*y) + y/4 - y/100 + y/400 - 32045


# Define the phases of the moon.
def phase(year, month, day):
    p = (julian(year, month, day) - julian(2000, 1, 6)) % 29.530588853

    if   p < 1.84566:  return "🌑"  # new
    elif p < 5.53699:  return "🌒"  # waxing crescent
    elif p < 9.22831:  return "🌓"  # first quarter
    elif p < 12.91963: return "🌔"  # waxing gibbous
    elif p < 16.61096: return "🌕"  # full
    elif p < 20.30228: return "🌖"  # waning gibbous
    elif p < 23.99361: return "🌗"  # last quarter
    elif p < 27.68493: return "🌘"  # waning crescent
    else:              return "🌑"  # new


today = datetime.now()
print(phase(today.year, today.month, today.day))
