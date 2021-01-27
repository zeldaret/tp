.include "macros.inc"
.section .rodata, "a"  # 0x803a23b0 - 0x803a2538

.global lbl_803A23B0
lbl_803A23B0:
.incbin "baserom.dol", 0x39F3B0, 0x108

.global lbl_803A24B8
lbl_803A24B8:
.incbin "baserom.dol", 0x39F4B8, 0x80

