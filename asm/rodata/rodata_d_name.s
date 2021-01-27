.include "macros.inc"
.section .rodata, "a"  # 0x80399cc8 - 0x80399fe0

.global lbl_80399CC8
lbl_80399CC8:
.incbin "baserom.dol", 0x396CC8, 0x318

