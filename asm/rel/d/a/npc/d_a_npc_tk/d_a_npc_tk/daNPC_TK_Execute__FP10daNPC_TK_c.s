lbl_80B0B8F0:
/* 80B0B8F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0B8F4  7C 08 02 A6 */	mflr r0
/* 80B0B8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0B8FC  4B FF FE D1 */	bl execute__10daNPC_TK_cFv
/* 80B0B900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0B904  7C 08 03 A6 */	mtlr r0
/* 80B0B908  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0B90C  4E 80 00 20 */	blr 
