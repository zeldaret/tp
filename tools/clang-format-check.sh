#!/bin/bash

clangFormatTargets=$(find . -type f -regex '.*\.\(cpp\|hpp\|h\|cc\|cxx\)')

for inputFile in $clangFormatTargets
do
    clang-format-10 --dry-run --Werror -style=file $inputFile
    if [ $? != 0 ] ; then
        exit 1
    fi
done
