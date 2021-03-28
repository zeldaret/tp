lbl_800980F8:
/* 800980F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800980FC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80098100  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 80098104  38 03 00 1E */	addi r0, r3, 0x1e
/* 80098108  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 8009810C  4E 80 00 20 */	blr 
