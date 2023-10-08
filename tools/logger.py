try:
    import logging
    import sys

    from rich.logging import RichHandler
    from rich.console import Console
except ImportError as e:
    print(f"Failed to import module in {__file__}: {e}")
    sys.exit(1)

CONSOLE = Console()

logging.basicConfig(
    level="NOTSET",
    format="%(message)s",
    datefmt="[%X]",
    handlers=[RichHandler(console=CONSOLE, rich_tracebacks=True)],
)

LOG = logging.getLogger("rich")
LOG.setLevel(logging.INFO)