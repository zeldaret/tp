lbl_807576D0:
/* 807576D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807576D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807576D8  54 60 18 38 */	slwi r0, r3, 3
/* 807576DC  7C 64 02 14 */	add r3, r4, r0
/* 807576E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807576E4  4E 80 00 20 */	blr 
