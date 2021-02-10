#!/bin/bash

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -D -bbinary -EB -mpowerpc -M gekko"
OPTIONS="--start-address=$(($1)) --stop-address=$(($2+0x4))"
$OBJDUMP $OPTIONS baserom.dol > baserom.dump
$OBJDUMP $OPTIONS build/dolzel2/main.dol > main.dump
diff -u baserom.dump main.dump
