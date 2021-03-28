lbl_80CE7C24:
/* 80CE7C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7C28  7C 08 02 A6 */	mflr r0
/* 80CE7C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE7C34  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE7C38  7C 7E 1B 78 */	mr r30, r3
/* 80CE7C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE7C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE7C44  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80CE7C48  7F E3 FB 78 */	mr r3, r31
/* 80CE7C4C  38 9E 0A 64 */	addi r4, r30, 0xa64
/* 80CE7C50  4B 38 CF 98 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80CE7C54  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80CE7C58  7F E3 FB 78 */	mr r3, r31
/* 80CE7C5C  38 9E 0A 64 */	addi r4, r30, 0xa64
/* 80CE7C60  4B 38 D4 A0 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CE7C64  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80CE7C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7C6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE7C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7C74  7C 08 03 A6 */	mtlr r0
/* 80CE7C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7C7C  4E 80 00 20 */	blr 
