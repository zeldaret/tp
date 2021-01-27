.include "macros.inc"
.section .rodata, "a"  # 0x80396690 - 0x80396950

.global lbl_80396690
lbl_80396690:
.incbin "baserom.dol", 0x393690, 0xC0

.global lbl_80396750
lbl_80396750:
.incbin "baserom.dol", 0x393750, 0xC0

.global lbl_80396810
lbl_80396810:
.incbin "baserom.dol", 0x393810, 0x28

.global lbl_80396838
lbl_80396838:
.incbin "baserom.dol", 0x393838, 0x28

.global lbl_80396860
lbl_80396860:
.incbin "baserom.dol", 0x393860, 0x60

.global lbl_803968C0
lbl_803968C0:
.incbin "baserom.dol", 0x3938C0, 0x90

