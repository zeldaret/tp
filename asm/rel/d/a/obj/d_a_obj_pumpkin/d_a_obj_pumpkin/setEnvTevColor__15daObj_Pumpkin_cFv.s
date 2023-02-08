lbl_80CB78C8:
/* 80CB78C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB78CC  7C 08 02 A6 */	mflr r0
/* 80CB78D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB78D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB78D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB78DC  7C 7E 1B 78 */	mr r30, r3
/* 80CB78E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB78E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB78E8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CB78EC  7F E3 FB 78 */	mr r3, r31
/* 80CB78F0  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CB78F4  4B 3B D2 F5 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80CB78F8  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80CB78FC  7F E3 FB 78 */	mr r3, r31
/* 80CB7900  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80CB7904  4B 3B D7 FD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CB7908  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80CB790C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB7910  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB7914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB7918  7C 08 03 A6 */	mtlr r0
/* 80CB791C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB7920  4E 80 00 20 */	blr 
