lbl_80B01D84:
/* 80B01D84  80 63 06 38 */	lwz r3, 0x638(r3)
/* 80B01D88  28 03 00 00 */	cmplwi r3, 0
/* 80B01D8C  4C 82 00 20 */	bnelr 
/* 80B01D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B01D94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B01D98  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B01D9C  4E 80 00 20 */	blr 
