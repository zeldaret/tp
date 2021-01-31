.include "macros.inc"
.section .rodata, "a"  # 0x80379298 - 0x803792b0

.global lbl_80379298
lbl_80379298:
.incbin "baserom.dol", 0x376298, 0x10

.global lbl_803792A8
lbl_803792A8:
.incbin "baserom.dol", 0x3762A8, 0x8

