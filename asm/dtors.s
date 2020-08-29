.section .dtors, "wa"  # 0x80373980 - 0x803739A0
.global lbl_80373980
lbl_80373980:
	.incbin "baserom.dol", 0x370980, 0x20
