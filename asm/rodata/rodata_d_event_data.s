.include "macros.inc"
.section .rodata, "a"  # 0x80379dd0 - 0x80379f50

.global lbl_80379DD0
lbl_80379DD0:
.incbin "baserom.dol", 0x376DD0, 0x180

