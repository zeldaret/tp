lbl_80CE7C80:
/* 80CE7C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7C84  7C 08 02 A6 */	mflr r0
/* 80CE7C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7C90  7C 7F 1B 78 */	mr r31, r3
/* 80CE7C94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE7C98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE7C9C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CE7CA0  38 9F 0A 64 */	addi r4, r31, 0xa64
/* 80CE7CA4  4B 38 D4 5C */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CE7CA8  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80CE7CAC  98 7F 07 7E */	stb r3, 0x77e(r31)
/* 80CE7CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7CB8  7C 08 03 A6 */	mtlr r0
/* 80CE7CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7CC0  4E 80 00 20 */	blr 
