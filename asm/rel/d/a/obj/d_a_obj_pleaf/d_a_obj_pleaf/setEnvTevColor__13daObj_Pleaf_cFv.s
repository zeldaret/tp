lbl_80CB15E8:
/* 80CB15E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB15EC  7C 08 02 A6 */	mflr r0
/* 80CB15F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB15F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB15F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB15FC  7C 7E 1B 78 */	mr r30, r3
/* 80CB1600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB1604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB1608  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CB160C  7F E3 FB 78 */	mr r3, r31
/* 80CB1610  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CB1614  4B 3C 35 D5 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80CB1618  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80CB161C  7F E3 FB 78 */	mr r3, r31
/* 80CB1620  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CB1624  4B 3C 3A DD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CB1628  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80CB162C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1630  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB1634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1638  7C 08 03 A6 */	mtlr r0
/* 80CB163C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1640  4E 80 00 20 */	blr 
