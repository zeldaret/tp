lbl_8054A7A0:
/* 8054A7A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054A7A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054A7A8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8054A7AC  4E 80 00 20 */	blr 
