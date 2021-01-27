.include "macros.inc"
.section .rodata, "a"  # 0x80399fe0 - 0x8039a2a8

.global lbl_80399FE0
lbl_80399FE0:
.incbin "baserom.dol", 0x396FE0, 0x1C

.global lbl_80399FFC
lbl_80399FFC:
.incbin "baserom.dol", 0x396FFC, 0x2AC

