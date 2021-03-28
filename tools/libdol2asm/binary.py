import pickle
from pathlib import Path
from typing import Dict

from . import util
from .disassemble import AccessCollector, Access
from .context import Context
from .data.section import ExecutableSection

def analyze(context: Context,
            module_id: int,
            sections: Dict[str, ExecutableSection],
            cache: bool = True) -> Dict[int, Access]:
    """

    Each code segment provided by the sections will be search through 
    to find accesses to possible labels. These accesses are necessary as the linker
    map not may include all symbols. For exampel, there are symbols in '.init' section 
    which is missing from the linker map.

    By default this data is cached in 'build/generate/analyze_cache_X.dump' where the X is the
    module id passed in. This behaviour can be changed by providing the 'cache'
    argument.

    """

    cache_path = Path(f"build/generate/analyze_cache_{module_id}.dump")
    if cache and cache_path.exists():
        with cache_path.open('rb') as input:
            return pickle.load(input)

    accesses = dict()
    for section in sections:
        for start, stop in section.code_segments:
            size = stop - start
            data = section.data[start:stop]

            collector = AccessCollector(sections)
            for i, addr in collector.execute_generator(start + section.addr, data, size):
                pass

            accesses.update(collector.accesses)

    if cache:
        util._create_dirs_for_file(cache_path)
        with cache_path.open('wb') as output:
            pickle.dump(accesses, output)

    return accesses
