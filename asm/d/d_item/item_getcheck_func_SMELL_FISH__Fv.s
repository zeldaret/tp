lbl_8009AEBC:
/* 8009AEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009AEC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009AEC4  88 03 00 16 */	lbz r0, 0x16(r3)
/* 8009AEC8  20 00 00 B3 */	subfic r0, r0, 0xb3
/* 8009AECC  7C 00 00 34 */	cntlzw r0, r0
/* 8009AED0  54 03 D9 7E */	srwi r3, r0, 5
/* 8009AED4  4E 80 00 20 */	blr 
