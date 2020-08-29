.section .ctors, "wa"  # 0x803737C0 - 0x80373980
.global lbl_803737C0
lbl_803737C0:
	.incbin "baserom.dol", 0x3707C0, 0x1C0
