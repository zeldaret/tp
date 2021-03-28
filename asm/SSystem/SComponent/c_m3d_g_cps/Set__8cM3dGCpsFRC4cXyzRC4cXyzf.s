lbl_8026F000:
/* 8026F000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F004  7C 08 02 A6 */	mflr r0
/* 8026F008  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F00C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8026F010  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8026F014  7C 7F 1B 78 */	mr r31, r3
/* 8026F018  FF E0 08 90 */	fmr f31, f1
/* 8026F01C  48 00 02 CD */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 8026F020  D3 FF 00 1C */	stfs f31, 0x1c(r31)
/* 8026F024  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8026F028  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8026F02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026F030  7C 08 03 A6 */	mtlr r0
/* 8026F034  38 21 00 20 */	addi r1, r1, 0x20
/* 8026F038  4E 80 00 20 */	blr 
