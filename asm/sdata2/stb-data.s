.include "macros.inc"
.section .sdata2, "a"  # 0x804554d8 - 0x804554e0

.global lbl_804554D8
lbl_804554D8:
.incbin "baserom.dol", 0x3D4338, 0x8

