.include "macros.inc"
.section .sdata2, "a"  # 0x80455f98 - 0x80455fa8

.global lbl_80455F98
lbl_80455F98:
.incbin "baserom.dol", 0x3D4DF8, 0x8

.global lbl_80455FA0
lbl_80455FA0:
.incbin "baserom.dol", 0x3D4E00, 0x8

