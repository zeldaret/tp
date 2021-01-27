.include "macros.inc"
.section .sdata2, "a"  # 0x80456410 - 0x80456418

.global lbl_80456410
lbl_80456410:
.incbin "baserom.dol", 0x3D5270, 0x4

.global lbl_80456414
lbl_80456414:
.incbin "baserom.dol", 0x3D5274, 0x4

