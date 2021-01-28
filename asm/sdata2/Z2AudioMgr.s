.include "macros.inc"
.section .sdata2, "a"  # 0x80455f58 - 0x80455f68

.global lbl_80455F58
lbl_80455F58:
.incbin "baserom.dol", 0x3D4DB8, 0x4

.global lbl_80455F5C
lbl_80455F5C:
.incbin "baserom.dol", 0x3D4DBC, 0x4

.global lbl_80455F60
lbl_80455F60:
.incbin "baserom.dol", 0x3D4DC0, 0x8

