.include "macros.inc"
.section .sdata2, "a"  # 0x80454488 - 0x804544c0

.global lbl_80454488
lbl_80454488:
.incbin "baserom.dol", 0x3D32E8, 0x4

.global lbl_8045448C
lbl_8045448C:
.incbin "baserom.dol", 0x3D32EC, 0x4

.global lbl_80454490
lbl_80454490:
.incbin "baserom.dol", 0x3D32F0, 0x4

.global lbl_80454494
lbl_80454494:
.incbin "baserom.dol", 0x3D32F4, 0x4

.global lbl_80454498
lbl_80454498:
.incbin "baserom.dol", 0x3D32F8, 0x4

.global lbl_8045449C
lbl_8045449C:
.incbin "baserom.dol", 0x3D32FC, 0x4

.global lbl_804544A0
lbl_804544A0:
.incbin "baserom.dol", 0x3D3300, 0x4

.global lbl_804544A4
lbl_804544A4:
.incbin "baserom.dol", 0x3D3304, 0x4

.global lbl_804544A8
lbl_804544A8:
.incbin "baserom.dol", 0x3D3308, 0x8

.global lbl_804544B0
lbl_804544B0:
.incbin "baserom.dol", 0x3D3310, 0x8

.global lbl_804544B8
lbl_804544B8:
.incbin "baserom.dol", 0x3D3318, 0x8

