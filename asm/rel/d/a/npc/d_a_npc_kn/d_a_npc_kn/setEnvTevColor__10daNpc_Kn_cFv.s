lbl_80A38FAC:
/* 80A38FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A38FB0  7C 08 02 A6 */	mflr r0
/* 80A38FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A38FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A38FBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A38FC0  7C 7E 1B 78 */	mr r30, r3
/* 80A38FC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A38FC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A38FCC  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80A38FD0  7F E3 FB 78 */	mr r3, r31
/* 80A38FD4  38 9E 09 78 */	addi r4, r30, 0x978
/* 80A38FD8  4B 63 BC 10 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80A38FDC  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80A38FE0  7F E3 FB 78 */	mr r3, r31
/* 80A38FE4  38 9E 09 78 */	addi r4, r30, 0x978
/* 80A38FE8  4B 63 C1 18 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80A38FEC  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80A38FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A38FF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A38FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A38FFC  7C 08 03 A6 */	mtlr r0
/* 80A39000  38 21 00 10 */	addi r1, r1, 0x10
/* 80A39004  4E 80 00 20 */	blr 
