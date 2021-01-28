.include "macros.inc"
.section .rodata, "a"  # 0x80379c58 - 0x80379d80

.global lbl_80379C58
lbl_80379C58:
.incbin "baserom.dol", 0x376C58, 0x30

.global lbl_80379C88
lbl_80379C88:
.incbin "baserom.dol", 0x376C88, 0x30

.global lbl_80379CB8
lbl_80379CB8:
.incbin "baserom.dol", 0x376CB8, 0x84

.global lbl_80379D3C
lbl_80379D3C:
.incbin "baserom.dol", 0x376D3C, 0x20

.global lbl_80379D5C
lbl_80379D5C:
.incbin "baserom.dol", 0x376D5C, 0x24

