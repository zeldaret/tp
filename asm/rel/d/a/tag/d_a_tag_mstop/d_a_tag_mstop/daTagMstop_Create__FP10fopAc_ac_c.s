lbl_805A6318:
/* 805A6318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A631C  7C 08 02 A6 */	mflr r0
/* 805A6320  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6324  4B FF FE 15 */	bl create__12daTagMstop_cFv
/* 805A6328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A632C  7C 08 03 A6 */	mtlr r0
/* 805A6330  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6334  4E 80 00 20 */	blr 
