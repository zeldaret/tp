from multiprocessing import Queue
from dataclasses import dataclass, field
from typing import Any

from .globals import *

@dataclass
class Context:
    """
    The context is used to provide ways for multiprocessing 
    code to print and talk to the main process.
    """

    index: int
    output: Queue

    def send_command(self, command, *args):
        self.output.put((command, (*args,)))

    def debug(self, *args):
        self.send_command('debug', *args)

    def warning(self, *args):
        self.send_command('warning', *args)

    def error(self, *args):
        self.send_command('error', *args)

    def info(self, *args):
        self.send_command('info', *args)

    def complete(self, result=None):
        self.send_command('complete', self.index, result)

    def exception(self, traceback):
        self.send_command('exception', self.index, traceback)

    def exit(self):
        self.send_command('exit', 0)

@dataclass
class MainContext(Context):
    """ Context that is ONLY used on the main process. """
    
    def send_command(self, command, *args):
        if command == 'debug':
            debug(*args)
        elif command == 'warning':
            warning(*args)
        elif command == 'info':
            info(*args)
        elif command == 'error':
            error(*args)
        elif self.output:
            self.output.put((command, (*args,)))
