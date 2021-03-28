import logging
import asyncio
import sys

from dataclasses import dataclass, field
from rich.logging import RichHandler
from rich.console import Console

VERSION = "2.3"
CONSOLE = Console()

logging.basicConfig(
    level="NOTSET",
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(console=CONSOLE, rich_tracebacks=True)]
)

LOG = logging.getLogger("rich")
LOG.setLevel(logging.INFO)

# disable asyncio logging of 'Using selector: EpollSelector'
logging.getLogger('asyncio').setLevel(logging.WARNING)

def get_console():
    return CONSOLE

def enable_debug_logging():
    LOG.setLevel(logging.DEBUG)

def debug(*wargs, **kwargs):
    LOG.debug(*wargs, **kwargs)

def warning(*wargs, **kwargs):
    LOG.warning(*wargs, **kwargs)

def error(*wargs, **kwargs):
    LOG.error(*wargs, **kwargs)

def info(*wargs, **kwargs):
    LOG.info(*wargs, **kwargs)

def fatal_exit():
    error("Fatal Error: exiting...")
    sys.exit(1)

_print = print
def print(*wargs, **kwargs):
    CONSOLE.print(*wargs, **kwargs)
