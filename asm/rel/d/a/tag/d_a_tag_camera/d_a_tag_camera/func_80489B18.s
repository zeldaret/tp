lbl_80489B18:
/* 80489B18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80489B1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80489B20  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80489B24  54 03 67 FE */	rlwinm r3, r0, 0xc, 0x1f, 0x1f
/* 80489B28  4E 80 00 20 */	blr 
