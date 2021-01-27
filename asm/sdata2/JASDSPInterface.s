.include "macros.inc"
.section .sdata2, "a"  # 0x80455748 - 0x80455760

.global lbl_80455748
lbl_80455748:
.incbin "baserom.dol", 0x3D45A8, 0x4

.global lbl_8045574C
lbl_8045574C:
.incbin "baserom.dol", 0x3D45AC, 0x8

.global lbl_80455754
lbl_80455754:
.incbin "baserom.dol", 0x3D45B4, 0xC

