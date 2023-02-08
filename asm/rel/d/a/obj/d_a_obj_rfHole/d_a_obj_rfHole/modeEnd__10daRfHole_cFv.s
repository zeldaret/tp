lbl_80CB9748:
/* 80CB9748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB974C  7C 08 02 A6 */	mflr r0
/* 80CB9750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9754  4B 36 05 29 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CB9758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB975C  7C 08 03 A6 */	mtlr r0
/* 80CB9760  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB9764  4E 80 00 20 */	blr 
