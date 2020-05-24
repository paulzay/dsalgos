def utopianTree(n):
    count = 0
    boolean = False

    for i in range(n +1 ):
        if (boolean == False):
            count +=1
            boolean = True
        else:
            count *=2
            boolean = False
    return count
