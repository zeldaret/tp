.include "macros.inc"
.section .sdata2, "a"  # 0x80456528 - 0x80456540

.global lbl_80456528
lbl_80456528:
.incbin "baserom.dol", 0x3D5388, 0x4

.global lbl_8045652C
lbl_8045652C:
.incbin "baserom.dol", 0x3D538C, 0x4

.global lbl_80456530
lbl_80456530:
.incbin "baserom.dol", 0x3D5390, 0x4

.global lbl_80456534
lbl_80456534:
.incbin "baserom.dol", 0x3D5394, 0x4

.global lbl_80456538
lbl_80456538:
.incbin "baserom.dol", 0x3D5398, 0x4

.global lbl_8045653C
lbl_8045653C:
.incbin "baserom.dol", 0x3D539C, 0x4

