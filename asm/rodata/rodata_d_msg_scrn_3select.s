.include "macros.inc"
.section .rodata, "a"  # 0x80399708 - 0x803998a0

.global lbl_80399708
lbl_80399708:
.incbin "baserom.dol", 0x396708, 0x120

.global lbl_80399828
lbl_80399828:
.incbin "baserom.dol", 0x396828, 0xC

.global lbl_80399834
lbl_80399834:
.incbin "baserom.dol", 0x396834, 0xC

.global lbl_80399840
lbl_80399840:
.incbin "baserom.dol", 0x396840, 0x60

