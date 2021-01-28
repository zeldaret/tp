.include "macros.inc"
.section .rodata, "a"  # 0x80394310 - 0x80394828

.global lbl_80394310
lbl_80394310:
.incbin "baserom.dol", 0x391310, 0x14

.global lbl_80394324
lbl_80394324:
.incbin "baserom.dol", 0x391324, 0x14

.global lbl_80394338
lbl_80394338:
.incbin "baserom.dol", 0x391338, 0x14

.global lbl_8039434C
lbl_8039434C:
.incbin "baserom.dol", 0x39134C, 0x14

.global lbl_80394360
lbl_80394360:
.incbin "baserom.dol", 0x391360, 0x14

.global lbl_80394374
lbl_80394374:
.incbin "baserom.dol", 0x391374, 0x14

.global lbl_80394388
lbl_80394388:
.incbin "baserom.dol", 0x391388, 0x4A0

