lbl_8014F0FC:
/* 8014F0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014F100  7C 08 02 A6 */	mflr r0
/* 8014F104  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014F108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014F10C  7C 7F 1B 78 */	mr r31, r3
/* 8014F110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8014F114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8014F118  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8014F11C  38 9F 09 E8 */	addi r4, r31, 0x9e8
/* 8014F120  4B F2 5F E1 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8014F124  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 8014F128  98 7F 08 BE */	stb r3, 0x8be(r31)
/* 8014F12C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014F130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014F134  7C 08 03 A6 */	mtlr r0
/* 8014F138  38 21 00 10 */	addi r1, r1, 0x10
/* 8014F13C  4E 80 00 20 */	blr 
