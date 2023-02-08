lbl_807CEC7C:
/* 807CEC7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CEC80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CEC84  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807CEC88  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807CEC8C  54 03 01 8C */	rlwinm r3, r0, 0, 6, 6
/* 807CEC90  4E 80 00 20 */	blr 
