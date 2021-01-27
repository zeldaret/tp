.include "macros.inc"
.section .sdata2, "a"  # 0x80455510 - 0x80455520

.global lbl_80455510
lbl_80455510:
.incbin "baserom.dol", 0x3D4370, 0x4

.global lbl_80455514
lbl_80455514:
.incbin "baserom.dol", 0x3D4374, 0x4

.global lbl_80455518
lbl_80455518:
.incbin "baserom.dol", 0x3D4378, 0x8

