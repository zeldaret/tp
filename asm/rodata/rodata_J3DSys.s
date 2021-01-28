.include "macros.inc"
.section .rodata, "a"  # 0x803a1df8 - 0x803a1e30

.global lbl_803A1DF8
lbl_803A1DF8:
.incbin "baserom.dol", 0x39EDF8, 0x10

.global lbl_803A1E08
lbl_803A1E08:
.incbin "baserom.dol", 0x39EE08, 0x10

.global lbl_803A1E18
lbl_803A1E18:
.incbin "baserom.dol", 0x39EE18, 0x18

