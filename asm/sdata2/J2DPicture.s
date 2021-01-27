.include "macros.inc"
.section .sdata2, "a"  # 0x80456260 - 0x80456280

.global lbl_80456260
lbl_80456260:
.incbin "baserom.dol", 0x3D50C0, 0x8

.global lbl_80456268
lbl_80456268:
.incbin "baserom.dol", 0x3D50C8, 0x4

.global lbl_8045626C
lbl_8045626C:
.incbin "baserom.dol", 0x3D50CC, 0x4

.global lbl_80456270
lbl_80456270:
.incbin "baserom.dol", 0x3D50D0, 0x8

.global lbl_80456278
lbl_80456278:
.incbin "baserom.dol", 0x3D50D8, 0x4

.global lbl_8045627C
lbl_8045627C:
.incbin "baserom.dol", 0x3D50DC, 0x4

