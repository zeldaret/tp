lbl_80C2A890:
/* 80C2A890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2A894  7C 08 02 A6 */	mflr r0
/* 80C2A898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2A89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2A8A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C2A8A4  7C 7E 1B 78 */	mr r30, r3
/* 80C2A8A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2A8AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2A8B0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C2A8B4  7F E3 FB 78 */	mr r3, r31
/* 80C2A8B8  38 9E 07 E4 */	addi r4, r30, 0x7e4
/* 80C2A8BC  4B 44 A3 2D */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80C2A8C0  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80C2A8C4  7F E3 FB 78 */	mr r3, r31
/* 80C2A8C8  38 9E 07 E4 */	addi r4, r30, 0x7e4
/* 80C2A8CC  4B 44 A8 35 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C2A8D0  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80C2A8D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2A8D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C2A8DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2A8E0  7C 08 03 A6 */	mtlr r0
/* 80C2A8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2A8E8  4E 80 00 20 */	blr 
