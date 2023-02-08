lbl_80D0773C:
/* 80D0773C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07740  7C 08 02 A6 */	mflr r0
/* 80D07744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07748  4B FF F9 F9 */	bl create__11daTkraDai_cFv
/* 80D0774C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07750  7C 08 03 A6 */	mtlr r0
/* 80D07754  38 21 00 10 */	addi r1, r1, 0x10
/* 80D07758  4E 80 00 20 */	blr 
