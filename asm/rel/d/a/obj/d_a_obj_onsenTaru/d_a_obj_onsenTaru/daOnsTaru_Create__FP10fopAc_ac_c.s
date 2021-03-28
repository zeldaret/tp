lbl_80CA9A10:
/* 80CA9A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9A14  7C 08 02 A6 */	mflr r0
/* 80CA9A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9A1C  4B FF ED 99 */	bl create__11daOnsTaru_cFv
/* 80CA9A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9A24  7C 08 03 A6 */	mtlr r0
/* 80CA9A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9A2C  4E 80 00 20 */	blr 
