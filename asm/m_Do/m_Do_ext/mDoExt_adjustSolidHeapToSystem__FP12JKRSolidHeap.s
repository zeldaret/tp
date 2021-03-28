lbl_8000F158:
/* 8000F158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F15C  7C 08 02 A6 */	mflr r0
/* 8000F160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000F168  4B FF FF 25 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8000F16C  7C 7F 1B 78 */	mr r31, r3
/* 8000F170  48 00 00 85 */	bl mDoExt_restoreCurrentHeap__Fv
/* 8000F174  7F E3 FB 78 */	mr r3, r31
/* 8000F178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000F17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000F180  7C 08 03 A6 */	mtlr r0
/* 8000F184  38 21 00 10 */	addi r1, r1, 0x10
/* 8000F188  4E 80 00 20 */	blr 
