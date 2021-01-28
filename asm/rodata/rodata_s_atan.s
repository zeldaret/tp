.include "macros.inc"
.section .rodata, "a"  # 0x803a25f0 - 0x803a2688

.global lbl_803A25F0
lbl_803A25F0:
.incbin "baserom.dol", 0x39F5F0, 0x20

.global lbl_803A2610
lbl_803A2610:
.incbin "baserom.dol", 0x39F610, 0x20

.global lbl_803A2630
lbl_803A2630:
.incbin "baserom.dol", 0x39F630, 0x58

