.include "macros.inc"
.section .sdata2, "a"  # 0x804561c8 - 0x804561f0

.global lbl_804561C8
lbl_804561C8:
.incbin "baserom.dol", 0x3D5028, 0x4

.global lbl_804561CC
lbl_804561CC:
.incbin "baserom.dol", 0x3D502C, 0x4

.global lbl_804561D0
lbl_804561D0:
.incbin "baserom.dol", 0x3D5030, 0x8

.global lbl_804561D8
lbl_804561D8:
.incbin "baserom.dol", 0x3D5038, 0x8

.global lbl_804561E0
lbl_804561E0:
.incbin "baserom.dol", 0x3D5040, 0x8

.global lbl_804561E8
lbl_804561E8:
.incbin "baserom.dol", 0x3D5048, 0x4

.global lbl_804561EC
lbl_804561EC:
.incbin "baserom.dol", 0x3D504C, 0x4

