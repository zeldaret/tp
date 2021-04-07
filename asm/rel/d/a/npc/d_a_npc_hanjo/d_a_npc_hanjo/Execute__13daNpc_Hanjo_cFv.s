lbl_809F9B6C:
/* 809F9B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9B70  7C 08 02 A6 */	mflr r0
/* 809F9B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9B78  4B 74 E9 B5 */	bl execute__8daNpcT_cFv
/* 809F9B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9B80  7C 08 03 A6 */	mtlr r0
/* 809F9B84  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9B88  4E 80 00 20 */	blr 
