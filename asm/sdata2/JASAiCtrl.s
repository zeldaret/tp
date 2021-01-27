.include "macros.inc"
.section .sdata2, "a"  # 0x80455720 - 0x80455740

.global lbl_80455720
lbl_80455720:
.incbin "baserom.dol", 0x3D4580, 0x4

.global lbl_80455724
lbl_80455724:
.incbin "baserom.dol", 0x3D4584, 0x4

.global lbl_80455728
lbl_80455728:
.incbin "baserom.dol", 0x3D4588, 0x4

.global lbl_8045572C
lbl_8045572C:
.incbin "baserom.dol", 0x3D458C, 0x4

.global lbl_80455730
lbl_80455730:
.incbin "baserom.dol", 0x3D4590, 0x8

.global lbl_80455738
lbl_80455738:
.incbin "baserom.dol", 0x3D4598, 0x8

