lbl_8073C948:
/* 8073C948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C94C  7C 08 02 A6 */	mflr r0
/* 8073C950  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C954  4B FF F9 C9 */	bl create__8daE_OT_cFv
/* 8073C958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C95C  7C 08 03 A6 */	mtlr r0
/* 8073C960  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C964  4E 80 00 20 */	blr 
