lbl_80489C1C:
/* 80489C1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80489C20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80489C24  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80489C28  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80489C2C  54 03 3F FE */	rlwinm r3, r0, 7, 0x1f, 0x1f
/* 80489C30  4E 80 00 20 */	blr 
