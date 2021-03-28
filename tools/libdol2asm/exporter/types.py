
from dataclasses import dataclass, field
from typing import List, Set, Dict
from collections import defaultdict

from .. import settings
from ..builder import AsyncBuilder
from ..context import Context
from ..types import *
from ..data import *
from ..data.function import *

@dataclass(eq=False)
class Struct:
    name: str
    index: int
    parent: "Struct"
    parent_ti: int
    templates: List[Symbol]
    symbols: List[Symbol] = field(default_factory=list)
    dependecies: Set[Type] = field(default_factory=set)
    types: Dict[str, Dict[int, "Struct"]] = field(default_factory=dict)

    @property
    def id(self) -> List[str]:
        if self.parent:
            return self.parent.id + [(self.index, self.name)]
        return [(self.index, self.name)]

    @property
    def depth(self) -> int:
        if self.parent:
            return self.parent.depth + 1
        return 0

    def __eq__(self, other):
        if self.__class__ != other.__class__:
            return
        return self.id == other.id and self.parent == other.parent

    def __hash__(self):
        return hash((hash(self.parent), tuple(self.id)))


@dataclass(eq=False)
class Namespace(Struct):
    ...


class TypeList:
    def __init__(self, context: Context):
        self.context = context
        self.global_types = dict()

    def build(self, symbols: Set[Symbol]):
        for symbol in symbols:
            self.convert_symbol_to_types(symbol)
    #

    def get_or_create_type(self, parent, parent_ti, types, names):
        class_name = names[0]
        if not class_name.name in types:
            types[class_name.name] = dict()

        # add struct if not already defined
        index = class_name.template_index
        struct_group = types[class_name.name]
        if not index in struct_group:
            parent_names = []
            if parent:
                parent_names = parent.id

            # calculate the full namespace name
            full_name = "::".join([x[1]
                                   for x in parent_names] + [class_name.name])
            if full_name in settings.NAMESPACES:
                if len(class_name.templates) > 0:
                    self.context.error(
                        f"namespace cannot have template arguments ({full_name})")
                if parent_ti != -1:
                    self.context.error(
                        f"namespace cannot have templated struct as parent ({full_name})")
                struct_group[index] = Namespace(
                    class_name.name, -1, parent, -1, [])
            else:
                struct_group[index] = Struct(
                    class_name.name, index, parent, parent_ti, class_name.templates)

        # get the struct and return if we are at the end
        struct = struct_group[index]
        if len(names) == 1:
            return struct

        # otherwise, continue to create struct for the children
        return self.get_or_create_type(struct, index, struct.types, names[1:])

    def get_or_create_type_from_name(self, parent, parent_ti, types, names):
        # create type from name
        if len(names) == 1:
            return None

        return self.get_or_create_type(parent, parent_ti, types, names[:-1])

    def build_type_structure(self, parent_struct, type):
        if not type:
            return

        def callback(type, depth):
            if not isinstance(type, NamedType):
                return

            self.get_or_create_type(None, -1, self.global_types, type.names)
            if parent_struct:
                parent_struct.dependecies.add(tuple([
                    (x.template_index, x.name)
                    for x in type.names
                ]))

        type.traverse(callback, depth=0)

    def convert_symbol_to_types(self, symbol):
        if not isinstance(symbol, Function):
            return

        struct = None
        if symbol.has_class:
            struct = self.get_or_create_type_from_name(
                None, -1, self.global_types, symbol.func_name.names)
            struct.symbols.append(symbol)

        self.build_type_structure(struct, symbol.return_type)
        for arg in symbol.argument_types:
            self.build_type_structure(struct, arg)

    def struct_dependencies(self, struct):
        deps = set()
        deps.update(struct.dependecies)
        deps.discard(tuple(struct.id))
        for child_group in struct.types.values():
            for child in child_group.values():
                deps.update(self.struct_dependencies(child))
        return deps

    def index_of_same(self, a, b):
        if len(a) >= len(b):
            return 0
        for i, a_value in enumerate(a):
            if a_value != b[i]:
                return i
        return len(a)

    def struct_get_child_group(self, parent, names):
        index = self.index_of_same(parent.id, names)
        if index <= 0:
            return None, None

        name = names[index]
        if not name[1] in parent.types:
            return None, None

        child = parent.types[name[1]]
        return child, name

    def function_get_dependencies(self, func):
        deps = set()
        def filter(x): return isinstance(x, NamedType)
        if func.return_type:
            func.return_type.dependencies(filter=filter, deps=deps)
        for arg_type in func.argument_types:
            if arg_type:
                arg_type.dependencies(filter=filter, deps=deps)
        return deps

    def get_struct_from_names(self, parent, names):
        name = names[0]
        types = self.global_types
        if parent:
            types = parent.types
        if not name[1] in types:
            return None

        if not name[0] in types[name[1]]:
            return None

        struct = types[name[1]][name[0]]
        if len(names) == 1:
            return struct
        return self.get_struct_from_names(struct, names[1:])

    def function_requires_move(self, function):
        deps = self.function_get_dependencies(function)
        dep_defined = []
        for dep in deps:
            dep_names = [(x.template_index, x.name) for x in dep.names]
            struct = self.get_struct_from_names(None, dep_names)
            assert struct
            dep_defined.append((struct in self.struct_export_set) or (
                struct in self.struct_forward_set))

        move_function = len(dep_defined) > 0 and any([not x for x in dep_defined])
        return move_function

    async def export_struct_function(self, builder, parent, indent, function, specialize):
        pad = "\t" * indent

        move_function = self.function_requires_move(function)
        if move_function:
            self.moved_functions.append((parent, function, specialize))
            if not isinstance(parent, Namespace):
                self.context.error(
                    f"moving function that is part of struct and not namespace ({function.label})")

        if not move_function:
            await builder.write_nonewline(f"{pad}/* {function.addr:08X} */ ")
            if function.template_index >= 0:
                await builder.write(f"/* {function.function_name(full_qualified_name=False)} */")
                await builder.write_nonewline(f"{pad}")

            await function.export_function_header(self, builder,
                                                  forward=True,
                                                  full_qualified_name=False,
                                                  specialize_templates=specialize)
            await builder.write(f";")

    async def export_struct(self, builder, struct_index, struct, indent):
        self.struct_export_set.add(struct)

        pad = "\t" * indent
        if isinstance(struct, Namespace):
            await builder.write(f"{pad}namespace {struct.name} {{")
        else:
            if struct_index >= 0:
                args = ", ".join([x.type() for x in struct.templates])
                await builder.write(f"{pad}/* {struct.name}<{args}> */")
                await builder.write(f"{pad}struct {struct.name}__template{struct_index} {{")
            else:
                await builder.write(f"{pad}struct {struct.name} {{")

        # export inner structs
        for inner_struct_group in struct.types.values():
            await self.export_struct_group(builder, struct, inner_struct_group, indent + 1)

        # group functions by name (this is essential grouping templated functions)
        names = defaultdict(list)
        for symbol in set(struct.symbols):
            names[symbol.func_name.last.name].append(symbol)

        symbols = list(names.items())
        symbols.sort(key=lambda x: min([z.addr for z in x[1]]))

        # export functions
        for name, functions in symbols:
            if functions[0].template_index >= 0:
                # export templated functions
                first_function = functions[0]
                move_function = self.function_requires_move(first_function)

                # export generic function header
                alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                args = [
                    f"{alphabet[i]}{struct.depth+1}"
                    for i in range(len(first_function.func_name.last.templates))
                ]
                typename_args = ", ".join([f"typename {x}" for x in args])
                await builder.write(f"{pad}\t/*          */ template <{typename_args}>")
                await builder.write_nonewline(f"{pad}\t/*          */ ")
                await first_function.export_function_header(self, builder,
                                                            forward=True,
                                                            full_qualified_name=False,
                                                            without_template=True,
                                                            specialize_templates=False,
                                                            comment_arguments=True)
                await builder.write(f";")

                for function in functions:
                    await self.export_struct_function(builder, struct, indent + 1, function, True)
                await builder.write(f"")
            else:
                # export normal functions
                for function in functions:
                    await self.export_struct_function(builder, struct, indent + 1, function, (struct_index >= 0))

        await builder.write(f"{pad}}};")
        await builder.write("")

    # struct group is a collection of struct with different tamplates
    async def export_struct_group(self, builder, parent, struct_group, indent):
        if len(struct_group) <= 0:
            return

        pad = "\t" * indent
        first_struct = struct_group[list(struct_group.keys())[0]]
        is_exported = (first_struct in self.struct_export_set)
        is_declared = (first_struct in self.struct_declare_set)
        is_forwarded = (first_struct in self.struct_forward_set)

        # only export the struct group the first time
        if is_exported or is_declared:
            # circular-dependency, try to add a forward reference
            if is_declared and not is_exported:
                # only add forward reference if this is the first time
                if not is_forwarded:
                    for struct_index, struct in struct_group.items():
                        if isinstance(struct, Namespace):
                            continue

                        self.struct_forward_set.add(struct)
                        if struct_index >= 0:
                            await builder.write(f"{pad}struct {struct.name}__template{struct_index};")
                        else:
                            await builder.write(f"{pad}struct {struct.name};")
            return

        # gather all dependecies
        dependecies = set()
        structs = list(set(struct_group.values()))
        structs.sort(key=lambda x: x.name, reverse = True)
        for struct in structs:
            self.struct_declare_set.add(struct)
            dependecies.update(self.struct_dependencies(struct))

        # export type dependecies for this group of structs
        for dep in dependecies:
            if parent:
                inner_struct_group, name = self.struct_get_child_group(
                    parent, dep)
                if not inner_struct_group:
                    continue
                if inner_struct_group == struct_group:
                    continue
                assert name[0] in inner_struct_group
                inner_struct = inner_struct_group[name[0]]
                await self.export_struct_group(builder, inner_struct.parent, inner_struct_group, indent)
            else:
                top_level = dep[0]
                if not top_level[1] in self.global_types:
                    continue
                inner_struct_group = self.global_types[top_level[1]]
                if inner_struct_group == struct_group:
                    continue
                assert top_level[0] in inner_struct_group
                inner_struct = inner_struct_group[top_level[0]]
                await self.export_struct_group(builder, inner_struct.parent, inner_struct_group, indent)

        if not (-1 in struct_group):
            # output a generic template for the struct group
            alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            args = [
                f"{alphabet[i]}{first_struct.depth}"
                for i in range(len(first_struct.templates))
            ]

            typename_args = ", ".join([f"typename {x}" for x in args])
            await builder.write(f"{pad}template <{typename_args}>")
            await builder.write(f"{pad}struct {first_struct.name} {{ }};")

        # export each individual struct in the struct group
        for index, struct in struct_group.items():
            await self.export_struct(builder, index, struct, indent)

    def has_types(self):
        return len(self.global_types) > 0

    async def export_namespace(self, builder, name, namespace, indent):
        symbols = namespace[0]
        children = namespace[1]
        pad = "\t" * indent
        await builder.write(f"{pad}namespace {name} {{")
        for child_name, child in children.items():
            await self.export_namespace(builder, child_name, child, indent + 1)

        for struct, function, specialize in symbols:
            await builder.write_nonewline(f"{pad}/* {function.addr:08X} */ ")
            await function.export_function_header(self, builder,
                                                  forward=True,
                                                  full_qualified_name=False,
                                                  specialize_templates=specialize)
            await builder.write(f";")

        await builder.write(f"{pad}}}")
        await builder.write(f"")

    async def export(self, builder: AsyncBuilder):
        self.struct_export_set = set()
        self.struct_declare_set = set()
        self.struct_forward_set = set()
        self.moved_functions = list()

        # export top-level functions
        groups = list(self.global_types.values())

        # TODO: BUG: The order here matters... there are cases when the move functions 
        # technique to resolve circular-dependecies fails. 
        # in functionvalue.cpp: 
        #   JGadget -> JStudio -> std OK
        #   JStudio -> JGadget -> std ERROR
        groups.sort(key=lambda x: x[next(iter(x.keys()))].name, reverse = True)
        for struct_group in groups:
            await self.export_struct_group(builder, None, struct_group, 0)

        # export function that was required to be moved to the end of the type list
        if self.moved_functions:
            def ddict():
                return (list(), defaultdict(ddict))

            # group functions by namespaces
            namespaces = ddict()
            for struct, function, specialize in self.moved_functions:
                parent = namespaces
                for i, name in struct.id:
                    parent = parent[1][name]
                namespace = "::".join([x[1] for x in struct.id])
                parent[0].append((struct, function, specialize))

            for name, namespace in namespaces[1].items():
                await self.export_namespace(builder, name, namespace, 0)
