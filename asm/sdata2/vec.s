.include "macros.inc"
.section .sdata2, "a"  # 0x80456540 - 0x80456550

.global lbl_80456540
lbl_80456540:
.incbin "baserom.dol", 0x3D53A0, 0x4

.global lbl_80456544
lbl_80456544:
.incbin "baserom.dol", 0x3D53A4, 0x4

.global lbl_80456548
lbl_80456548:
.incbin "baserom.dol", 0x3D53A8, 0x4

.global lbl_8045654C
lbl_8045654C:
.incbin "baserom.dol", 0x3D53AC, 0x4

