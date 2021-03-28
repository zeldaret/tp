lbl_8015F168:
/* 8015F168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F16C  7C 08 02 A6 */	mflr r0
/* 8015F170  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015F178  7C 7F 1B 78 */	mr r31, r3
/* 8015F17C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015F180  48 16 F4 4D */	bl freeAll__7JKRHeapFv
/* 8015F184  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8015F188  4B EB 00 45 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8015F18C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015F190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F194  7C 08 03 A6 */	mtlr r0
/* 8015F198  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F19C  4E 80 00 20 */	blr 
