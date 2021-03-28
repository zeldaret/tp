lbl_800980E0:
/* 800980E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800980E4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800980E8  A8 64 5D F4 */	lha r3, 0x5df4(r4)
/* 800980EC  38 03 00 14 */	addi r0, r3, 0x14
/* 800980F0  B0 04 5D F4 */	sth r0, 0x5df4(r4)
/* 800980F4  4E 80 00 20 */	blr 
