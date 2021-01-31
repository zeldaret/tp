.include "macros.inc"
.section .rodata, "a"  # 0x803a1d50 - 0x803a1db8

.global lbl_803A1D50
lbl_803A1D50:
.incbin "baserom.dol", 0x39ED50, 0x20

.global lbl_803A1D70
lbl_803A1D70:
.incbin "baserom.dol", 0x39ED70, 0x20

.global lbl_803A1D90
lbl_803A1D90:
.incbin "baserom.dol", 0x39ED90, 0x28

