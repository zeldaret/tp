lbl_80156D78:
/* 80156D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80156D7C  7C 08 02 A6 */	mflr r0
/* 80156D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80156D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80156D88  7C 7F 1B 78 */	mr r31, r3
/* 80156D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80156D90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80156D94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80156D98  38 9F 07 24 */	addi r4, r31, 0x724
/* 80156D9C  4B F1 E3 65 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80156DA0  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80156DA4  98 7F 08 6E */	stb r3, 0x86e(r31)
/* 80156DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80156DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80156DB0  7C 08 03 A6 */	mtlr r0
/* 80156DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80156DB8  4E 80 00 20 */	blr 
