def distance2(point1, point2):
    return sum((point1[i] - point2[i])**2 for i in range(2))


def centroid(data, pid):
    return [sum(data[p][j] for p in pid) / len(pid) for j in range(2)]


def k_means(k, data, cid, rep):

    center = [data[cid[i]] for i in range(k)]

    for r in range(rep):

        bucket = [[] for i in range(k)]

        for i, e in enumerate(data):
            min_bucket, min_distance2 = -1, float("inf")
            for b in range(k):
                d = distance2(center[b], e)
                if d < min_distance2:
                    min_bucket, min_distance2 = b, d
            bucket[min_bucket].append(i)

        center = [centroid(data, bucket[i]) for i in range(k)]

    return bucket
