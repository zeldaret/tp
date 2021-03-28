lbl_800B3298:
/* 800B3298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B329C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B32A0  98 83 5E 1D */	stb r4, 0x5e1d(r3)
/* 800B32A4  38 00 00 00 */	li r0, 0
/* 800B32A8  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 800B32AC  4E 80 00 20 */	blr 
