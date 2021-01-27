.include "macros.inc"
.section .rodata, "a"  # 0x80396950 - 0x803969c8

.global lbl_80396950
lbl_80396950:
.incbin "baserom.dol", 0x393950, 0x20

.global lbl_80396970
lbl_80396970:
.incbin "baserom.dol", 0x393970, 0x20

.global lbl_80396990
lbl_80396990:
.incbin "baserom.dol", 0x393990, 0x38

