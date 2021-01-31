.include "macros.inc"
.section .sdata2, "a"  # 0x804544c0 - 0x804544e0

.global lbl_804544C0
lbl_804544C0:
.incbin "baserom.dol", 0x3D3320, 0x4

.global lbl_804544C4
lbl_804544C4:
.incbin "baserom.dol", 0x3D3324, 0x4

.global lbl_804544C8
lbl_804544C8:
.incbin "baserom.dol", 0x3D3328, 0x4

.global lbl_804544CC
lbl_804544CC:
.incbin "baserom.dol", 0x3D332C, 0x4

.global lbl_804544D0
lbl_804544D0:
.incbin "baserom.dol", 0x3D3330, 0x4

.global lbl_804544D4
lbl_804544D4:
.incbin "baserom.dol", 0x3D3334, 0x4

.global lbl_804544D8
lbl_804544D8:
.incbin "baserom.dol", 0x3D3338, 0x8

