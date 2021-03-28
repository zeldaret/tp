lbl_8000B768:
/* 8000B768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000B76C  7C 08 02 A6 */	mflr r0
/* 8000B770  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000B774  7C 60 1B 78 */	mr r0, r3
/* 8000B778  7C 85 23 78 */	mr r5, r4
/* 8000B77C  80 6D 8F 88 */	lwz r3, sErrorManager__12JUTException(r13)
/* 8000B780  7C 04 03 78 */	mr r4, r0
/* 8000B784  48 2D 77 D1 */	bl readPad__12JUTExceptionFPUlPUl
/* 8000B788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000B78C  7C 08 03 A6 */	mtlr r0
/* 8000B790  38 21 00 10 */	addi r1, r1, 0x10
/* 8000B794  4E 80 00 20 */	blr 
