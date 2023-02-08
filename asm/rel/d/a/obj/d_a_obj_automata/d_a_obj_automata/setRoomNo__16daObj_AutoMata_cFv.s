lbl_80BA6690:
/* 80BA6690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6694  7C 08 02 A6 */	mflr r0
/* 80BA6698  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA669C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA66A0  7C 7F 1B 78 */	mr r31, r3
/* 80BA66A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA66A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA66AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BA66B0  38 9F 08 88 */	addi r4, r31, 0x888
/* 80BA66B4  4B 4C EA 4D */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80BA66B8  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80BA66BC  98 7F 08 1A */	stb r3, 0x81a(r31)
/* 80BA66C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA66C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA66C8  7C 08 03 A6 */	mtlr r0
/* 80BA66CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA66D0  4E 80 00 20 */	blr 
