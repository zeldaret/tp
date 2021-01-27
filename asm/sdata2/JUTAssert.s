.include "macros.inc"
.section .sdata2, "a"  # 0x804560b8 - 0x804560d0

.global lbl_804560B8
lbl_804560B8:
.incbin "baserom.dol", 0x3D4F18, 0x4

.global lbl_804560BC
lbl_804560BC:
.incbin "baserom.dol", 0x3D4F1C, 0x4

.global lbl_804560C0
lbl_804560C0:
.incbin "baserom.dol", 0x3D4F20, 0x8

.global lbl_804560C8
lbl_804560C8:
.incbin "baserom.dol", 0x3D4F28, 0x8

