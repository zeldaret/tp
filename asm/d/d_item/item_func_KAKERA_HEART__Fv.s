lbl_8009829C:
/* 8009829C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800982A0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800982A4  A8 64 5D CA */	lha r3, 0x5dca(r4)
/* 800982A8  38 03 00 01 */	addi r0, r3, 1
/* 800982AC  B0 04 5D CA */	sth r0, 0x5dca(r4)
/* 800982B0  4E 80 00 20 */	blr 
