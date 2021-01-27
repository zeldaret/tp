.include "macros.inc"
.section .sdata2, "a"  # 0x80455648 - 0x80455658

.global lbl_80455648
lbl_80455648:
.incbin "baserom.dol", 0x3D44A8, 0x4

.global lbl_8045564C
lbl_8045564C:
.incbin "baserom.dol", 0x3D44AC, 0x4

.global lbl_80455650
lbl_80455650:
.incbin "baserom.dol", 0x3D44B0, 0x8

