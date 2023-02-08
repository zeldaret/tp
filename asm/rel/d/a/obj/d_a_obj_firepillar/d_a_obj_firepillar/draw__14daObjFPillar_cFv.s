lbl_80BE9984:
/* 80BE9984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9988  7C 08 02 A6 */	mflr r0
/* 80BE998C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9990  7C 65 1B 78 */	mr r5, r3
/* 80BE9994  38 65 04 D0 */	addi r3, r5, 0x4d0
/* 80BE9998  38 85 09 3C */	addi r4, r5, 0x93c
/* 80BE999C  38 A5 04 DC */	addi r5, r5, 0x4dc
/* 80BE99A0  4B FF FF E1 */	bl drawCylinder__FP4cXyzP4cXyzP5csXyz
/* 80BE99A4  38 60 00 01 */	li r3, 1
/* 80BE99A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE99AC  7C 08 03 A6 */	mtlr r0
/* 80BE99B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE99B4  4E 80 00 20 */	blr 
