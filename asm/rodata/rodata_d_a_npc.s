.include "macros.inc"
.section .rodata, "a"  # 0x80392680 - 0x80392a18

.global lbl_80392680
lbl_80392680:
.incbin "baserom.dol", 0x38F680, 0x30

.global lbl_803926B0
lbl_803926B0:
.incbin "baserom.dol", 0x38F6B0, 0x30

.global lbl_803926E0
lbl_803926E0:
.incbin "baserom.dol", 0x38F6E0, 0x30

.global lbl_80392710
lbl_80392710:
.incbin "baserom.dol", 0x38F710, 0x308

