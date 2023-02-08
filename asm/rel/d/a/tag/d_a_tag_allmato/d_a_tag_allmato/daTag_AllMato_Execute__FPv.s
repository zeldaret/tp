lbl_804890F0:
/* 804890F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804890F4  7C 08 02 A6 */	mflr r0
/* 804890F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804890FC  4B FF E5 BD */	bl Execute__15daTag_AllMato_cFv
/* 80489100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80489104  7C 08 03 A6 */	mtlr r0
/* 80489108  38 21 00 10 */	addi r1, r1, 0x10
/* 8048910C  4E 80 00 20 */	blr 
