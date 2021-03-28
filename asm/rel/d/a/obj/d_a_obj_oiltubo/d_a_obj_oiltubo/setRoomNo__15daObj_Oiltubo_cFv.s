lbl_80CA7374:
/* 80CA7374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA7378  7C 08 02 A6 */	mflr r0
/* 80CA737C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA7380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA7384  7C 7F 1B 78 */	mr r31, r3
/* 80CA7388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA738C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA7390  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CA7394  38 9F 0A 70 */	addi r4, r31, 0xa70
/* 80CA7398  4B 3C DD 68 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CA739C  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80CA73A0  98 7F 07 8A */	stb r3, 0x78a(r31)
/* 80CA73A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA73A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA73AC  7C 08 03 A6 */	mtlr r0
/* 80CA73B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA73B4  4E 80 00 20 */	blr 
