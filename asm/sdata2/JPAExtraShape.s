.include "macros.inc"
.section .sdata2, "a"  # 0x804552e0 - 0x80455308

.global lbl_804552E0
lbl_804552E0:
.incbin "baserom.dol", 0x3D4140, 0x8

.global lbl_804552E8
lbl_804552E8:
.incbin "baserom.dol", 0x3D4148, 0x8

.global lbl_804552F0
lbl_804552F0:
.incbin "baserom.dol", 0x3D4150, 0x4

.global lbl_804552F4
lbl_804552F4:
.incbin "baserom.dol", 0x3D4154, 0x4

.global lbl_804552F8
lbl_804552F8:
.incbin "baserom.dol", 0x3D4158, 0x4

.global lbl_804552FC
lbl_804552FC:
.incbin "baserom.dol", 0x3D415C, 0x4

.global lbl_80455300
lbl_80455300:
.incbin "baserom.dol", 0x3D4160, 0x8

