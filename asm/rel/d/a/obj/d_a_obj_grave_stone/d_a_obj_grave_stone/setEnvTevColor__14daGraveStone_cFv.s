lbl_80C12A38:
/* 80C12A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12A3C  7C 08 02 A6 */	mflr r0
/* 80C12A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C12A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12A48  93 C1 00 08 */	stw r30, 8(r1)
/* 80C12A4C  7C 7E 1B 78 */	mr r30, r3
/* 80C12A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C12A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C12A58  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C12A5C  7F E3 FB 78 */	mr r3, r31
/* 80C12A60  38 9E 09 50 */	addi r4, r30, 0x950
/* 80C12A64  4B 46 21 85 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80C12A68  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80C12A6C  7F E3 FB 78 */	mr r3, r31
/* 80C12A70  38 9E 09 50 */	addi r4, r30, 0x950
/* 80C12A74  4B 46 26 8D */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C12A78  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80C12A7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C12A80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C12A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C12A88  7C 08 03 A6 */	mtlr r0
/* 80C12A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C12A90  4E 80 00 20 */	blr 
