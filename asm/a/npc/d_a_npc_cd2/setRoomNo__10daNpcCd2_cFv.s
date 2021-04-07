lbl_80158DE4:
/* 80158DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80158DE8  7C 08 02 A6 */	mflr r0
/* 80158DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80158DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80158DF4  7C 7F 1B 78 */	mr r31, r3
/* 80158DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80158DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80158E00  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80158E04  38 9F 07 28 */	addi r4, r31, 0x728
/* 80158E08  4B F1 C2 F9 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80158E0C  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80158E10  98 7F 08 72 */	stb r3, 0x872(r31)
/* 80158E14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80158E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80158E1C  7C 08 03 A6 */	mtlr r0
/* 80158E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80158E24  4E 80 00 20 */	blr 
