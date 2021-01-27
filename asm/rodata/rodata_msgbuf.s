.include "macros.inc"
.section .rodata, "a"  # 0x803a26e0 - 0x803a2700

.global lbl_803A26E0
lbl_803A26E0:
.incbin "baserom.dol", 0x39F6E0, 0x20

