lbl_80B9F144:
/* 80B9F144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9F148  7C 08 02 A6 */	mflr r0
/* 80B9F14C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9F150  4B FF FC 79 */	bl CreateHeap__11daTvCdlst_cFv
/* 80B9F154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9F158  7C 08 03 A6 */	mtlr r0
/* 80B9F15C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9F160  4E 80 00 20 */	blr 
