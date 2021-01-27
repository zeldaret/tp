.include "macros.inc"
.section .sdata2, "a"  # 0x80455778 - 0x80455788

.global lbl_80455778
lbl_80455778:
.incbin "baserom.dol", 0x3D45D8, 0x4

.global lbl_8045577C
lbl_8045577C:
.incbin "baserom.dol", 0x3D45DC, 0x4

.global lbl_80455780
lbl_80455780:
.incbin "baserom.dol", 0x3D45E0, 0x4

.global lbl_80455784
lbl_80455784:
.incbin "baserom.dol", 0x3D45E4, 0x4

