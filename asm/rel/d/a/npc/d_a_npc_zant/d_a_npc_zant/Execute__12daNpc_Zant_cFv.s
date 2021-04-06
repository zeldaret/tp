lbl_80B6C734:
/* 80B6C734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6C738  7C 08 02 A6 */	mflr r0
/* 80B6C73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6C740  4B 5D BD ED */	bl execute__8daNpcT_cFv
/* 80B6C744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6C748  7C 08 03 A6 */	mtlr r0
/* 80B6C74C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6C750  4E 80 00 20 */	blr 
