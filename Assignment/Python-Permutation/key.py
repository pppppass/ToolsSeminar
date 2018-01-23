def permutation(lst):
    length = len(lst)
    if length == 1:
        yield lst
    else:
        for i in range(length):
            remainder = lst[0:i] + lst[i+1:length]
            for remainder in permutation(remainder):
                yield [lst[i]] + remainder
