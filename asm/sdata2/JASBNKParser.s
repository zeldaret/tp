.include "macros.inc"
.section .sdata2, "a"  # 0x80455658 - 0x80455680

.global lbl_80455658
lbl_80455658:
.incbin "baserom.dol", 0x3D44B8, 0x8

.global lbl_80455660
lbl_80455660:
.incbin "baserom.dol", 0x3D44C0, 0x8

.global lbl_80455668
lbl_80455668:
.incbin "baserom.dol", 0x3D44C8, 0x8

.global lbl_80455670
lbl_80455670:
.incbin "baserom.dol", 0x3D44D0, 0x4

.global lbl_80455674
lbl_80455674:
.incbin "baserom.dol", 0x3D44D4, 0x4

.global lbl_80455678
lbl_80455678:
.incbin "baserom.dol", 0x3D44D8, 0x8

