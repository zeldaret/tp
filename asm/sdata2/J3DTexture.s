.include "macros.inc"
.section .sdata2, "a"  # 0x80456388 - 0x80456398

.global lbl_80456388
lbl_80456388:
.incbin "baserom.dol", 0x3D51E8, 0x4

.global lbl_8045638C
lbl_8045638C:
.incbin "baserom.dol", 0x3D51EC, 0x4

.global lbl_80456390
lbl_80456390:
.incbin "baserom.dol", 0x3D51F0, 0x8

