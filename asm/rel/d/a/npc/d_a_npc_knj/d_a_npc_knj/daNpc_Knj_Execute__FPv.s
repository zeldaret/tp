lbl_80A4473C:
/* 80A4473C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A44740  7C 08 02 A6 */	mflr r0
/* 80A44744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A44748  4B FF F2 8D */	bl Execute__11daNpc_Knj_cFv
/* 80A4474C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A44750  7C 08 03 A6 */	mtlr r0
/* 80A44754  38 21 00 10 */	addi r1, r1, 0x10
/* 80A44758  4E 80 00 20 */	blr 
