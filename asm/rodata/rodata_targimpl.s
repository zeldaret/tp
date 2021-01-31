.include "macros.inc"
.section .rodata, "a"  # 0x803a2b60 - 0x803a2bf8

.global lbl_803A2B60
lbl_803A2B60:
.incbin "baserom.dol", 0x39FB60, 0x10

.global lbl_803A2B70
lbl_803A2B70:
.incbin "baserom.dol", 0x39FB70, 0x28

.global lbl_803A2B98
lbl_803A2B98:
.incbin "baserom.dol", 0x39FB98, 0x28

.global lbl_803A2BC0
lbl_803A2BC0:
.incbin "baserom.dol", 0x39FBC0, 0x28

.global lbl_803A2BE8
lbl_803A2BE8:
.incbin "baserom.dol", 0x39FBE8, 0x10

