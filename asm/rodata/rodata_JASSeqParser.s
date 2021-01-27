.include "macros.inc"
.section .rodata, "a"  # 0x8039b018 - 0x8039b168

.global lbl_8039B018
lbl_8039B018:
.incbin "baserom.dol", 0x398018, 0x150

