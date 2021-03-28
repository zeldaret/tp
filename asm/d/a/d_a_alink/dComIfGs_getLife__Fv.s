lbl_800CFF2C:
/* 800CFF2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CFF30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CFF34  A0 63 00 02 */	lhz r3, 2(r3)
/* 800CFF38  4E 80 00 20 */	blr 
