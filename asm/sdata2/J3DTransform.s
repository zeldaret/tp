.include "macros.inc"
.section .sdata2, "a"  # 0x80456378 - 0x80456388

.global lbl_80456378
lbl_80456378:
.incbin "baserom.dol", 0x3D51D8, 0x4

.global lbl_8045637C
lbl_8045637C:
.incbin "baserom.dol", 0x3D51DC, 0x4

.global lbl_80456380
lbl_80456380:
.incbin "baserom.dol", 0x3D51E0, 0x8

