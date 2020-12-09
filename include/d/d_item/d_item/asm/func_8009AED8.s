/* 8009AED8 00097E18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AEDC 00097E1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AEE0 00097E20  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8009AEE4 00097E24  20 00 00 B4 */	subfic r0, r0, 0xb4
/* 8009AEE8 00097E28  7C 00 00 34 */	cntlzw r0, r0
/* 8009AEEC 00097E2C  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AEF0 00097E30  4E 80 00 20 */	blr 