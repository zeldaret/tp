lbl_8073D768:
/* 8073D768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073D76C  7C 08 02 A6 */	mflr r0
/* 8073D770  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073D774  7C 65 1B 78 */	mr r5, r3
/* 8073D778  C0 04 00 00 */	lfs f0, 0(r4)
/* 8073D77C  D0 03 05 E0 */	stfs f0, 0x5e0(r3)
/* 8073D780  C0 04 00 04 */	lfs f0, 4(r4)
/* 8073D784  D0 03 05 E4 */	stfs f0, 0x5e4(r3)
/* 8073D788  C0 04 00 08 */	lfs f0, 8(r4)
/* 8073D78C  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
/* 8073D790  38 65 05 D4 */	addi r3, r5, 0x5d4
/* 8073D794  38 85 05 E0 */	addi r4, r5, 0x5e0
/* 8073D798  4B B3 29 E1 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8073D79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073D7A0  7C 08 03 A6 */	mtlr r0
/* 8073D7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8073D7A8  4E 80 00 20 */	blr 
