lbl_80C14C54:
/* 80C14C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C14C58  7C 08 02 A6 */	mflr r0
/* 80C14C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C14C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C14C64  93 C1 00 08 */	stw r30, 8(r1)
/* 80C14C68  7C 7E 1B 78 */	mr r30, r3
/* 80C14C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C14C70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C14C74  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C14C78  7F E3 FB 78 */	mr r3, r31
/* 80C14C7C  38 9E 07 D8 */	addi r4, r30, 0x7d8
/* 80C14C80  4B 45 FF 68 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80C14C84  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80C14C88  7F E3 FB 78 */	mr r3, r31
/* 80C14C8C  38 9E 07 D8 */	addi r4, r30, 0x7d8
/* 80C14C90  4B 46 04 70 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C14C94  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80C14C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C14C9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C14CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C14CA4  7C 08 03 A6 */	mtlr r0
/* 80C14CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C14CAC  4E 80 00 20 */	blr 
