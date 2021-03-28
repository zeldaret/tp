lbl_80B9F790:
/* 80B9F790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F794  7C 08 02 A6 */	mflr r0
/* 80B9F798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F79C  4B FF F6 99 */	bl create__11daTvCdlst_cFv
/* 80B9F7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F7A4  7C 08 03 A6 */	mtlr r0
/* 80B9F7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F7AC  4E 80 00 20 */	blr 
