lbl_80489DE4:
/* 80489DE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80489DE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80489DEC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80489DF0  54 03 3F FE */	rlwinm r3, r0, 7, 0x1f, 0x1f
/* 80489DF4  4E 80 00 20 */	blr 
