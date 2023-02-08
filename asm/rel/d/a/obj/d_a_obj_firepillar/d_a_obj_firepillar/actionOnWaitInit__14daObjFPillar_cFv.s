lbl_80BE9784:
/* 80BE9784  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE9788  54 00 46 3E */	srwi r0, r0, 0x18
/* 80BE978C  28 00 00 FF */	cmplwi r0, 0xff
/* 80BE9790  40 82 00 08 */	bne lbl_80BE9798
/* 80BE9794  38 00 00 01 */	li r0, 1
lbl_80BE9798:
/* 80BE9798  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BE979C  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BE97A0  B0 03 09 72 */	sth r0, 0x972(r3)
/* 80BE97A4  38 00 00 1E */	li r0, 0x1e
/* 80BE97A8  B0 03 09 72 */	sth r0, 0x972(r3)
/* 80BE97AC  38 00 00 01 */	li r0, 1
/* 80BE97B0  98 03 09 70 */	stb r0, 0x970(r3)
/* 80BE97B4  4E 80 00 20 */	blr 
