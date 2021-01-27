.include "macros.inc"
.section .rodata, "a"  # 0x803a1e30 - 0x803a1e98

.global lbl_803A1E30
lbl_803A1E30:
.incbin "baserom.dol", 0x39EE30, 0x20

.global lbl_803A1E50
lbl_803A1E50:
.incbin "baserom.dol", 0x39EE50, 0xC

.global lbl_803A1E5C
lbl_803A1E5C:
.incbin "baserom.dol", 0x39EE5C, 0x30

.global lbl_803A1E8C
lbl_803A1E8C:
.incbin "baserom.dol", 0x39EE8C, 0xC

