lbl_807EF744:
/* 807EF744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807EF748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807EF74C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807EF750  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807EF754  54 03 01 8C */	rlwinm r3, r0, 0, 6, 6
/* 807EF758  4E 80 00 20 */	blr 
