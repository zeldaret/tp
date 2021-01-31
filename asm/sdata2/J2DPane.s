.include "macros.inc"
.section .sdata2, "a"  # 0x804561f0 - 0x80456220

.global lbl_804561F0
lbl_804561F0:
.incbin "baserom.dol", 0x3D5050, 0x4

.global lbl_804561F4
lbl_804561F4:
.incbin "baserom.dol", 0x3D5054, 0x4

.global lbl_804561F8
lbl_804561F8:
.incbin "baserom.dol", 0x3D5058, 0x8

.global lbl_80456200
lbl_80456200:
.incbin "baserom.dol", 0x3D5060, 0x8

.global lbl_80456208
lbl_80456208:
.incbin "baserom.dol", 0x3D5068, 0x4

.global lbl_8045620C
lbl_8045620C:
.incbin "baserom.dol", 0x3D506C, 0x4

.global lbl_80456210
lbl_80456210:
.incbin "baserom.dol", 0x3D5070, 0x4

.global lbl_80456214
lbl_80456214:
.incbin "baserom.dol", 0x3D5074, 0x4

.global lbl_80456218
lbl_80456218:
.incbin "baserom.dol", 0x3D5078, 0x8

