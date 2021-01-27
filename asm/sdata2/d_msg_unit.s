.include "macros.inc"
.section .sdata2, "a"  # 0x80454b40 - 0x80454b58

.global lbl_80454B40
lbl_80454B40:
.incbin "baserom.dol", 0x3D39A0, 0x4

.global lbl_80454B44
lbl_80454B44:
.incbin "baserom.dol", 0x3D39A4, 0x4

.global lbl_80454B48
lbl_80454B48:
.incbin "baserom.dol", 0x3D39A8, 0x8

.global lbl_80454B50
lbl_80454B50:
.incbin "baserom.dol", 0x3D39B0, 0x8

