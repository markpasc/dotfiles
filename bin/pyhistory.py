def set_up_history():
    import os, readline, atexit

    histfile = os.path.join(os.environ["HOME"], ".python_history")
    try:
        readline.read_history_file(histfile)
    except IOError:
        pass

    atexit.register(readline.write_history_file, histfile)

def set_up_logging():
    import logging
    logging.basicConfig(level=logging.DEBUG,
        format='%(asctime)-8s %(levelname)-8s %(name)-15s %(msg)s',
        datefmt='%H:%M:%S')

set_up_history()
set_up_logging()

del set_up_history, set_up_logging
