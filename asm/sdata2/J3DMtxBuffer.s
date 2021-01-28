.include "macros.inc"
.section .sdata2, "a"  # 0x80456420 - 0x80456428

.global lbl_80456420
lbl_80456420:
.incbin "baserom.dol", 0x3D5280, 0x4

.global lbl_80456424
lbl_80456424:
.incbin "baserom.dol", 0x3D5284, 0x4

