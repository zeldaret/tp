.include "macros.inc"
.section .rodata, "a"  # 0x803a20b0 - 0x803a20e8

.global lbl_803A20B0
lbl_803A20B0:
.incbin "baserom.dol", 0x39F0B0, 0x38

