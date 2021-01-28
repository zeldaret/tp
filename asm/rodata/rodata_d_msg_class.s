.include "macros.inc"
.section .rodata, "a"  # 0x803995c8 - 0x80399660

.global lbl_803995C8
lbl_803995C8:
.incbin "baserom.dol", 0x3965C8, 0x24

.global lbl_803995EC
lbl_803995EC:
.incbin "baserom.dol", 0x3965EC, 0x24

.global lbl_80399610
lbl_80399610:
.incbin "baserom.dol", 0x396610, 0x50

