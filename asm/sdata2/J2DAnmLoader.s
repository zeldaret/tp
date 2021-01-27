.include "macros.inc"
.section .sdata2, "a"  # 0x804562f8 - 0x80456300

.global lbl_804562F8
lbl_804562F8:
.incbin "baserom.dol", 0x3D5158, 0x8

