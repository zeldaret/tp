lbl_80C4C93C:
/* 80C4C93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4C940  7C 08 02 A6 */	mflr r0
/* 80C4C944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4C948  4B FF FB CD */	bl Execute__10daObjKUW_cFv
/* 80C4C94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4C950  7C 08 03 A6 */	mtlr r0
/* 80C4C954  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4C958  4E 80 00 20 */	blr 
