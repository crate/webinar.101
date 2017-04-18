from __future__ import print_function
from tsl2561 import TSL2561
import time
from cratedb import insert, get_cursor


if __name__ == "__main__":
    tsl = TSL2561(debug=1)
    cursor = get_cursor()

    while True:
        l = tsl.lux()
        print(l)
        insert(cursor, "tsl2561", {"lux": l})
        time.sleep(0.2)
