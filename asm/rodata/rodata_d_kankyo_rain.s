.include "macros.inc"
.section .rodata, "a"  # 0x8037a4c0 - 0x8037a620

.global lbl_8037A4C0
lbl_8037A4C0:
.incbin "baserom.dol", 0x3774C0, 0x28

.global lbl_8037A4E8
lbl_8037A4E8:
.incbin "baserom.dol", 0x3774E8, 0x20

.global lbl_8037A508
lbl_8037A508:
.incbin "baserom.dol", 0x377508, 0x20

.global lbl_8037A528
lbl_8037A528:
.incbin "baserom.dol", 0x377528, 0x20

.global lbl_8037A548
lbl_8037A548:
.incbin "baserom.dol", 0x377548, 0x20

.global lbl_8037A568
lbl_8037A568:
.incbin "baserom.dol", 0x377568, 0x10

.global lbl_8037A578
lbl_8037A578:
.incbin "baserom.dol", 0x377578, 0xA8

