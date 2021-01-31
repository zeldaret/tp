.include "macros.inc"
.section .sdata2, "a"  # 0x80451c68 - 0x80451c70

.global lbl_80451C68
lbl_80451C68:
.incbin "baserom.dol", 0x3D0AC8, 0x8

