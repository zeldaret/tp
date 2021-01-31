.include "macros.inc"
.section .rodata, "a"  # 0x8039b338 - 0x8039b360

.global lbl_8039B338
lbl_8039B338:
.incbin "baserom.dol", 0x398338, 0x28

