.include "macros.inc"
.section .rodata, "a"  # 0x80395860 - 0x803959c0

.global lbl_80395860
lbl_80395860:
.incbin "baserom.dol", 0x392860, 0xF0

.global lbl_80395950
lbl_80395950:
.incbin "baserom.dol", 0x392950, 0x24

.global lbl_80395974
lbl_80395974:
.incbin "baserom.dol", 0x392974, 0x24

.global lbl_80395998
lbl_80395998:
.incbin "baserom.dol", 0x392998, 0x28

