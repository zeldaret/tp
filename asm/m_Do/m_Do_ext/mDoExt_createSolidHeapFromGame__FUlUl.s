lbl_8000EED8:
/* 8000EED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000EEDC  7C 08 02 A6 */	mflr r0
/* 8000EEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000EEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000EEE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8000EEEC  7C 7E 1B 78 */	mr r30, r3
/* 8000EEF0  7C 9F 23 78 */	mr r31, r4
/* 8000EEF4  4B FF FE 5D */	bl mDoExt_getGameHeap__Fv
/* 8000EEF8  7C 64 1B 78 */	mr r4, r3
/* 8000EEFC  7F C3 F3 78 */	mr r3, r30
/* 8000EF00  7F E5 FB 78 */	mr r5, r31
/* 8000EF04  4B FF FF 3D */	bl mDoExt_createSolidHeap__FUlP7JKRHeapUl
/* 8000EF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000EF0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000EF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000EF14  7C 08 03 A6 */	mtlr r0
/* 8000EF18  38 21 00 10 */	addi r1, r1, 0x10
/* 8000EF1C  4E 80 00 20 */	blr 
