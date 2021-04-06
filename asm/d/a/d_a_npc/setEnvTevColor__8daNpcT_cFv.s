lbl_80148C70:
/* 80148C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148C74  7C 08 02 A6 */	mflr r0
/* 80148C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148C7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80148C80  93 C1 00 08 */	stw r30, 8(r1)
/* 80148C84  7C 7E 1B 78 */	mr r30, r3
/* 80148C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80148C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80148C90  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80148C94  7F E3 FB 78 */	mr r3, r31
/* 80148C98  38 9E 09 44 */	addi r4, r30, 0x944
/* 80148C9C  4B F2 BF 4D */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80148CA0  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80148CA4  7F E3 FB 78 */	mr r3, r31
/* 80148CA8  38 9E 09 44 */	addi r4, r30, 0x944
/* 80148CAC  4B F2 C4 55 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80148CB0  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80148CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80148CB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80148CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148CC0  7C 08 03 A6 */	mtlr r0
/* 80148CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80148CC8  4E 80 00 20 */	blr 
