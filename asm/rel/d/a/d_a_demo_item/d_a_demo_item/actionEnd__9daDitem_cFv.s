lbl_804E0B40:
/* 804E0B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0B44  7C 08 02 A6 */	mflr r0
/* 804E0B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0B4C  4B B3 91 30 */	b fopAcM_delete__FP10fopAc_ac_c
/* 804E0B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0B54  7C 08 03 A6 */	mtlr r0
/* 804E0B58  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0B5C  4E 80 00 20 */	blr 
