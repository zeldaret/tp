.include "macros.inc"
.section .rodata, "a"  # 0x803960d0 - 0x803961b0

.global lbl_803960D0
lbl_803960D0:
.incbin "baserom.dol", 0x3930D0, 0x18

.global lbl_803960E8
lbl_803960E8:
.incbin "baserom.dol", 0x3930E8, 0xC8

