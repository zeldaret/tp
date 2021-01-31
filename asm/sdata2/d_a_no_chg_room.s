.include "macros.inc"
.section .sdata2, "a"  # 0x804533c8 - 0x804533d8

.global lbl_804533C8
lbl_804533C8:
.incbin "baserom.dol", 0x3D2228, 0x4

.global lbl_804533CC
lbl_804533CC:
.incbin "baserom.dol", 0x3D222C, 0x4

.global lbl_804533D0
lbl_804533D0:
.incbin "baserom.dol", 0x3D2230, 0x8

