lbl_80C1178C:
/* 80C1178C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11790  7C 08 02 A6 */	mflr r0
/* 80C11794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C11798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1179C  7C 7F 1B 78 */	mr r31, r3
/* 80C117A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C117A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C117A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C117AC  38 9F 09 88 */	addi r4, r31, 0x988
/* 80C117B0  4B 46 39 50 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C117B4  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80C117B8  98 7F 07 DE */	stb r3, 0x7de(r31)
/* 80C117BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C117C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C117C4  7C 08 03 A6 */	mtlr r0
/* 80C117C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C117CC  4E 80 00 20 */	blr 
