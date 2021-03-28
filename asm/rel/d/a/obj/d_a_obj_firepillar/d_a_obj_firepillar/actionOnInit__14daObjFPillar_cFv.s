lbl_80BE986C:
/* 80BE986C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE9870  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80BE9874  28 00 00 FF */	cmplwi r0, 0xff
/* 80BE9878  40 82 00 08 */	bne lbl_80BE9880
/* 80BE987C  38 00 00 01 */	li r0, 1
lbl_80BE9880:
/* 80BE9880  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BE9884  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BE9888  B0 03 09 72 */	sth r0, 0x972(r3)
/* 80BE988C  38 00 00 1E */	li r0, 0x1e
/* 80BE9890  B0 03 09 72 */	sth r0, 0x972(r3)
/* 80BE9894  38 00 00 02 */	li r0, 2
/* 80BE9898  98 03 09 70 */	stb r0, 0x970(r3)
/* 80BE989C  4E 80 00 20 */	blr 
