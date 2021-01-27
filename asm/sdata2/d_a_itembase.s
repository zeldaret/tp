.include "macros.inc"
.section .sdata2, "a"  # 0x804533a8 - 0x804533c8

.global lbl_804533A8
lbl_804533A8:
.incbin "baserom.dol", 0x3D2208, 0x4

.global lbl_804533AC
lbl_804533AC:
.incbin "baserom.dol", 0x3D220C, 0x4

.global lbl_804533B0
lbl_804533B0:
.incbin "baserom.dol", 0x3D2210, 0x8

.global lbl_804533B8
lbl_804533B8:
.incbin "baserom.dol", 0x3D2218, 0x8

.global lbl_804533C0
lbl_804533C0:
.incbin "baserom.dol", 0x3D2220, 0x8

