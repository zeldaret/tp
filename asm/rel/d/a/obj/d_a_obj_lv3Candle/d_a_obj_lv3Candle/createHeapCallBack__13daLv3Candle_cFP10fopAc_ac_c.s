lbl_80C57F6C:
/* 80C57F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57F70  7C 08 02 A6 */	mflr r0
/* 80C57F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57F78  4B FF FC 49 */	bl CreateHeap__13daLv3Candle_cFv
/* 80C57F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57F80  7C 08 03 A6 */	mtlr r0
/* 80C57F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57F88  4E 80 00 20 */	blr 
