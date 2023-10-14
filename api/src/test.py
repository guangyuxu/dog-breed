import numpy as np


def calculateAfterOneDay(rooms):
    nextRooms = np.zeros(len(rooms), dtype=np.int8)

    for i in range(1, len(rooms) - 1):
        nextRooms[i] = 1 if (rooms[i - 1] == rooms[i + 1]) else 0
    return nextRooms


def toNumber(rooms):
    return int("".join(str(x) for x in rooms))


def hotelAfterNDays(rooms, n):
    arr = []
    index = -1
    for i in range(0, n):
        rooms = calculateAfterOneDay(rooms)
        v = toNumber(rooms)
        if arr.count(v) > 0:
            index = arr.index(v)
            break
        else:
            arr.append(v)
    if index == -1:
        return rooms

    n = (n - 1) % (len(arr) - index)
    for i in range(0, n):
        rooms = calculateAfterOneDay(rooms)
    return rooms


if __name__ == "__main__":
    result = hotelAfterNDays([1, 0, 0, 1, 0, 0, 1, 0], 1000000000)
    print(result)
