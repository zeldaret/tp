lbl_80152DE0:
/* 80152DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152DE4  7C 08 02 A6 */	mflr r0
/* 80152DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80152DF0  7C 7F 1B 78 */	mr r31, r3
/* 80152DF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80152DF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80152DFC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80152E00  38 9F 0A 58 */	addi r4, r31, 0xa58
/* 80152E04  4B F2 22 FD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80152E08  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80152E0C  98 7F 07 CA */	stb r3, 0x7ca(r31)
/* 80152E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80152E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152E18  7C 08 03 A6 */	mtlr r0
/* 80152E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80152E20  4E 80 00 20 */	blr 
