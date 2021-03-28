lbl_80B0C198:
/* 80B0C198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B0C19C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B0C1A0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B0C1A4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B0C1A8  54 03 01 8C */	rlwinm r3, r0, 0, 6, 6
/* 80B0C1AC  4E 80 00 20 */	blr 
