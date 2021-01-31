.include "macros.inc"
.section .rodata, "a"  # 0x80379f50 - 0x8037a108

.global lbl_80379F50
lbl_80379F50:
.incbin "baserom.dol", 0x376F50, 0x10

.global lbl_80379F60
lbl_80379F60:
.incbin "baserom.dol", 0x376F60, 0x1A8

