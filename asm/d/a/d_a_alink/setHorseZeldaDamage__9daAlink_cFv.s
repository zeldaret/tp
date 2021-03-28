lbl_800EC7B0:
/* 800EC7B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EC7B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EC7B8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800EC7BC  28 03 00 00 */	cmplwi r3, 0
/* 800EC7C0  4D 82 00 20 */	beqlr 
/* 800EC7C4  80 63 12 58 */	lwz r3, 0x1258(r3)
/* 800EC7C8  28 03 00 00 */	cmplwi r3, 0
/* 800EC7CC  4D 82 00 20 */	beqlr 
/* 800EC7D0  38 00 00 01 */	li r0, 1
/* 800EC7D4  98 03 06 DB */	stb r0, 0x6db(r3)
/* 800EC7D8  4E 80 00 20 */	blr 
