lbl_8009AEA0:
/* 8009AEA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AEA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AEA8  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8009AEAC  20 00 00 B2 */	subfic r0, r0, 0xb2
/* 8009AEB0  7C 00 00 34 */	cntlzw r0, r0
/* 8009AEB4  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AEB8  4E 80 00 20 */	blr 
