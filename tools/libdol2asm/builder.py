import os
import codecs
import asyncio
import aiofiles

class AsyncBuilder:
    """ Writes code to file asynchronous """
    
    def __init__(self, path):
        self.path = path
        self.new_line = "\n"

    async def write(self, text):
        await self.file.write(text)
        await self.file.write(self.new_line)
    
    async def write_nonewline(self, text):
        await self.file.write(text)

    async def __aenter__(self):
        self.file = await aiofiles.open(self.path, 'w', encoding="utf-8")
        return self

    async def __aexit__(self, type, value, traceback):
        await self.file.close()
