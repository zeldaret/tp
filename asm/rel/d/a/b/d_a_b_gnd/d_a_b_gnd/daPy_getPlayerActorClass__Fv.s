lbl_8060249C:
/* 8060249C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806024A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806024A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806024A8  4E 80 00 20 */	blr 
