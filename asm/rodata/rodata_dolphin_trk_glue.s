.include "macros.inc"
.section .rodata, "a"  # 0x803a2c08 - 0x803a2d10

.global lbl_803A2C08
lbl_803A2C08:
.incbin "baserom.dol", 0x39FC08, 0x4

.global lbl_803A2C0C
lbl_803A2C0C:
.incbin "baserom.dol", 0x39FC0C, 0x4

.global lbl_803A2C10
lbl_803A2C10:
.incbin "baserom.dol", 0x39FC10, 0x18

.global lbl_803A2C28
lbl_803A2C28:
.incbin "baserom.dol", 0x39FC28, 0x18

.global lbl_803A2C40
lbl_803A2C40:
.incbin "baserom.dol", 0x39FC40, 0x24

.global lbl_803A2C64
lbl_803A2C64:
.incbin "baserom.dol", 0x39FC64, 0x24

.global lbl_803A2C88
lbl_803A2C88:
.incbin "baserom.dol", 0x39FC88, 0x2C

.global lbl_803A2CB4
lbl_803A2CB4:
.incbin "baserom.dol", 0x39FCB4, 0x30

.global lbl_803A2CE4
lbl_803A2CE4:
.incbin "baserom.dol", 0x39FCE4, 0x2C

