lbl_8015F8D0:
/* 8015F8D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015F8D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015F8D8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8015F8DC  80 63 28 38 */	lwz r3, 0x2838(r3)
/* 8015F8E0  4E 80 00 20 */	blr 
