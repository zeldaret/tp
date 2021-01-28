.include "macros.inc"
.section .sdata2, "a"  # 0x80456618 - 0x80456650

.global lbl_80456618
lbl_80456618:
.incbin "baserom.dol", 0x3D5478, 0x4

.global lbl_8045661C
lbl_8045661C:
.incbin "baserom.dol", 0x3D547C, 0x4

.global lbl_80456620
lbl_80456620:
.incbin "baserom.dol", 0x3D5480, 0x8

.global lbl_80456628
lbl_80456628:
.incbin "baserom.dol", 0x3D5488, 0x8

.global lbl_80456630
lbl_80456630:
.incbin "baserom.dol", 0x3D5490, 0x8

.global lbl_80456638
lbl_80456638:
.incbin "baserom.dol", 0x3D5498, 0x8

.global lbl_80456640
lbl_80456640:
.incbin "baserom.dol", 0x3D54A0, 0x8

.global lbl_80456648
lbl_80456648:
.incbin "baserom.dol", 0x3D54A8, 0x8

