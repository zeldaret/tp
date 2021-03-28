lbl_8003FB70:
/* 8003FB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003FB74  7C 08 02 A6 */	mflr r0
/* 8003FB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003FB7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003FB80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003FB84  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8003FB88  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8003FB8C  7D 89 03 A6 */	mtctr r12
/* 8003FB90  4E 80 04 21 */	bctrl 
/* 8003FB94  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8003FB98  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8003FB9C  28 00 00 03 */	cmplwi r0, 3
/* 8003FBA0  41 82 00 10 */	beq lbl_8003FBB0
/* 8003FBA4  48 00 00 2D */	bl reset__8dMpath_cFv
/* 8003FBA8  38 00 00 00 */	li r0, 0
/* 8003FBAC  98 0D 89 08 */	stb r0, data_80450E88(r13)
lbl_8003FBB0:
/* 8003FBB0  3C 60 80 42 */	lis r3, m_texObjAgg__8dMpath_n@ha
/* 8003FBB4  38 63 46 84 */	addi r3, r3, m_texObjAgg__8dMpath_n@l
/* 8003FBB8  4B FF CC A5 */	bl create__Q28dMpath_n18dTexObjAggregate_cFv
/* 8003FBBC  4B FF FB 79 */	bl create__10dMapInfo_cFv
/* 8003FBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003FBC4  7C 08 03 A6 */	mtlr r0
/* 8003FBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003FBCC  4E 80 00 20 */	blr 
