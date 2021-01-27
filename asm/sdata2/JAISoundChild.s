.include "macros.inc"
.section .sdata2, "a"  # 0x804557d8 - 0x804557e8

.global lbl_804557D8
lbl_804557D8:
.incbin "baserom.dol", 0x3D4638, 0x4

.global lbl_804557DC
lbl_804557DC:
.incbin "baserom.dol", 0x3D463C, 0x4

.global lbl_804557E0
lbl_804557E0:
.incbin "baserom.dol", 0x3D4640, 0x8

