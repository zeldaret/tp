lbl_80D3B518:
/* 80D3B518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B51C  7C 08 02 A6 */	mflr r0
/* 80D3B520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B524  4B FF EF 59 */	bl create__14daObjWStatue_cFv
/* 80D3B528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B52C  7C 08 03 A6 */	mtlr r0
/* 80D3B530  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B534  4E 80 00 20 */	blr 
