lbl_80A4475C:
/* 80A4475C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A44760  7C 08 02 A6 */	mflr r0
/* 80A44764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A44768  4B FF F2 8D */	bl Draw__11daNpc_Knj_cFv
/* 80A4476C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A44770  7C 08 03 A6 */	mtlr r0
/* 80A44774  38 21 00 10 */	addi r1, r1, 0x10
/* 80A44778  4E 80 00 20 */	blr 
