.include "macros.inc"
.section .sdata2, "a"  # 0x804554e0 - 0x804554e8

.global lbl_804554E0
lbl_804554E0:
.incbin "baserom.dol", 0x3D4340, 0x8

