#!/bin/bash
if [[ -z "${CLANG_FORMAT_EXE}" ]]; then
  CF="clang-format-10"
else
  CF="${CLANG_FORMAT_EXE}"
fi

echo "formatting src/*"
find ./src -iname "*.h" -o -iname "*.cpp" | xargs $CF -i
echo "formatting libs/*"
find ./libs -iname "*.h" -o -iname "*.cpp" | xargs $CF -i
echo "formatting include/*"
find ./include -iname "*.h" -o -iname "*.cpp" | xargs $CF -i
echo "done"
