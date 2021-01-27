.include "macros.inc"
.section .sdata2, "a"  # 0x80455018 - 0x80455038

.global lbl_80455018
lbl_80455018:
.incbin "baserom.dol", 0x3D3E78, 0x4

.global lbl_8045501C
lbl_8045501C:
.incbin "baserom.dol", 0x3D3E7C, 0x4

.global lbl_80455020
lbl_80455020:
.incbin "baserom.dol", 0x3D3E80, 0x8

.global lbl_80455028
lbl_80455028:
.incbin "baserom.dol", 0x3D3E88, 0x8

.global lbl_80455030
lbl_80455030:
.incbin "baserom.dol", 0x3D3E90, 0x8

