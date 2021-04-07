lbl_8003FC70:
/* 8003FC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003FC74  7C 08 02 A6 */	mflr r0
/* 8003FC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003FC7C  38 00 00 01 */	li r0, 1
/* 8003FC80  98 0D 80 B6 */	stb r0, struct_80450634+0x2(r13)
/* 8003FC84  3C 60 80 42 */	lis r3, m_texObjAgg__8dMpath_n@ha /* 0x80424684@ha */
/* 8003FC88  38 63 46 84 */	addi r3, r3, m_texObjAgg__8dMpath_n@l /* 0x80424684@l */
/* 8003FC8C  4B FF CC 69 */	bl remove__Q28dMpath_n18dTexObjAggregate_cFv
/* 8003FC90  4B FF FA C5 */	bl remove__10dMapInfo_cFv
/* 8003FC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003FC98  7C 08 03 A6 */	mtlr r0
/* 8003FC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003FCA0  4E 80 00 20 */	blr 
