lbl_80BF4150:
/* 80BF4150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4154  7C 08 02 A6 */	mflr r0
/* 80BF4158  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF415C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF4160  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF4164  7C 7E 1B 78 */	mr r30, r3
/* 80BF4168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF416C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF4170  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80BF4174  7F E3 FB 78 */	mr r3, r31
/* 80BF4178  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80BF417C  4B 48 0A 6D */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80BF4180  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80BF4184  7F E3 FB 78 */	mr r3, r31
/* 80BF4188  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80BF418C  4B 48 0F 75 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80BF4190  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80BF4194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF4198  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF419C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF41A0  7C 08 03 A6 */	mtlr r0
/* 80BF41A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF41A8  4E 80 00 20 */	blr 
