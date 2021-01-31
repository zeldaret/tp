.include "macros.inc"
.section .sdata2, "a"  # 0x80456670 - 0x80456678

.global lbl_80456670
lbl_80456670:
.incbin "baserom.dol", 0x3D54D0, 0x8

