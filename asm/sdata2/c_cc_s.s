.include "macros.inc"
.section .sdata2, "a"  # 0x80455038 - 0x80455070

.global lbl_80455038
lbl_80455038:
.incbin "baserom.dol", 0x3D3E98, 0x4

.global lbl_8045503C
lbl_8045503C:
.incbin "baserom.dol", 0x3D3E9C, 0x4

.global lbl_80455040
lbl_80455040:
.incbin "baserom.dol", 0x3D3EA0, 0x4

.global lbl_80455044
lbl_80455044:
.incbin "baserom.dol", 0x3D3EA4, 0x4

.global lbl_80455048
lbl_80455048:
.incbin "baserom.dol", 0x3D3EA8, 0x8

.global lbl_80455050
lbl_80455050:
.incbin "baserom.dol", 0x3D3EB0, 0x8

.global lbl_80455058
lbl_80455058:
.incbin "baserom.dol", 0x3D3EB8, 0x8

.global lbl_80455060
lbl_80455060:
.incbin "baserom.dol", 0x3D3EC0, 0x8

.global lbl_80455068
lbl_80455068:
.incbin "baserom.dol", 0x3D3EC8, 0x8

