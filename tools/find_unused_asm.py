"""
Use as `python tools/find_unused_asm.py | xargs rm`
"""

import inotify.adapters
from inotify.constants import IN_OPEN
from pathlib import Path
import subprocess
from sys import stderr

asm_files = set(Path('include/').glob('**/*.s'))

stderr.write('==> clean\n')
subprocess.run(['make', 'clean'], stdout=subprocess.DEVNULL)

stderr.write('==> set up watches\n')
ino = inotify.adapters.Inotify()
for p in asm_files:
	ino.add_watch(str(p), mask=IN_OPEN)

stderr.write('==> run make\n')
subprocess.run(['make', '-j'], stdout=subprocess.DEVNULL)

opened_paths = set()
for evt in ino.event_gen(timeout_s=1):
	if evt:
		(header, type_names, path, filename) = evt
		opened_paths.add(Path(path))

unused_asm = asm_files - opened_paths
for p in unused_asm:
	print(str(p))