lbl_8000F044:
/* 8000F044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F048  7C 08 02 A6 */	mflr r0
/* 8000F04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000F054  93 C1 00 08 */	stw r30, 8(r1)
/* 8000F058  7C 7E 1B 78 */	mr r30, r3
/* 8000F05C  7C 9F 23 78 */	mr r31, r4
/* 8000F060  4B FF FC F1 */	bl mDoExt_getGameHeap__Fv
/* 8000F064  7C 64 1B 78 */	mr r4, r3
/* 8000F068  7F C3 F3 78 */	mr r3, r30
/* 8000F06C  7F E5 FB 78 */	mr r5, r31
/* 8000F070  4B FF FF 4D */	bl mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl
/* 8000F074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000F078  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000F07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000F080  7C 08 03 A6 */	mtlr r0
/* 8000F084  38 21 00 10 */	addi r1, r1, 0x10
/* 8000F088  4E 80 00 20 */	blr 
