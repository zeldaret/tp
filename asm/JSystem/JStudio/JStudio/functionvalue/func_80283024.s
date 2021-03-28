lbl_80283024:
/* 80283024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80283028  7C 08 02 A6 */	mflr r0
/* 8028302C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283030  80 63 00 54 */	lwz r3, 0x54(r3)
/* 80283034  C0 43 FF F8 */	lfs f2, -8(r3)
/* 80283038  C0 63 FF FC */	lfs f3, -4(r3)
/* 8028303C  C8 82 BA 00 */	lfd f4, lit_652(r2)
/* 80283040  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80283044  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80283048  FC E0 20 90 */	fmr f7, f4
/* 8028304C  4B FF E6 C5 */	bl interpolateValue_hermite__Q27JStudio13functionvalueFddddddd
/* 80283050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283054  7C 08 03 A6 */	mtlr r0
/* 80283058  38 21 00 10 */	addi r1, r1, 0x10
/* 8028305C  4E 80 00 20 */	blr 
