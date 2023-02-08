lbl_80BE86FC:
/* 80BE86FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE8700  7C 08 02 A6 */	mflr r0
/* 80BE8704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8708  88 03 07 18 */	lbz r0, 0x718(r3)
/* 80BE870C  28 00 00 00 */	cmplwi r0, 0
/* 80BE8710  41 82 00 0C */	beq lbl_80BE871C
/* 80BE8714  38 63 07 20 */	addi r3, r3, 0x720
/* 80BE8718  4B 5B F2 15 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80BE871C:
/* 80BE871C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8720  7C 08 03 A6 */	mtlr r0
/* 80BE8724  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8728  4E 80 00 20 */	blr 
