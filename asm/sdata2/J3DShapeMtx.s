.include "macros.inc"
.section .sdata2, "a"  # 0x80456398 - 0x804563a0

.global lbl_80456398
lbl_80456398:
.incbin "baserom.dol", 0x3D51F8, 0x4

.global lbl_8045639C
lbl_8045639C:
.incbin "baserom.dol", 0x3D51FC, 0x4

