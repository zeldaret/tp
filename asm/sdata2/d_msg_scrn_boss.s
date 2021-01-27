.include "macros.inc"
.section .sdata2, "a"  # 0x80454bb0 - 0x80454bb8

.global lbl_80454BB0
lbl_80454BB0:
.incbin "baserom.dol", 0x3D3A10, 0x4

.global lbl_80454BB4
lbl_80454BB4:
.incbin "baserom.dol", 0x3D3A14, 0x4

