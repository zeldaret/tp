lbl_800373C0:
/* 800373C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800373C4  7C 08 02 A6 */	mflr r0
/* 800373C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800373CC  38 C0 00 00 */	li r6, 0
/* 800373D0  C0 62 83 A0 */	lfs f3, lit_3801(r2)
/* 800373D4  FC 80 18 90 */	fmr f4, f3
/* 800373D8  38 E0 00 00 */	li r7, 0
/* 800373DC  48 00 02 45 */	bl posMoveF_grade__5daObjFP10fopAc_ac_cPC4cXyzPC4cXyzffPC4cXyzffPC4cXyz
/* 800373E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800373E4  7C 08 03 A6 */	mtlr r0
/* 800373E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800373EC  4E 80 00 20 */	blr 
