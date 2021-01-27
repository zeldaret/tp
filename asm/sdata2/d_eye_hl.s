.include "macros.inc"
.section .sdata2, "a"  # 0x80452c10 - 0x80452c18

.global lbl_80452C10
lbl_80452C10:
.incbin "baserom.dol", 0x3D1A70, 0x4

.global lbl_80452C14
lbl_80452C14:
.incbin "baserom.dol", 0x3D1A74, 0x4

