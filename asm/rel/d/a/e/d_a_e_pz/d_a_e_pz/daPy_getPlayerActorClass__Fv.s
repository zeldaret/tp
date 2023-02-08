lbl_80761444:
/* 80761444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80761448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076144C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80761450  4E 80 00 20 */	blr 
