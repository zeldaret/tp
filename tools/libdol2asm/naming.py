import libdemangle
import re

from collections import defaultdict

from .data import *
from .types import ConstType, ReferenceType, PointerType, ArrayType, ClassName, NamedType, EmptyType, ValueType
from . import util

integer_types = {
    ("char", True, False): U8,
    ("short", True, False): U16,
    ("long", True, False): U32,
    ("long long", True, False): U64,
    ("char", False, True): S8,
    ("char", False, False): CHAR,
    ("short", False, True): S16,
    ("short", False, False): S16,
    ("long", False, True): S32,
    ("long", False, False): S32,
    ("long long", False, True): S64,
    ("long long", False, False): S64,
    ("int", False, False): INT,
    ("int", True, False): UINT,
    ("int", False, True): SINT,
}

type_map = {
    "void": VOID,
    "bool": BOOL,
    "float": F32,
    "double": F64,
    "f32": F32,
    "f64": F64,
    "...": VARIADIC,
}

special_func_return_types = {
    'ct': None,
    'dt': None,

    'eq': BOOL,
    'ne': BOOL,
    'lt': BOOL,
    'gt': BOOL,
    'dla': VOID,
    'nwa': VOID_PTR,
    'dl': VOID,
    'nw': VOID_PTR,
}


def class_name_from(name):
    return ClassName(name.name, [
        type_from_demangled_param(param)
        for param in name.template_types
    ])


def named_type_from_qulified_name(qname):
    if not qname:
        return None
    return NamedType([
        class_name_from(part)
        for part in qname.parts
    ])


def type_from_demangled_param(param):
    if not param:
        return None

    if isinstance(param, libdemangle.FuncParam):
        return FunctionType(
            inner=type_from_demangled_param(param.inner_type),
            return_type=type_from_demangled_param(param.ret_type),
            argument_types=[type_from_demangled_param(
                arg) for arg in param.params],
            inner_class=named_type_from_qulified_name(param.class_name)
        )
    elif isinstance(param, libdemangle.ArrayParam):
        return ArrayType(
            base=type_from_demangled_param(param.base_type),
            inner=type_from_demangled_param(param.inner_type),
            sizes=param.sizes
        )
    elif isinstance(param, libdemangle.IntegerParam):
        return ValueType(param.value)
    elif isinstance(param, libdemangle.ConstParam):
        return ConstType(of=type_from_demangled_param(param.base_type))
    elif isinstance(param, libdemangle.PointerParam):
        return PointerType(of=type_from_demangled_param(param.base_type))
    elif isinstance(param, libdemangle.ReferenceParam):
        return ReferenceType(of=type_from_demangled_param(param.base_type))

    if not param.name:
        # used for making types like: A (*)[3] easier to work with.
        # the will be constructed like this: A (EmptyType*)[3]
        type = EmptyType()
    elif param.name.is_simple():
        integer_key = (param.name.name, param.is_unsigned, param.is_signed)
        if integer_key in integer_types:
            type = integer_types[integer_key]
        elif param.name.name in type_map:
            assert not param.is_unsigned and not param.is_signed
            type = type_map[param.name.name]
        elif not libdemangle.is_builtin_type(param.name):
            type = NamedType([class_name_from(param.name.first)])
    else:
        type = named_type_from_qulified_name(param.name)

    if not type:
        return None

    assert param.is_const == False
    assert param.pointer_lvl == 0
    assert param.is_ref == False

    return type

dollar_re = re.compile(r'(\w+)\$([0-9]+)')

def nameFix(context, label_collisions, reference_collisions, dollar_names, symbol):
    util.escape_name(symbol.identifier)

    if symbol.identifier.name and not symbol.identifier.override_name:
        match = dollar_re.fullmatch(symbol.identifier.name)
        if match and symbol.is_static:
            if dollar_names[match.group(1)] == 1:
                symbol.identifier.override_name = match.group(1)
            else:
                symbol.identifier.override_name = f"{match.group(1)}_{match.group(2)}"

    # TODO: Support demangled names for variables
    """
    if symbol.identifier.name and (not "@" in symbol.identifier.name) and not isinstance(symbol, Function):
        try:
            name = symbol.identifier.name
            p = libdemangle.ParseCtx(name)
            p.demangle_variable()

            if len(p.to_str()) > 0 and p.to_str() != name:
                #context.debug(p.to_str())

                types = [
                    type_from_demangled_param(x)
                    for x in p.demangled
                ]

                valid = True
                for type in types:
                    if type == None:
                        valid = False
                        break

                if valid: 
                    symbol.demangled_name = named_type_from_qulified_name(p.full_name)
        except Exception as e:
            context.error(f"demangle error: '{name}'")
            context.error(f"\t{e}")
            context.error(f"\t{p.func_name}")
            context.error(f"\t{p.class_name}")
            context.error(f"\t{p.to_str()}")
    """
    
    if (symbol.identifier.name and (not "@" in symbol.identifier.name) and isinstance(symbol, Function)):
        name = symbol.identifier.name
        try:
            p = libdemangle.ParseCtx(name)
            p.demangle()

            if len(p.to_str()) > 0 and p.to_str() != name:
                types = [
                    type_from_demangled_param(x)
                    for x in p.demangled
                ]

                valid = True
                for type in types:
                    if type == None:
                        valid = False
                        break

                if valid:
                    symbol.func_name = named_type_from_qulified_name(
                        p.full_name)
                    symbol.func_is_const = p.is_const
                    symbol.special_func_name = p.special_func_name
                    symbol.argument_types = [x for x in types if x != VOID]

                    if symbol.special_func_name in special_func_return_types:
                        return_type = special_func_return_types[symbol.special_func_name]
                        if symbol.return_type:
                            symbol.return_type = return_type
                        else:
                            symbol.return_type = return_type

                    #if not symbol.uses_class_template:
                    #    symbol.identifier.is_name_safe = True
                else:
                    context.warning(
                        f"one of the demangled parameters could not be converted to data-type.")
                    context.warning(
                        [x[1] for x in zip(types, p.demangled) if not x[0]])

        except Exception as e:
            context.error(f"demangle error: '{name}'")
            context.error(f"\t{e}")
            context.error(f"\t{p.func_name}")
            context.error(f"\t{p.class_name}")
            context.error(f"\t{p.to_str()}")

    if not symbol.is_static or isinstance(symbol, StringBase):
        label_collisions[symbol.identifier.label] += 1
        reference_collisions[symbol.identifier.reference] += 1


def nameCollision(context, label_collisions, reference_collisions, parent_name, symbol):
    if not symbol.is_static or isinstance(symbol, StringBase):
        nice_name = parent_name.replace("/", "_").replace(".", "_").replace("-", "_")
        if isinstance(symbol, StringBase) and symbol._module != 0:
            symbol.identifier.override_name = nice_name + "__" + symbol.identifier.label
        elif label_collisions[symbol.identifier.label] > 1 or reference_collisions[symbol.identifier.reference] > 1:
            symbol.identifier.override_name = nice_name + "__" + symbol.identifier.label


def execute(context, libraries):
    label_collisions = defaultdict(int)
    reference_collisions = defaultdict(int)

    for lib in libraries:
        for tu in lib.translation_units.values():
            dollar_names = defaultdict(int)
            for sec in tu.sections.values():
                for symbol in sec.symbols:
                    if not symbol.identifier.name:
                        continue
                    match = dollar_re.fullmatch(symbol.identifier.name)
                    if not match:
                        continue
                    dollar_names[match.group(1)] += 1


            for sec in tu.sections.values():
                for symbol in sec.symbols:
                    nameFix(context, label_collisions,
                            reference_collisions, dollar_names, symbol)

    for lib in libraries:
        for tu in lib.translation_units.values():
            for sec in tu.sections.values():
                for symbol in sec.symbols:
                    nameCollision(context, label_collisions,
                                  reference_collisions, tu.name, symbol)

    types = defaultdict(lambda: defaultdict(list))
    names = defaultdict(list)

    def add_named_type(named, index=0):
        raw_names = tuple([x.name for x in named.names])
        for i in range(len(raw_names) - index):
            types[i][raw_names[0:i+1]].append(named.names[0:i+1])

    all_named_types = list()
    for lib in libraries:
        for tu in lib.translation_units.values():
            for section in tu.sections.values():
                for symbol in section.symbols:
                    if isinstance(symbol, Function):
                        if symbol.is_demangled():
                            add_named_type(symbol.func_name, 1)
                            raw_names = tuple(
                                [x.name for x in symbol.func_name.names])
                            names[raw_names].append(symbol)

                        if symbol.return_type:
                            symbol.return_type.collect(
                                filter=lambda x: isinstance(x, NamedType),
                                collection=all_named_types)
                        for arg_type in symbol.argument_types:
                            arg_type.collect(
                                filter=lambda x: isinstance(x, NamedType),
                                collection=all_named_types)

    for named_type in all_named_types:
        add_named_type(named_type)

    # generate template_index for named_type with templates.
    for count, tns in types.items():
        for type, ns in tns.items():
            if ns[0][-1].templates:
                #context.debug("Found Type Match:")
                groups = defaultdict(list)
                for s in ns:
                    groups[tuple(s)].append(s)
                for i, ss in enumerate(groups):
                    # assign the template index to all python object of this type
                    for s in groups[ss]:
                        s[-1].template_index = i
                    #context.debug(f"\t{i:<3}{'::'.join([x.to_str() for x in groups[ss][0]])}")

    # generate template_index for functions.
    for name, functions in names.items():
        if functions[0].func_name.last.templates:
            #context.debug("Found Templated Function(s):")
            functions.sort(key=lambda x: x.addr)
            for i, function in enumerate(functions):
                function.template_index = i
                function.func_name.last.template_index = i
                # context.debug(f"\t{function.func_name.to_str(without_template=True)}")
