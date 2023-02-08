lbl_805C8208:
/* 805C8208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C820C  7C 08 02 A6 */	mflr r0
/* 805C8210  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C8214  7C 65 1B 78 */	mr r5, r3
/* 805C8218  C0 04 00 00 */	lfs f0, 0(r4)
/* 805C821C  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 805C8220  C0 04 00 04 */	lfs f0, 4(r4)
/* 805C8224  D0 03 05 D8 */	stfs f0, 0x5d8(r3)
/* 805C8228  C0 04 00 08 */	lfs f0, 8(r4)
/* 805C822C  D0 03 05 DC */	stfs f0, 0x5dc(r3)
/* 805C8230  38 65 05 C8 */	addi r3, r5, 0x5c8
/* 805C8234  38 85 05 D4 */	addi r4, r5, 0x5d4
/* 805C8238  4B CA 7F 41 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 805C823C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C8240  7C 08 03 A6 */	mtlr r0
/* 805C8244  38 21 00 10 */	addi r1, r1, 0x10
/* 805C8248  4E 80 00 20 */	blr 
