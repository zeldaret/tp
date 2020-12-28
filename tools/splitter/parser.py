from dataclasses import dataclass
from parsy import string, regex, seq, generate, line_info
from typing import Optional, List, Union, Protocol


class Emittable(Protocol):
    def emit(self) -> str:
        ...


@dataclass
class BlockComment:
    text: str

    def emit(self) -> str:
        return f'/*{self.text}*/'


@dataclass
class TrailingComment:
    text: str

    def emit(self) -> str:
        return f'# {self.text}'


@dataclass
class Include:
    file: str

    def emit(self) -> str:
        return f'.include "{self.file}"'


@dataclass
class Section:
    name: str
    flags: Optional[str]

    def emit(self) -> str:
        directive = f'.section .{self.name}'
        if self.flags is not None:
            directive += f', "{self.flags}"'

        return directive


@dataclass
class Global:
    symbol: str

    def emit(self) -> str:
        return f'.global {self.symbol}'


@dataclass
class Label:
    symbol: str

    def emit(self) -> str:
        return f'{self.symbol}:'


@dataclass
class Instruction:
    opcode: str
    operands: List[str]

    def emit(self) -> str:
        instr = self.opcode
        if len(self.operands) > 0:
            instr += ' ' + ', '.join(self.operands)

        return instr


@dataclass
class Line:
    index: int
    content: List[
        Union[
            BlockComment, TrailingComment, Instruction, Global, Section, Include, Label
        ]
    ]
    body: Optional[Union[Global, Section, Include, Label, Instruction]]

    def emit(self) -> str:
        return ' '.join([x.emit() for x in self.content])


space = regex(r'[ \t]+')
line_ending = regex('(\n)|(\r\n)').desc('newline')
pad = regex(r'[ \t]*')


block_comment = (
    string('/*') >> regex(r'[\w\s]*').map(BlockComment) << string('*/')
).desc('block comment')
trailing_comment = (
    string('#') >> pad >> regex(r'[^\n\r]*').map(TrailingComment)
).desc('trailing comment')

symbolname = regex(r'[a-zA-Z._$][a-zA-Z0-9._$?]*')
label = (symbolname.map(Label) << string(':')).desc('label')

delimited_string = (string('"') >> regex(r'[^"]*') << string('"')).desc(
    'double-quote delimited string'
)

directive_include = string('include') >> space >> delimited_string.map(Include)
directive_section = seq(
    name=string('section')
    >> space
    >> string('.')
    >> regex(r'[a-z]+'),
    flags=(pad >> string(',') >> space >> delimited_string).optional(),
).combine_dict(Section)
directive_global = string('global') >> space >> symbolname.map(Global)
directive = (
    string('.')
    >> (
        directive_include
        | directive_section
        | directive_global
        | string('text').result(Section('text', flags=None))
        | string('data').result(Section('data', flags=None))
    )
).desc('directive')

opcode = regex(r'[a-z_0-9]+\.?').concat().desc('opcode')
operand = regex(r'[^,#\s]+')
operands = operand.sep_by(string(',') << pad)
@generate
def instruction():
    op = yield opcode
    sp = yield space.optional()
    if sp:
        oprs = yield operands
    else:
        oprs = []
    return Instruction(op, oprs)

@generate
def line():
    line, _ = yield line_info

    content = yield (pad >> block_comment << pad).many()
    body = yield (directive | label | instruction).optional() << pad
    if body:
        content.append(body)
    content += yield (pad >> block_comment).many()
    trailing = yield (pad >> trailing_comment).optional()
    if trailing:
        content.append(trailing)

    return Line(line, content, body)


asm = line.sep_by(line_ending)
