.include "macros.inc"
.section .rodata, "a"  # 0x803a1db8 - 0x803a1df8

.global lbl_803A1DB8
lbl_803A1DB8:
.incbin "baserom.dol", 0x39EDB8, 0xC

.global lbl_803A1DC4
lbl_803A1DC4:
.incbin "baserom.dol", 0x39EDC4, 0xC

.global lbl_803A1DD0
lbl_803A1DD0:
.incbin "baserom.dol", 0x39EDD0, 0x10

.global lbl_803A1DE0
lbl_803A1DE0:
.incbin "baserom.dol", 0x39EDE0, 0x10

.global lbl_803A1DF0
lbl_803A1DF0:
.incbin "baserom.dol", 0x39EDF0, 0x8

