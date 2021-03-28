lbl_80489CE4:
/* 80489CE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80489CE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80489CEC  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80489CF0  54 03 AF FE */	rlwinm r3, r0, 0x15, 0x1f, 0x1f
/* 80489CF4  4E 80 00 20 */	blr 
