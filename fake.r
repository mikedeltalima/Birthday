def quickSort(vect):
    if len(vect) <= 1:
        return vect
    element = vect.pop(0)
    v1 = [x for x in vect if x < element]
    v2 = [x for x in vect if x >= element]
    v1 = quickSort(v1)
    v2 = quickSort(v2)
    return v1 + [element] + v2

if __name__ == '__main__':
    print(quickSort([10, 2, 4, 1, -5, 7]))
