.include "macros.inc"
.section .sdata2, "a"  # 0x804562d8 - 0x804562f8

.global lbl_804562D8
lbl_804562D8:
.incbin "baserom.dol", 0x3D5138, 0x8

.global lbl_804562E0
lbl_804562E0:
.incbin "baserom.dol", 0x3D5140, 0x8

.global lbl_804562E8
lbl_804562E8:
.incbin "baserom.dol", 0x3D5148, 0x8

.global lbl_804562F0
lbl_804562F0:
.incbin "baserom.dol", 0x3D5150, 0x8

