lbl_806B5BBC:
/* 806B5BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5BC0  7C 08 02 A6 */	mflr r0
/* 806B5BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5BC8  4B FF F8 99 */	bl create__8daE_DT_cFv
/* 806B5BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5BD0  7C 08 03 A6 */	mtlr r0
/* 806B5BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5BD8  4E 80 00 20 */	blr 
