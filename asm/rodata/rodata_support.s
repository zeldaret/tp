.include "macros.inc"
.section .rodata, "a"  # 0x803a2ab8 - 0x803a2b60

.global lbl_803A2AB8
lbl_803A2AB8:
.incbin "baserom.dol", 0x39FAB8, 0x18

.global lbl_803A2AD0
lbl_803A2AD0:
.incbin "baserom.dol", 0x39FAD0, 0x28

.global lbl_803A2AF8
lbl_803A2AF8:
.incbin "baserom.dol", 0x39FAF8, 0x14

.global lbl_803A2B0C
lbl_803A2B0C:
.incbin "baserom.dol", 0x39FB0C, 0x54

