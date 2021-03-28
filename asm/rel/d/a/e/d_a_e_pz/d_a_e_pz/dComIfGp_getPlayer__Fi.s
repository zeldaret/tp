lbl_80761470:
/* 80761470  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80761474  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80761478  54 60 18 38 */	slwi r0, r3, 3
/* 8076147C  7C 64 02 14 */	add r3, r4, r0
/* 80761480  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80761484  4E 80 00 20 */	blr 
