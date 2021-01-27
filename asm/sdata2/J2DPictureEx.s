.include "macros.inc"
.section .sdata2, "a"  # 0x804562c0 - 0x804562d8

.global lbl_804562C0
lbl_804562C0:
.incbin "baserom.dol", 0x3D5120, 0x4

.global lbl_804562C4
lbl_804562C4:
.incbin "baserom.dol", 0x3D5124, 0x4

.global lbl_804562C8
lbl_804562C8:
.incbin "baserom.dol", 0x3D5128, 0x8

.global lbl_804562D0
lbl_804562D0:
.incbin "baserom.dol", 0x3D5130, 0x8

