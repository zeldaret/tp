lbl_806D0E34:
/* 806D0E34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D0E38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D0E3C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 806D0E40  80 03 05 74 */	lwz r0, 0x574(r3)
/* 806D0E44  54 03 01 8C */	rlwinm r3, r0, 0, 6, 6
/* 806D0E48  4E 80 00 20 */	blr 
