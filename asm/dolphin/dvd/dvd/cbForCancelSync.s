lbl_8034B5FC:
/* 8034B5FC  7C 08 02 A6 */	mflr r0
/* 8034B600  38 6D 91 F0 */	la r3, __DVDThreadQueue(r13) /* 80451770-_SDA_BASE_ */
/* 8034B604  90 01 00 04 */	stw r0, 4(r1)
/* 8034B608  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034B60C  4B FF 66 8D */	bl OSWakeupThread
/* 8034B610  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034B614  38 21 00 08 */	addi r1, r1, 8
/* 8034B618  7C 08 03 A6 */	mtlr r0
/* 8034B61C  4E 80 00 20 */	blr 
