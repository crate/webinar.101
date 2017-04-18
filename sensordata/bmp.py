from __future__ import print_function

from Adafruit_BMP.BMP085 import BMP085
import time
from cratedb import insert, get_cursor

if __name__ == "__main__":
    bmp = BMP085()
    cursor = get_cursor()
    while True:
        t = bmp.read_temperature()
        p = bmp.read_pressure()
        print(p)
        print(t)
        insert(cursor, "bmp180", {"temp": t, "pressure": p})
        time.sleep(0.2)
