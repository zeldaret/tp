lbl_80A05350:
/* 80A05350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05354  7C 08 02 A6 */	mflr r0
/* 80A05358  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0535C  4B FF CA 2D */	bl Execute__11daNpc_Hoz_cFv
/* 80A05360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05364  7C 08 03 A6 */	mtlr r0
/* 80A05368  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0536C  4E 80 00 20 */	blr 
