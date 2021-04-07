lbl_80C2A8EC:
/* 80C2A8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2A8F0  7C 08 02 A6 */	mflr r0
/* 80C2A8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2A8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2A8FC  7C 7F 1B 78 */	mr r31, r3
/* 80C2A900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2A904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2A908  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C2A90C  38 9F 07 E4 */	addi r4, r31, 0x7e4
/* 80C2A910  4B 44 A7 F1 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C2A914  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80C2A918  98 7F 07 76 */	stb r3, 0x776(r31)
/* 80C2A91C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2A920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2A924  7C 08 03 A6 */	mtlr r0
/* 80C2A928  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2A92C  4E 80 00 20 */	blr 
