.include "macros.inc"
.section .sdata2, "a"  # 0x80456560 - 0x80456580

.global lbl_80456560
lbl_80456560:
.incbin "baserom.dol", 0x3D53C0, 0x8

.global lbl_80456568
lbl_80456568:
.incbin "baserom.dol", 0x3D53C8, 0x8

.global lbl_80456570
lbl_80456570:
.incbin "baserom.dol", 0x3D53D0, 0x8

.global lbl_80456578
lbl_80456578:
.incbin "baserom.dol", 0x3D53D8, 0x8

