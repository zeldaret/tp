lbl_80C12A94:
/* 80C12A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12A98  7C 08 02 A6 */	mflr r0
/* 80C12A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C12AA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12AA4  7C 7F 1B 78 */	mr r31, r3
/* 80C12AA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C12AAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C12AB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C12AB4  38 9F 09 50 */	addi r4, r31, 0x950
/* 80C12AB8  4B 46 26 49 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C12ABC  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80C12AC0  98 7F 07 A6 */	stb r3, 0x7a6(r31)
/* 80C12AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C12AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C12ACC  7C 08 03 A6 */	mtlr r0
/* 80C12AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C12AD4  4E 80 00 20 */	blr 
