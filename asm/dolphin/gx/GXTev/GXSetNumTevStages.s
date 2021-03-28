lbl_8035F890:
/* 8035F890  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035F894  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8035F898  38 03 FF FF */	addi r0, r3, -1
/* 8035F89C  80 64 02 04 */	lwz r3, 0x204(r4)
/* 8035F8A0  50 03 54 AA */	rlwimi r3, r0, 0xa, 0x12, 0x15
/* 8035F8A4  90 64 02 04 */	stw r3, 0x204(r4)
/* 8035F8A8  80 04 05 AC */	lwz r0, 0x5ac(r4)
/* 8035F8AC  60 00 00 04 */	ori r0, r0, 4
/* 8035F8B0  90 04 05 AC */	stw r0, 0x5ac(r4)
/* 8035F8B4  4E 80 00 20 */	blr 
