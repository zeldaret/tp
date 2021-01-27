.include "macros.inc"
.section .rodata, "a"  # 0x803a2890 - 0x803a28d0

.global lbl_803A2890
lbl_803A2890:
.incbin "baserom.dol", 0x39F890, 0x1C

.global lbl_803A28AC
lbl_803A28AC:
.incbin "baserom.dol", 0x39F8AC, 0x24

