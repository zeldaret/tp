.include "macros.inc"
.section .sdata2, "a"  # 0x80455858 - 0x80455870

.global lbl_80455858
lbl_80455858:
.incbin "baserom.dol", 0x3D46B8, 0x4

.global lbl_8045585C
lbl_8045585C:
.incbin "baserom.dol", 0x3D46BC, 0x4

.global lbl_80455860
lbl_80455860:
.incbin "baserom.dol", 0x3D46C0, 0x4

.global lbl_80455864
lbl_80455864:
.incbin "baserom.dol", 0x3D46C4, 0x4

.global lbl_80455868
lbl_80455868:
.incbin "baserom.dol", 0x3D46C8, 0x8

