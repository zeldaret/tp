.include "macros.inc"
.section .sdata2, "a"  # 0x80455f68 - 0x80455f98

.global lbl_80455F68
lbl_80455F68:
.incbin "baserom.dol", 0x3D4DC8, 0x4

.global lbl_80455F6C
lbl_80455F6C:
.incbin "baserom.dol", 0x3D4DCC, 0x4

.global lbl_80455F70
lbl_80455F70:
.incbin "baserom.dol", 0x3D4DD0, 0x8

.global lbl_80455F78
lbl_80455F78:
.incbin "baserom.dol", 0x3D4DD8, 0x8

.global lbl_80455F80
lbl_80455F80:
.incbin "baserom.dol", 0x3D4DE0, 0x8

.global lbl_80455F88
lbl_80455F88:
.incbin "baserom.dol", 0x3D4DE8, 0x8

.global lbl_80455F90
lbl_80455F90:
.incbin "baserom.dol", 0x3D4DF0, 0x8

