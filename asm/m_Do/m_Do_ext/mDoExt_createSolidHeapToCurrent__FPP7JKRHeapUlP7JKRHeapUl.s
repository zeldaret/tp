lbl_8000EF68:
/* 8000EF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000EF6C  7C 08 02 A6 */	mflr r0
/* 8000EF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000EF74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000EF78  28 03 00 00 */	cmplwi r3, 0
/* 8000EF7C  41 82 00 0C */	beq lbl_8000EF88
/* 8000EF80  80 0D 8D F4 */	lwz r0, sCurrentHeap__7JKRHeap(r13)
/* 8000EF84  90 03 00 00 */	stw r0, 0(r3)
lbl_8000EF88:
/* 8000EF88  7C 83 23 78 */	mr r3, r4
/* 8000EF8C  7C A4 2B 78 */	mr r4, r5
/* 8000EF90  7C C5 33 78 */	mr r5, r6
/* 8000EF94  4B FF FE AD */	bl mDoExt_createSolidHeap__FUlP7JKRHeapUl
/* 8000EF98  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000EF9C  41 82 00 08 */	beq lbl_8000EFA4
/* 8000EFA0  48 00 02 2D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
lbl_8000EFA4:
/* 8000EFA4  7F E3 FB 78 */	mr r3, r31
/* 8000EFA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000EFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EFB0  7C 08 03 A6 */	mtlr r0
/* 8000EFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EFB8  4E 80 00 20 */	blr 
