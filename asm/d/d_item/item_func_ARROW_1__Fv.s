lbl_80098110:
/* 80098110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098114  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80098118  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 8009811C  38 03 00 01 */	addi r0, r3, 1
/* 80098120  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 80098124  4E 80 00 20 */	blr 
