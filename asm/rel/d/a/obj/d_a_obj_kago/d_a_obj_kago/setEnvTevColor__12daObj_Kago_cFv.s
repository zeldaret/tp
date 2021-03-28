lbl_80C334B4:
/* 80C334B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C334B8  7C 08 02 A6 */	mflr r0
/* 80C334BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C334C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C334C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C334C8  7C 7E 1B 78 */	mr r30, r3
/* 80C334CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C334D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C334D4  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C334D8  7F E3 FB 78 */	mr r3, r31
/* 80C334DC  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80C334E0  4B 44 17 08 */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80C334E4  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80C334E8  7F E3 FB 78 */	mr r3, r31
/* 80C334EC  38 9E 07 E0 */	addi r4, r30, 0x7e0
/* 80C334F0  4B 44 1C 10 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C334F4  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80C334F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C334FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C33500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33504  7C 08 03 A6 */	mtlr r0
/* 80C33508  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3350C  4E 80 00 20 */	blr 
