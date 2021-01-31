.include "macros.inc"
.section .sdata2, "a"  # 0x804562a0 - 0x804562c0

.global lbl_804562A0
lbl_804562A0:
.incbin "baserom.dol", 0x3D5100, 0x8

.global lbl_804562A8
lbl_804562A8:
.incbin "baserom.dol", 0x3D5108, 0x8

.global lbl_804562B0
lbl_804562B0:
.incbin "baserom.dol", 0x3D5110, 0x4

.global lbl_804562B4
lbl_804562B4:
.incbin "baserom.dol", 0x3D5114, 0x4

.global lbl_804562B8
lbl_804562B8:
.incbin "baserom.dol", 0x3D5118, 0x8

