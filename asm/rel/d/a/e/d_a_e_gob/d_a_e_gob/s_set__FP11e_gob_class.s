lbl_806DB50C:
/* 806DB50C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806DB510  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806DB514  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806DB518  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 806DB51C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806DB520  EC 21 00 28 */	fsubs f1, f1, f0
/* 806DB524  3C 80 80 6E */	lis r4, lit_4400@ha /* 0x806DEEA4@ha */
/* 806DB528  C0 04 EE A4 */	lfs f0, lit_4400@l(r4)  /* 0x806DEEA4@l */
/* 806DB52C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DB530  4C 80 00 20 */	bgelr 
/* 806DB534  38 00 00 02 */	li r0, 2
/* 806DB538  B0 03 06 56 */	sth r0, 0x656(r3)
/* 806DB53C  38 00 FF FF */	li r0, -1
/* 806DB540  B0 03 06 58 */	sth r0, 0x658(r3)
/* 806DB544  4E 80 00 20 */	blr 
