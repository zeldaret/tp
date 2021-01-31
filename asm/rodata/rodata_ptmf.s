.include "macros.inc"
.section .rodata, "a"  # 0x803a2180 - 0x803a2190

.global lbl_803A2180
lbl_803A2180:
.incbin "baserom.dol", 0x39F180, 0x10

