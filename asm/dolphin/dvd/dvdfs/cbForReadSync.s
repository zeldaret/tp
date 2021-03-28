lbl_80348F5C:
/* 80348F5C  7C 08 02 A6 */	mflr r0
/* 80348F60  38 6D 91 F0 */	la r3, __DVDThreadQueue(r13) /* 80451770-_SDA_BASE_ */
/* 80348F64  90 01 00 04 */	stw r0, 4(r1)
/* 80348F68  94 21 FF F8 */	stwu r1, -8(r1)
/* 80348F6C  4B FF 8D 2D */	bl OSWakeupThread
/* 80348F70  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80348F74  38 21 00 08 */	addi r1, r1, 8
/* 80348F78  7C 08 03 A6 */	mtlr r0
/* 80348F7C  4E 80 00 20 */	blr 
