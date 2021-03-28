lbl_80D0EF90:
/* 80D0EF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0EF94  7C 08 02 A6 */	mflr r0
/* 80D0EF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0EF9C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D0EFA0  4B 49 89 8C */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 80D0EFA4  38 60 00 01 */	li r3, 1
/* 80D0EFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0EFAC  7C 08 03 A6 */	mtlr r0
/* 80D0EFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0EFB4  4E 80 00 20 */	blr 
