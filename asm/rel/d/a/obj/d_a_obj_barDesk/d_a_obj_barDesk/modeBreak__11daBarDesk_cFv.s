lbl_80BA9824:
/* 80BA9824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9828  7C 08 02 A6 */	mflr r0
/* 80BA982C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9830  4B 47 04 4D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80BA9834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9838  7C 08 03 A6 */	mtlr r0
/* 80BA983C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9840  4E 80 00 20 */	blr 
