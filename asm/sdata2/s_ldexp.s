.include "macros.inc"
.section .sdata2, "a"  # 0x80456b10 - 0x80456b38

.global lbl_80456B10
lbl_80456B10:
.incbin "baserom.dol", 0x3D5970, 0x8

.global lbl_80456B18
lbl_80456B18:
.incbin "baserom.dol", 0x3D5978, 0x8

.global lbl_80456B20
lbl_80456B20:
.incbin "baserom.dol", 0x3D5980, 0x8

.global lbl_80456B28
lbl_80456B28:
.incbin "baserom.dol", 0x3D5988, 0x8

.global lbl_80456B30
lbl_80456B30:
.incbin "baserom.dol", 0x3D5990, 0x8

