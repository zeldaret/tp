lbl_8075FA60:
/* 8075FA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8075FA64  7C 08 02 A6 */	mflr r0
/* 8075FA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075FA6C  4B FF FE F9 */	bl execute__8daE_PZ_cFv
/* 8075FA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075FA74  7C 08 03 A6 */	mtlr r0
/* 8075FA78  38 21 00 10 */	addi r1, r1, 0x10
/* 8075FA7C  4E 80 00 20 */	blr 
