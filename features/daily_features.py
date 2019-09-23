from scripts.analyze_data.lib.feature import Feature, value_map
from expansion import gen_stats


def org_size_feature(dk_d):
    return Feature(as_obj={
        '_id': 'ORG_SIZE',
        '_type': 'DAILY',
        'expansion_safe': True,
        'value': len(dk_d),
        'description': "How many machines "
                       "were recorded for "
                       "a given day"
    })


def main(dk_d, value_mapped=False, mini=False):
    extractors = [
        org_size_feature
    ]

    features = []

    for e in extractors:
        features.append(e(dk_d))

    if value_mapped:
        return value_map(features, mini)
    else:
        return features


if __name__ == "__main__":
    main([])
