lbl_80056D98:
/* 80056D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056D9C  7C 08 02 A6 */	mflr r0
/* 80056DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056DA4  7C 64 1B 78 */	mr r4, r3
/* 80056DA8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80056DAC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80056DB0  38 84 00 10 */	addi r4, r4, 0x10
/* 80056DB4  48 01 06 D5 */	bl dKyr_drawSnow__FPA4_fPPUc
/* 80056DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056DBC  7C 08 03 A6 */	mtlr r0
/* 80056DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80056DC4  4E 80 00 20 */	blr 
