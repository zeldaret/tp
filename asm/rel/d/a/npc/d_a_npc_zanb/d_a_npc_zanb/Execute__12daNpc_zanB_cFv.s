lbl_80B69790:
/* 80B69790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B69794  7C 08 02 A6 */	mflr r0
/* 80B69798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6979C  4B 5D ED 91 */	bl execute__8daNpcT_cFv
/* 80B697A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B697A4  7C 08 03 A6 */	mtlr r0
/* 80B697A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B697AC  4E 80 00 20 */	blr 
