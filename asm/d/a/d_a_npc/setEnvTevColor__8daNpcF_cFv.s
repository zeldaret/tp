lbl_80152D84:
/* 80152D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152D88  7C 08 02 A6 */	mflr r0
/* 80152D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80152D94  93 C1 00 08 */	stw r30, 8(r1)
/* 80152D98  7C 7E 1B 78 */	mr r30, r3
/* 80152D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80152DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80152DA4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80152DA8  7F E3 FB 78 */	mr r3, r31
/* 80152DAC  38 9E 0A 58 */	addi r4, r30, 0xa58
/* 80152DB0  4B F2 1E 39 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80152DB4  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80152DB8  7F E3 FB 78 */	mr r3, r31
/* 80152DBC  38 9E 0A 58 */	addi r4, r30, 0xa58
/* 80152DC0  4B F2 23 41 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80152DC4  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80152DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80152DCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80152DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152DD4  7C 08 03 A6 */	mtlr r0
/* 80152DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80152DDC  4E 80 00 20 */	blr 
