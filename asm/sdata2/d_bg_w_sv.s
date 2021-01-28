.include "macros.inc"
.section .sdata2, "a"  # 0x80452758 - 0x80452760

.global lbl_80452758
lbl_80452758:
.incbin "baserom.dol", 0x3D15B8, 0x4

.global lbl_8045275C
lbl_8045275C:
.incbin "baserom.dol", 0x3D15BC, 0x4

