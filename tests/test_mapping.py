import subprocess
import time
import utils
import data_generator as dg
import match_checker as mc
import pytest
import os



def transform(file):
    utils.generate_test_scripts(utils.get_schema())
    theProc = subprocess.Popen(f"vector --config ./tests/test_vector/{file}.toml --verbose --threads 4".split(" "))
    time.sleep(2)
    theProc.terminate()


def test_withP():
    dg.generate_data()
    transform('withP')
    _dir = './tests/test_vector/output/withP.json'
    try:
        assert mc.check_mapping(_dir)
        os.remove(_dir)
    except AssertionError:
        os.remove(_dir)
        raise

def test_withoutP():
    print('Here')
    dg.generate_data()
    transform('withoutP')
    _dir = './tests/test_vector/output/withoutP.json'
    try:
        assert mc.check_mapping(_dir)
        os.remove(_dir)
    except AssertionError:
        os.remove(_dir)
        raise
    
