.include "macros.inc"
.section .sdata2, "a"  # 0x80456508 - 0x80456528

.global lbl_80456508
lbl_80456508:
.incbin "baserom.dol", 0x3D5368, 0x4

.global lbl_8045650C
lbl_8045650C:
.incbin "baserom.dol", 0x3D536C, 0x4

.global lbl_80456510
lbl_80456510:
.incbin "baserom.dol", 0x3D5370, 0x4

.global lbl_80456514
lbl_80456514:
.incbin "baserom.dol", 0x3D5374, 0x4

.global lbl_80456518
lbl_80456518:
.incbin "baserom.dol", 0x3D5378, 0x4

.global lbl_8045651C
lbl_8045651C:
.incbin "baserom.dol", 0x3D537C, 0x4

.global lbl_80456520
lbl_80456520:
.incbin "baserom.dol", 0x3D5380, 0x8

