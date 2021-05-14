#!/bin/bash

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -D -EB -mpowerpc -M gekko"
OPTIONS="--start-address=$(($1)) --stop-address=$(($2+0x4))"
$OBJDUMP $OPTIONS expected/build/dolzel2/main.elf > baserom.dump
$OBJDUMP $OPTIONS build/dolzel2/main.elf > main.dump
diff -u baserom.dump main.dump
