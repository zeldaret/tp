lbl_804A4520:
/* 804A4520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A4524  7C 08 02 A6 */	mflr r0
/* 804A4528  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A452C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A4530  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A4534  7C BE 2B 78 */	mr r30, r5
/* 804A4538  7C DF 33 78 */	mr r31, r6
/* 804A453C  38 A1 00 08 */	addi r5, r1, 8
/* 804A4540  4B BB 72 21 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 804A4544  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A4548  EC 20 00 32 */	fmuls f1, f0, f0
/* 804A454C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A4550  EC 00 00 32 */	fmuls f0, f0, f0
/* 804A4554  EC 21 00 2A */	fadds f1, f1, f0
/* 804A4558  3C 60 80 4B */	lis r3, lit_4004@ha /* 0x804A886C@ha */
/* 804A455C  C0 03 88 6C */	lfs f0, lit_4004@l(r3)  /* 0x804A886C@l */
/* 804A4560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4564  40 81 00 0C */	ble lbl_804A4570
/* 804A4568  FC 00 08 34 */	frsqrte f0, f1
/* 804A456C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804A4570:
/* 804A4570  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 804A4574  4B DC 31 01 */	bl cM_atan2s__Fff
/* 804A4578  B0 7E 00 00 */	sth r3, 0(r30)
/* 804A457C  38 61 00 08 */	addi r3, r1, 8
/* 804A4580  4B DC 2B A9 */	bl atan2sX_Z__4cXyzCFv
/* 804A4584  B0 7F 00 00 */	sth r3, 0(r31)
/* 804A4588  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A458C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A4590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A4594  7C 08 03 A6 */	mtlr r0
/* 804A4598  38 21 00 20 */	addi r1, r1, 0x20
/* 804A459C  4E 80 00 20 */	blr 
