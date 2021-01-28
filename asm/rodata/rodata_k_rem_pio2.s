.include "macros.inc"
.section .rodata, "a"  # 0x803a2538 - 0x803a2588

.global lbl_803A2538
lbl_803A2538:
.incbin "baserom.dol", 0x39F538, 0x10

.global lbl_803A2548
lbl_803A2548:
.incbin "baserom.dol", 0x39F548, 0x40

