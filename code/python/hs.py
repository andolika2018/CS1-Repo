def hs (n):
    count = 0
    while (n != 1):
        if ((n % 2) == 0):
            print (n)
            n = n // 2
            count = count + 1
        else:
            print (n)
            n = (3*n) + 1
            count = count + 1
    print (n)
    count = count + 1
    print (count)
    return None
