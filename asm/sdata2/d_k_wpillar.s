.include "macros.inc"
.section .sdata2, "a"  # 0x80454ff0 - 0x80455008

.global lbl_80454FF0
lbl_80454FF0:
.incbin "baserom.dol", 0x3D3E50, 0x8

.global lbl_80454FF8
lbl_80454FF8:
.incbin "baserom.dol", 0x3D3E58, 0x4

.global lbl_80454FFC
lbl_80454FFC:
.incbin "baserom.dol", 0x3D3E5C, 0x4

.global lbl_80455000
lbl_80455000:
.incbin "baserom.dol", 0x3D3E60, 0x4

.global lbl_80455004
lbl_80455004:
.incbin "baserom.dol", 0x3D3E64, 0x4

