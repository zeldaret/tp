.include "macros.inc"
.section .rodata, "a"  # 0x803792e8 - 0x803797f8

.global lbl_803792E8
lbl_803792E8:
.incbin "baserom.dol", 0x3762E8, 0x450

.global lbl_80379738
lbl_80379738:
.incbin "baserom.dol", 0x376738, 0xC0

