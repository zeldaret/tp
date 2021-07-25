lbl_80084AC4:
/* 80084AC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80084AC8  7C 08 02 A6 */	mflr r0
/* 80084ACC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80084AD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80084AD4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80084AD8  7C 7E 1B 78 */	mr r30, r3
/* 80084ADC  7C 9F 23 78 */	mr r31, r4
/* 80084AE0  38 BE 01 24 */	addi r5, r30, 0x124
/* 80084AE4  38 61 00 08 */	addi r3, r1, 8
/* 80084AE8  48 1E 20 4D */	bl __mi__4cXyzCFRC3Vec
/* 80084AEC  C0 41 00 08 */	lfs f2, 8(r1)
/* 80084AF0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80084AF4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80084AF8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80084AFC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80084B00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80084B04  D0 5E 00 84 */	stfs f2, 0x84(r30)
/* 80084B08  D0 3E 00 88 */	stfs f1, 0x88(r30)
/* 80084B0C  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 80084B10  38 7E 01 24 */	addi r3, r30, 0x124
/* 80084B14  7F E4 FB 78 */	mr r4, r31
/* 80084B18  48 1E AB 31 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80084B1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80084B20  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80084B24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80084B28  7C 08 03 A6 */	mtlr r0
/* 80084B2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80084B30  4E 80 00 20 */	blr 
