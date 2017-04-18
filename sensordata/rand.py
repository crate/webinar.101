from __future__ import print_function

from random import random
import time
from cratedb import insert, get_cursor


if __name__ == "__main__":
    cursor = get_cursor()

    while True:
        r = random() * 100
        print(r)
        insert(cursor, "random", {"number": r})
        time.sleep(0.1)
