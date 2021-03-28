lbl_80BBC19C:
/* 80BBC19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC1A0  7C 08 02 A6 */	mflr r0
/* 80BBC1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC1A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBC1AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBC1B0  7C 7E 1B 78 */	mr r30, r3
/* 80BBC1B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BBC1B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BBC1BC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80BBC1C0  7F E3 FB 78 */	mr r3, r31
/* 80BBC1C4  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80BBC1C8  4B 4B 8A 20 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80BBC1CC  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80BBC1D0  7F E3 FB 78 */	mr r3, r31
/* 80BBC1D4  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80BBC1D8  4B 4B 8F 28 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80BBC1DC  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80BBC1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBC1E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBC1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC1EC  7C 08 03 A6 */	mtlr r0
/* 80BBC1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC1F4  4E 80 00 20 */	blr 
