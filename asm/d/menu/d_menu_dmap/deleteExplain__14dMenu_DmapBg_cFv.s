lbl_801B9164:
/* 801B9164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B9168  7C 08 02 A6 */	mflr r0
/* 801B916C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B9170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B9174  93 C1 00 08 */	stw r30, 8(r1)
/* 801B9178  7C 7E 1B 78 */	mr r30, r3
/* 801B917C  80 03 0D 18 */	lwz r0, 0xd18(r3)
/* 801B9180  28 00 00 00 */	cmplwi r0, 0
/* 801B9184  41 82 00 40 */	beq lbl_801B91C4
/* 801B9188  80 7E 0C 9C */	lwz r3, 0xc9c(r30)
/* 801B918C  4B E5 60 41 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B9190  7C 7F 1B 78 */	mr r31, r3
/* 801B9194  80 7E 0D 18 */	lwz r3, 0xd18(r30)
/* 801B9198  28 03 00 00 */	cmplwi r3, 0
/* 801B919C  41 82 00 18 */	beq lbl_801B91B4
/* 801B91A0  38 80 00 01 */	li r4, 1
/* 801B91A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B91A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801B91AC  7D 89 03 A6 */	mtctr r12
/* 801B91B0  4E 80 04 21 */	bctrl 
lbl_801B91B4:
/* 801B91B4  38 00 00 00 */	li r0, 0
/* 801B91B8  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 801B91BC  7F E3 FB 78 */	mr r3, r31
/* 801B91C0  4B E5 60 0D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
lbl_801B91C4:
/* 801B91C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B91C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B91CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B91D0  7C 08 03 A6 */	mtlr r0
/* 801B91D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B91D8  4E 80 00 20 */	blr 
