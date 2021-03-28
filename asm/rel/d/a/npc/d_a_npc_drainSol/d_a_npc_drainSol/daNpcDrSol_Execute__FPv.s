lbl_809AED60:
/* 809AED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AED64  7C 08 02 A6 */	mflr r0
/* 809AED68  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AED6C  4B FF F7 E5 */	bl Execute__12daNpcDrSol_cFv
/* 809AED70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AED74  7C 08 03 A6 */	mtlr r0
/* 809AED78  38 21 00 10 */	addi r1, r1, 0x10
/* 809AED7C  4E 80 00 20 */	blr 
