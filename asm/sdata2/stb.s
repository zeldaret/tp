.include "macros.inc"
.section .sdata2, "a"  # 0x804554d0 - 0x804554d8

.global lbl_804554D0
lbl_804554D0:
.incbin "baserom.dol", 0x3D4330, 0x8

