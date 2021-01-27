.include "macros.inc"
.section .sdata2, "a"  # 0x80456368 - 0x80456378

.global lbl_80456368
lbl_80456368:
.incbin "baserom.dol", 0x3D51C8, 0x4

.global lbl_8045636C
lbl_8045636C:
.incbin "baserom.dol", 0x3D51CC, 0x4

.global lbl_80456370
lbl_80456370:
.incbin "baserom.dol", 0x3D51D0, 0x8

