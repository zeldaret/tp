.include "macros.inc"
.section .sdata2, "a"  # 0x80455278 - 0x80455290

.global lbl_80455278
lbl_80455278:
.incbin "baserom.dol", 0x3D40D8, 0x4

.global lbl_8045527C
lbl_8045527C:
.incbin "baserom.dol", 0x3D40DC, 0x4

.global lbl_80455280
lbl_80455280:
.incbin "baserom.dol", 0x3D40E0, 0x4

.global lbl_80455284
lbl_80455284:
.incbin "baserom.dol", 0x3D40E4, 0x4

.global lbl_80455288
lbl_80455288:
.incbin "baserom.dol", 0x3D40E8, 0x8

