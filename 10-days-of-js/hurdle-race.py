# Complete the hurdleRace function below.
def hurdleRace(k, height):
    maximm = max(height)

    if (maximm > k):
        return maximm - k
    return 0
