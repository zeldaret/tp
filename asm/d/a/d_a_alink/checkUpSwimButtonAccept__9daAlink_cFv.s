lbl_80103F08:
/* 80103F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80103F0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80103F10  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 80103F14  20 00 00 97 */	subfic r0, r0, 0x97
/* 80103F18  7C 00 00 34 */	cntlzw r0, r0
/* 80103F1C  54 03 D9 7E */	srwi r3, r0, 5
/* 80103F20  4E 80 00 20 */	blr 
