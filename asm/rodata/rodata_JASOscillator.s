.include "macros.inc"
.section .rodata, "a"  # 0x8039b1d0 - 0x8039b2e0

.global lbl_8039B1D0
lbl_8039B1D0:
.incbin "baserom.dol", 0x3981D0, 0x44

.global lbl_8039B214
lbl_8039B214:
.incbin "baserom.dol", 0x398214, 0x44

.global lbl_8039B258
lbl_8039B258:
.incbin "baserom.dol", 0x398258, 0x44

.global lbl_8039B29C
lbl_8039B29C:
.incbin "baserom.dol", 0x39829C, 0x44

