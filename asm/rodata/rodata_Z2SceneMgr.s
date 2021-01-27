.include "macros.inc"
.section .rodata, "a"  # 0x8039bfa8 - 0x8039c220

.global lbl_8039BFA8
lbl_8039BFA8:
.incbin "baserom.dol", 0x398FA8, 0x278

