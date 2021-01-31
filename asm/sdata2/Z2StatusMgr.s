.include "macros.inc"
.section .sdata2, "a"  # 0x80455a18 - 0x80455a38

.global lbl_80455A18
lbl_80455A18:
.incbin "baserom.dol", 0x3D4878, 0x4

.global lbl_80455A1C
lbl_80455A1C:
.incbin "baserom.dol", 0x3D487C, 0x4

.global lbl_80455A20
lbl_80455A20:
.incbin "baserom.dol", 0x3D4880, 0x4

.global lbl_80455A24
lbl_80455A24:
.incbin "baserom.dol", 0x3D4884, 0x4

.global lbl_80455A28
lbl_80455A28:
.incbin "baserom.dol", 0x3D4888, 0x8

.global lbl_80455A30
lbl_80455A30:
.incbin "baserom.dol", 0x3D4890, 0x4

.global lbl_80455A34
lbl_80455A34:
.incbin "baserom.dol", 0x3D4894, 0x4

