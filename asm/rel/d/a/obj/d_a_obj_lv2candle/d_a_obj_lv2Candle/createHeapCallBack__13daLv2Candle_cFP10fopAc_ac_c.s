lbl_8058E608:
/* 8058E608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E60C  7C 08 02 A6 */	mflr r0
/* 8058E610  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E614  4B FF FB B1 */	bl CreateHeap__13daLv2Candle_cFv
/* 8058E618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E61C  7C 08 03 A6 */	mtlr r0
/* 8058E620  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E624  4E 80 00 20 */	blr 
