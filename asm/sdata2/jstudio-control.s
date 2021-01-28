.include "macros.inc"
.section .sdata2, "a"  # 0x80455458 - 0x80455460

.global lbl_80455458
lbl_80455458:
.incbin "baserom.dol", 0x3D42B8, 0x4

.global lbl_8045545C
lbl_8045545C:
.incbin "baserom.dol", 0x3D42BC, 0x4

