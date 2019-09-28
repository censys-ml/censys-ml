import configparser

def get_config():
    config = configparser.ConfigParser()
    config.read('config/config.ini')
    return config

def main():
    print([g for g in get_config()])

if __name__ == "__main__":
    main()