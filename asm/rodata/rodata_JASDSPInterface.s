.include "macros.inc"
.section .rodata, "a"  # 0x8039b360 - 0x8039b8b8

.global lbl_8039B360
lbl_8039B360:
.incbin "baserom.dol", 0x398360, 0x40

.global lbl_8039B3A0
lbl_8039B3A0:
.incbin "baserom.dol", 0x3983A0, 0x500

.global lbl_8039B8A0
lbl_8039B8A0:
.incbin "baserom.dol", 0x3988A0, 0x18

