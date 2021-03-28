lbl_800D0164:
/* 800D0164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D0168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D016C  98 83 5E 26 */	stb r4, 0x5e26(r3)
/* 800D0170  98 A3 5E 2D */	stb r5, 0x5e2d(r3)
/* 800D0174  38 00 00 00 */	li r0, 0
/* 800D0178  98 03 5E 4B */	stb r0, 0x5e4b(r3)
/* 800D017C  4E 80 00 20 */	blr 
