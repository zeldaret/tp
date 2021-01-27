.include "macros.inc"
.section .sdata2, "a"  # 0x804534b8 - 0x804534e0

.global lbl_804534B8
lbl_804534B8:
.incbin "baserom.dol", 0x3D2318, 0x4

.global lbl_804534BC
lbl_804534BC:
.incbin "baserom.dol", 0x3D231C, 0x4

.global lbl_804534C0
lbl_804534C0:
.incbin "baserom.dol", 0x3D2320, 0x8

.global lbl_804534C8
lbl_804534C8:
.incbin "baserom.dol", 0x3D2328, 0x8

.global lbl_804534D0
lbl_804534D0:
.incbin "baserom.dol", 0x3D2330, 0x4

.global lbl_804534D4
lbl_804534D4:
.incbin "baserom.dol", 0x3D2334, 0x4

.global lbl_804534D8
lbl_804534D8:
.incbin "baserom.dol", 0x3D2338, 0x4

.global lbl_804534DC
lbl_804534DC:
.incbin "baserom.dol", 0x3D233C, 0x4

