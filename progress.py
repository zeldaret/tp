import os

## Symbol name analysis ##

cmd_base = "nm build/dolzel2/main.elf | awk '{print $3}' | grep '^[^_].\\{4\\}' | uniq"
cmd_count = "| wc -l"
cmd_filter_nonfuncs = "| grep -v 'lbl'"
cmd_undocumented_funcs = " | grep '_NS_\\|func_'"
cmd_mangled_funcs = "| grep -E '(__([0-9]+[a-zA-Z0-9_]+)?F)'"

#
total_syms = os.popen(cmd_base + cmd_filter_nonfuncs + cmd_count).read()
i_total = int(total_syms, 10)

cpp_syms = os.popen(cmd_base + cmd_mangled_funcs + cmd_count).read()
i_cpp = int(cpp_syms, 10)

#
print()
print("Total Functions: %s" % i_total);
print("Functions with C++ names: %s (%f%%)" % (i_cpp, 100 * i_cpp / i_total))
print()
