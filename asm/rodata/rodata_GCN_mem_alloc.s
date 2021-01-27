.include "macros.inc"
.section .rodata, "a"  # 0x803a21a8 - 0x803a2220

.global lbl_803A21A8
lbl_803A21A8:
.incbin "baserom.dol", 0x39F1A8, 0x38

.global lbl_803A21E0
lbl_803A21E0:
.incbin "baserom.dol", 0x39F1E0, 0x40

