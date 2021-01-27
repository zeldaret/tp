.include "macros.inc"
.section .rodata, "a"  # 0x8037b140 - 0x8038d658

.global lbl_8037B140
lbl_8037B140:
.incbin "baserom.dol", 0x378140, 0x40

.global lbl_8037B180
lbl_8037B180:
.incbin "baserom.dol", 0x378180, 0x260

.global lbl_8037B3E0
lbl_8037B3E0:
.incbin "baserom.dol", 0x3783E0, 0x12260

.global lbl_8038D640
lbl_8038D640:
.incbin "baserom.dol", 0x38A640, 0x18

