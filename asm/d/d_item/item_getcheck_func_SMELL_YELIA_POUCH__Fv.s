lbl_8009AE7C:
/* 8009AE7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AE80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AE84  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8009AE88  20 00 00 B0 */	subfic r0, r0, 0xb0
/* 8009AE8C  7C 00 00 34 */	cntlzw r0, r0
/* 8009AE90  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AE94  4E 80 00 20 */	blr 
