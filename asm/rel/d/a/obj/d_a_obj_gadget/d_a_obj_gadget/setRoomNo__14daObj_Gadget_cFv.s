lbl_80BF41AC:
/* 80BF41AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF41B0  7C 08 02 A6 */	mflr r0
/* 80BF41B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF41B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF41BC  7C 7F 1B 78 */	mr r31, r3
/* 80BF41C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF41C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF41C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BF41CC  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80BF41D0  4B 48 0F 31 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80BF41D4  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80BF41D8  98 7F 07 72 */	stb r3, 0x772(r31)
/* 80BF41DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF41E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF41E4  7C 08 03 A6 */	mtlr r0
/* 80BF41E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF41EC  4E 80 00 20 */	blr 
