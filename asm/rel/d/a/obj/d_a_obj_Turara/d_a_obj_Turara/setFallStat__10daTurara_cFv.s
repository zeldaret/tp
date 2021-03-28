lbl_80B9D468:
/* 80B9D468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D46C  7C 08 02 A6 */	mflr r0
/* 80B9D470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9D478  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9D47C  7C 7E 1B 78 */	mr r30, r3
/* 80B9D480  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80B9D484  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B9D488  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B9D48C  3B E4 0F 38 */	addi r31, r4, 0xf38
/* 80B9D490  7F E4 FB 78 */	mr r4, r31
/* 80B9D494  4B 4D 96 18 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B9D498  C0 1E 08 40 */	lfs f0, 0x840(r30)
/* 80B9D49C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B9D4A0  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80B9D4A4  7F E4 FB 78 */	mr r4, r31
/* 80B9D4A8  4B 4D 96 04 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B9D4AC  38 00 00 03 */	li r0, 3
/* 80B9D4B0  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 80B9D4B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9D4B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9D4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D4C0  7C 08 03 A6 */	mtlr r0
/* 80B9D4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D4C8  4E 80 00 20 */	blr 
