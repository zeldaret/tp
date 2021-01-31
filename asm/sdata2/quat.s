.include "macros.inc"
.section .sdata2, "a"  # 0x80456550 - 0x80456560

.global lbl_80456550
lbl_80456550:
.incbin "baserom.dol", 0x3D53B0, 0x4

.global lbl_80456554
lbl_80456554:
.incbin "baserom.dol", 0x3D53B4, 0x4

.global lbl_80456558
lbl_80456558:
.incbin "baserom.dol", 0x3D53B8, 0x4

.global lbl_8045655C
lbl_8045655C:
.incbin "baserom.dol", 0x3D53BC, 0x4

