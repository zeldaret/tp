lbl_80949544:
/* 80949544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80949548  7C 08 02 A6 */	mflr r0
/* 8094954C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80949550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80949554  7C 7F 1B 78 */	mr r31, r3
/* 80949558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094955C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80949560  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80949564  38 9F 06 80 */	addi r4, r31, 0x680
/* 80949568  4B 72 BB 99 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 8094956C  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80949570  98 7F 06 CA */	stb r3, 0x6ca(r31)
/* 80949574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80949578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094957C  7C 08 03 A6 */	mtlr r0
/* 80949580  38 21 00 10 */	addi r1, r1, 0x10
/* 80949584  4E 80 00 20 */	blr 
