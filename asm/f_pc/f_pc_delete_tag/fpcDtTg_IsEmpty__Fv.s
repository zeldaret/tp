lbl_80020F30:
/* 80020F30  3C 60 80 3A */	lis r3, g_fpcDtTg_Queue@ha
/* 80020F34  38 63 39 A0 */	addi r3, r3, g_fpcDtTg_Queue@l
/* 80020F38  80 03 00 08 */	lwz r0, 8(r3)
/* 80020F3C  7C 00 00 34 */	cntlzw r0, r0
/* 80020F40  54 03 D9 7E */	srwi r3, r0, 5
/* 80020F44  4E 80 00 20 */	blr 
