lbl_80CB971C:
/* 80CB971C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9720  7C 08 02 A6 */	mflr r0
/* 80CB9724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9728  4B 36 05 55 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CB972C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9730  7C 08 03 A6 */	mtlr r0
/* 80CB9734  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9738  4E 80 00 20 */	blr 
