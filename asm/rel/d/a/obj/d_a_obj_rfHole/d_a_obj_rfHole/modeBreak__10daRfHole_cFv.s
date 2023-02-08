lbl_80CB96AC:
/* 80CB96AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB96B0  7C 08 02 A6 */	mflr r0
/* 80CB96B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB96B8  4B 36 05 C5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CB96BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB96C0  7C 08 03 A6 */	mtlr r0
/* 80CB96C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB96C8  4E 80 00 20 */	blr 
