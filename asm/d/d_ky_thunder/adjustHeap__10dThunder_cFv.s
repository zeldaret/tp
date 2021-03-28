lbl_801ADFB4:
/* 801ADFB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADFB8  7C 08 02 A6 */	mflr r0
/* 801ADFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADFC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ADFC4  7C 7F 1B 78 */	mr r31, r3
/* 801ADFC8  4B E6 12 2D */	bl mDoExt_restoreCurrentHeap__Fv
/* 801ADFCC  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 801ADFD0  4B E6 10 BD */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 801ADFD4  2C 03 00 00 */	cmpwi r3, 0
/* 801ADFD8  41 80 00 14 */	blt lbl_801ADFEC
/* 801ADFDC  80 7F 00 F8 */	lwz r3, 0xf8(r31)
/* 801ADFE0  80 83 00 38 */	lwz r4, 0x38(r3)
/* 801ADFE4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 801ADFE8  48 18 D6 51 */	bl DCStoreRangeNoSync
lbl_801ADFEC:
/* 801ADFEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ADFF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADFF4  7C 08 03 A6 */	mtlr r0
/* 801ADFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADFFC  4E 80 00 20 */	blr 
