lbl_80CB1644:
/* 80CB1644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1648  7C 08 02 A6 */	mflr r0
/* 80CB164C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1654  7C 7F 1B 78 */	mr r31, r3
/* 80CB1658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB165C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB1660  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB1664  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80CB1668  4B 3C 3A 98 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CB166C  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80CB1670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1678  7C 08 03 A6 */	mtlr r0
/* 80CB167C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1680  4E 80 00 20 */	blr 
