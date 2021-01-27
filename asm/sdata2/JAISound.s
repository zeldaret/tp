.include "macros.inc"
.section .sdata2, "a"  # 0x804557b8 - 0x804557d8

.global lbl_804557B8
lbl_804557B8:
.incbin "baserom.dol", 0x3D4618, 0x4

.global lbl_804557BC
lbl_804557BC:
.incbin "baserom.dol", 0x3D461C, 0x4

.global lbl_804557C0
lbl_804557C0:
.incbin "baserom.dol", 0x3D4620, 0x8

.global lbl_804557C8
lbl_804557C8:
.incbin "baserom.dol", 0x3D4628, 0x8

.global lbl_804557D0
lbl_804557D0:
.incbin "baserom.dol", 0x3D4630, 0x8

