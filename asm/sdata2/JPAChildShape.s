.include "macros.inc"
.section .sdata2, "a"  # 0x80455308 - 0x80455310

.global lbl_80455308
lbl_80455308:
.incbin "baserom.dol", 0x3D4168, 0x4

.global lbl_8045530C
lbl_8045530C:
.incbin "baserom.dol", 0x3D416C, 0x4

