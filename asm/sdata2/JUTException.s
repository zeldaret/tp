.include "macros.inc"
.section .sdata2, "a"  # 0x80456050 - 0x80456060

.global lbl_80456050
lbl_80456050:
.incbin "baserom.dol", 0x3D4EB0, 0x4

.global lbl_80456054
lbl_80456054:
.incbin "baserom.dol", 0x3D4EB4, 0x4

.global lbl_80456058
lbl_80456058:
.incbin "baserom.dol", 0x3D4EB8, 0x8

