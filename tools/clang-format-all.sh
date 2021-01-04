#!/bin/bash
echo "formatting src/*"
find ./src -iname *.h -o -iname *.cpp | xargs clang-format -i
echo "formatting libs/*"
find ./libs -iname *.h -o -iname *.cpp | xargs clang-format -i
echo "formatting include/*"
find ./include -iname *.h -o -iname *.cpp | xargs clang-format -i
echo "done"
