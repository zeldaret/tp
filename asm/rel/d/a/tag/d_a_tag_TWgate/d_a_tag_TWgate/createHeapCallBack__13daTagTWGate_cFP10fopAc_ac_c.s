lbl_80D55160:
/* 80D55160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55164  7C 08 02 A6 */	mflr r0
/* 80D55168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5516C  48 00 00 15 */	bl CreateHeap__13daTagTWGate_cFv
/* 80D55170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55174  7C 08 03 A6 */	mtlr r0
/* 80D55178  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5517C  4E 80 00 20 */	blr 
