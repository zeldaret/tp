lbl_80C11730:
/* 80C11730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11734  7C 08 02 A6 */	mflr r0
/* 80C11738  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1173C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C11740  93 C1 00 08 */	stw r30, 8(r1)
/* 80C11744  7C 7E 1B 78 */	mr r30, r3
/* 80C11748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1174C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C11750  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80C11754  7F E3 FB 78 */	mr r3, r31
/* 80C11758  38 9E 09 88 */	addi r4, r30, 0x988
/* 80C1175C  4B 46 34 8C */	b GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80C11760  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80C11764  7F E3 FB 78 */	mr r3, r31
/* 80C11768  38 9E 09 88 */	addi r4, r30, 0x988
/* 80C1176C  4B 46 39 94 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80C11770  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80C11774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C11778  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1177C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C11780  7C 08 03 A6 */	mtlr r0
/* 80C11784  38 21 00 10 */	addi r1, r1, 0x10
/* 80C11788  4E 80 00 20 */	blr 
