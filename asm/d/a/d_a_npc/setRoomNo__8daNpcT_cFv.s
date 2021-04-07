lbl_80148CCC:
/* 80148CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148CD0  7C 08 02 A6 */	mflr r0
/* 80148CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80148CDC  7C 7F 1B 78 */	mr r31, r3
/* 80148CE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80148CE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80148CE8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80148CEC  38 9F 09 44 */	addi r4, r31, 0x944
/* 80148CF0  4B F2 C4 11 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80148CF4  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80148CF8  98 7F 08 86 */	stb r3, 0x886(r31)
/* 80148CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80148D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148D04  7C 08 03 A6 */	mtlr r0
/* 80148D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80148D0C  4E 80 00 20 */	blr 
