lbl_80599BE8:
/* 80599BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599BEC  7C 08 02 A6 */	mflr r0
/* 80599BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80599BF8  7C 7F 1B 78 */	mr r31, r3
/* 80599BFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80599C00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80599C04  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80599C08  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80599C0C  4B AD B4 F5 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80599C10  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80599C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80599C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599C1C  7C 08 03 A6 */	mtlr r0
/* 80599C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80599C24  4E 80 00 20 */	blr 
