lbl_8058F030:
/* 8058F030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F034  7C 08 02 A6 */	mflr r0
/* 8058F038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F03C  4B FF F2 09 */	bl create__13daLv2Candle_cFv
/* 8058F040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F044  7C 08 03 A6 */	mtlr r0
/* 8058F048  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F04C  4E 80 00 20 */	blr 
