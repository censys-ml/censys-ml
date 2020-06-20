import configparser
import json


# Print iterations progress
def printProgressBar(iteration, total, prefix='',
                     suffix='', decimals=1,
                     length=100, fill=' '):
    """
    Call in a loop to create terminal progress bar
    @params:
        iteration   - Required  : current iteration (Int)
        total       - Required  : total iterations (Int)
        prefix      - Optional  : prefix string (Str)
        suffix      - Optional  : suffix string (Str)
        decimals    - Optional  : positive number of decimals in percent complete (Int)
        length      - Optional  : character length of bar (Int)
        fill        - Optional  : bar fill character (Str)
    """
    percent = ("{0:." + str(decimals) + "f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = fill * filled_length + '-' * (length - filled_length)
    # print('\r%s |%s| %s%% %s' % (prefix, bar, percent, suffix), end = '\r')
    # Print New Line on Complete
    if iteration == total:
        print()


def get_config():
    config = configparser.ConfigParser()
    config.read('./config/config.ini')
    config.read('../config/config.ini')
    config.read('config/config.ini')
    config.read('./censys-ml/config/config.ini')
    config.read('../censys-ml/config/config.ini')
    return config


def get_schema():
    with open(get_config()['censys']['model_outfile']) as _file:
        result = json.load(_file)
    return result


def write_script_to_file(file_name, function_name, data_lines):
    begin_line = "function {}(event)".format(function_name)
    end_line = "end"
    data = '\n'.join([begin_line] + ['\t' + d for d in data_lines] + [end_line])
    file_name = '{}/{}.lua'.format(get_config()['censys']['lua_dir'], file_name)
    with open(file_name, 'w') as _file:
        _file.write(data)


def main():
    print([g for g in get_config()])


if __name__ == "__main__":
    main()
