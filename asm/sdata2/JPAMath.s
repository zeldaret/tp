.include "macros.inc"
.section .sdata2, "a"  # 0x804553b8 - 0x804553c8

.global lbl_804553B8
lbl_804553B8:
.incbin "baserom.dol", 0x3D4218, 0x4

.global lbl_804553BC
lbl_804553BC:
.incbin "baserom.dol", 0x3D421C, 0x4

.global lbl_804553C0
lbl_804553C0:
.incbin "baserom.dol", 0x3D4220, 0x8

