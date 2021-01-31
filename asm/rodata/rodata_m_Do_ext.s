.include "macros.inc"
.section .rodata, "a"  # 0x803740c0 - 0x80374198

.global lbl_803740C0
lbl_803740C0:
.incbin "baserom.dol", 0x3710C0, 0x14

.global lbl_803740D4
lbl_803740D4:
.incbin "baserom.dol", 0x3710D4, 0x14

.global lbl_803740E8
lbl_803740E8:
.incbin "baserom.dol", 0x3710E8, 0x14

.global lbl_803740FC
lbl_803740FC:
.incbin "baserom.dol", 0x3710FC, 0x9C

