lbl_80158D88:
/* 80158D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80158D8C  7C 08 02 A6 */	mflr r0
/* 80158D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80158D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80158D98  93 C1 00 08 */	stw r30, 8(r1)
/* 80158D9C  7C 7E 1B 78 */	mr r30, r3
/* 80158DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80158DA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80158DA8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80158DAC  7F E3 FB 78 */	mr r3, r31
/* 80158DB0  38 9E 07 28 */	addi r4, r30, 0x728
/* 80158DB4  4B F1 BE 35 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80158DB8  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80158DBC  7F E3 FB 78 */	mr r3, r31
/* 80158DC0  38 9E 07 28 */	addi r4, r30, 0x728
/* 80158DC4  4B F1 C3 3D */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80158DC8  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80158DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158DD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80158DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158DD8  7C 08 03 A6 */	mtlr r0
/* 80158DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80158DE0  4E 80 00 20 */	blr 
