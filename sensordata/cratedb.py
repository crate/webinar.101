from crate import client
from datetime import datetime
from time import mktime

CRATE_DEMO_1 = "147.75.64.53:4280"
CRATE_DEMO_2 = "147.75.64.55:4280"
CRATE_DEMO_3 = "147.75.64.195:4280"


def get_cursor():
    connection = client.connect([CRATE_DEMO_1, CRATE_DEMO_2, CRATE_DEMO_3])
    return connection.cursor()


def timestamp_ms():
    """ Helper function for millisecond timestamps """
    dt = datetime.now()
    return int((mktime(dt.timetuple()) + dt.microsecond / 1e6) * 1000)


def insert(cursor, name, value):
    """ Insert data into CrateDB with a current timestamp. """

    cursor.execute("""INSERT INTO sensordata (ts, name, value) VALUES (?, ?, ?)""",
                   (timestamp_ms(), name, value))
