lbl_807E2458:
/* 807E2458  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E245C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E2460  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E2464  4E 80 00 20 */	blr 
