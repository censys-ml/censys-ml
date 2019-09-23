from expansion import gen_stats


def main(TS):
    extractors = []
    features = TS[:]

    for e in extractors:
        for line in features:
            line += [e(TS)]

    return features


if __name__ == "__main__":
    main([])