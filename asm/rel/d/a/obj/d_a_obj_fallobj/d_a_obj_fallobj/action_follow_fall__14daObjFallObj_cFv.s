lbl_80BE4670:
/* 80BE4670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE4674  7C 08 02 A6 */	mflr r0
/* 80BE4678  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE467C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BE4680  7C 7F 1B 78 */	mr r31, r3
/* 80BE4684  80 63 04 A4 */	lwz r3, 0x4a4(r3)
/* 80BE4688  3C 03 00 01 */	addis r0, r3, 1
/* 80BE468C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE4690  41 82 00 5C */	beq lbl_80BE46EC
/* 80BE4694  90 61 00 08 */	stw r3, 8(r1)
/* 80BE4698  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80BE469C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80BE46A0  38 81 00 08 */	addi r4, r1, 8
/* 80BE46A4  4B 43 51 55 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BE46A8  28 03 00 00 */	cmplwi r3, 0
/* 80BE46AC  41 82 00 14 */	beq lbl_80BE46C0
/* 80BE46B0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80BE46B4  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BE46B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE46BC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80BE46C0:
/* 80BE46C0  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80BE46C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BE46C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BE46CC  FC 00 02 10 */	fabs f0, f0
/* 80BE46D0  FC 20 00 18 */	frsp f1, f0
/* 80BE46D4  3C 60 80 BE */	lis r3, lit_3949@ha /* 0x80BE4B08@ha */
/* 80BE46D8  C0 03 4B 08 */	lfs f0, lit_3949@l(r3)  /* 0x80BE4B08@l */
/* 80BE46DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE46E0  40 81 00 0C */	ble lbl_80BE46EC
/* 80BE46E4  7F E3 FB 78 */	mr r3, r31
/* 80BE46E8  4B 43 55 95 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BE46EC:
/* 80BE46EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BE46F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE46F4  7C 08 03 A6 */	mtlr r0
/* 80BE46F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE46FC  4E 80 00 20 */	blr 
