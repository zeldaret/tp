lbl_80097FF8:
/* 80097FF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80097FFC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80098000  A8 64 5D CC */	lha r3, 0x5dcc(r4)
/* 80098004  38 03 00 04 */	addi r0, r3, 4
/* 80098008  B0 04 5D CC */	sth r0, 0x5dcc(r4)
/* 8009800C  4E 80 00 20 */	blr 
