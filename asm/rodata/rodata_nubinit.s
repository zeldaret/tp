.include "macros.inc"
.section .rodata, "a"  # 0x803a2688 - 0x803a26b8

.global lbl_803A2688
lbl_803A2688:
.incbin "baserom.dol", 0x39F688, 0x1C

.global lbl_803A26A4
lbl_803A26A4:
.incbin "baserom.dol", 0x39F6A4, 0x14

