lbl_809D088C:
/* 809D088C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D0890  7C 08 02 A6 */	mflr r0
/* 809D0894  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D0898  4B 78 17 7D */	bl execute__8daNpcF_cFv
/* 809D089C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D08A0  7C 08 03 A6 */	mtlr r0
/* 809D08A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D08A8  4E 80 00 20 */	blr 
