.include "macros.inc"
.section .rodata, "a"  # 0x8037a620 - 0x8037a770

.global lbl_8037A620
lbl_8037A620:
.incbin "baserom.dol", 0x377620, 0x58

.global lbl_8037A678
lbl_8037A678:
.incbin "baserom.dol", 0x377678, 0x58

.global lbl_8037A6D0
lbl_8037A6D0:
.incbin "baserom.dol", 0x3776D0, 0x50

.global lbl_8037A720
lbl_8037A720:
.incbin "baserom.dol", 0x377720, 0x50

