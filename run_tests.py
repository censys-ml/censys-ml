import unittest
import os
from coverage import Coverage

from censys_ml import utils


def grab_test_results(start_dir='.', pattern='test*.py'):
    loader = unittest.TestLoader()
    tests = loader.discover(start_dir=start_dir, pattern=pattern)
    result = unittest.runner.TextTestRunner(verbosity=2).run(tests)
    return result


def run_tests():
    config = utils.get_config()
    cov_conf_file = config.get('file_locations', 'coverage_in_conf',
                               fallback='config/.coveragerc')
    cov_out_file = config.get('file_locations', 'coverage_out_dir',
                              fallback='coverage')

    cov = Coverage(config_file=cov_conf_file)
    cov.start()

    result = grab_test_results()
    if not result.wasSuccessful():
        print("Error running unit tests ...")
        exit(1)

    cov.stop()
    cov.save()
    print('Coverage Summary:')
    cov.report()
    cov.html_report(directory=cov_out_file)
    print('HTML version: file://{0}/{1}/index.html'.format(os.getcwd(), cov_out_file))
    cov.erase()
    exit(0)


if __name__ == "__main__":
    run_tests()
