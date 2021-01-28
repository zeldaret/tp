.include "macros.inc"
.section .rodata, "a"  # 0x80393da8 - 0x80393dc0

.global lbl_80393DA8
lbl_80393DA8:
.incbin "baserom.dol", 0x390DA8, 0xC

.global lbl_80393DB4
lbl_80393DB4:
.incbin "baserom.dol", 0x390DB4, 0xC

