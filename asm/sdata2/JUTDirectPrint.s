.include "macros.inc"
.section .sdata2, "a"  # 0x80456060 - 0x804560b8

.global lbl_80456060
lbl_80456060:
.incbin "baserom.dol", 0x3D4EC0, 0x8

.global lbl_80456068
lbl_80456068:
.incbin "baserom.dol", 0x3D4EC8, 0x8

.global lbl_80456070
lbl_80456070:
.incbin "baserom.dol", 0x3D4ED0, 0x8

.global lbl_80456078
lbl_80456078:
.incbin "baserom.dol", 0x3D4ED8, 0x8

.global lbl_80456080
lbl_80456080:
.incbin "baserom.dol", 0x3D4EE0, 0x8

.global lbl_80456088
lbl_80456088:
.incbin "baserom.dol", 0x3D4EE8, 0x8

.global lbl_80456090
lbl_80456090:
.incbin "baserom.dol", 0x3D4EF0, 0x8

.global lbl_80456098
lbl_80456098:
.incbin "baserom.dol", 0x3D4EF8, 0x8

.global lbl_804560A0
lbl_804560A0:
.incbin "baserom.dol", 0x3D4F00, 0x8

.global lbl_804560A8
lbl_804560A8:
.incbin "baserom.dol", 0x3D4F08, 0x8

.global lbl_804560B0
lbl_804560B0:
.incbin "baserom.dol", 0x3D4F10, 0x8

