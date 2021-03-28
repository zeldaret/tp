lbl_8058761C:
/* 8058761C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80587620  7C 08 02 A6 */	mflr r0
/* 80587624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058762C  7C 7F 1B 78 */	mr r31, r3
/* 80587630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80587634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80587638  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8058763C  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80587640  4B AE DA C0 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80587644  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80587648  98 7F 07 72 */	stb r3, 0x772(r31)
/* 8058764C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80587650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587654  7C 08 03 A6 */	mtlr r0
/* 80587658  38 21 00 10 */	addi r1, r1, 0x10
/* 8058765C  4E 80 00 20 */	blr 
