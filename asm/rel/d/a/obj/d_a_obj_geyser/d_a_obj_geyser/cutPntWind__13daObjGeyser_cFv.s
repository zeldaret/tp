lbl_80BF863C:
/* 80BF863C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8640  7C 08 02 A6 */	mflr r0
/* 80BF8644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8648  38 63 07 94 */	addi r3, r3, 0x794
/* 80BF864C  4B 46 28 0D */	bl dKyw_pntwind_cut__FP14WIND_INFLUENCE
/* 80BF8650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8654  7C 08 03 A6 */	mtlr r0
/* 80BF8658  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF865C  4E 80 00 20 */	blr 
