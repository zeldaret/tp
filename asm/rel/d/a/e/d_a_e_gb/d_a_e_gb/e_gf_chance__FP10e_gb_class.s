lbl_806C451C:
/* 806C451C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C4520  7C 08 02 A6 */	mflr r0
/* 806C4524  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C4528  39 61 00 20 */	addi r11, r1, 0x20
/* 806C452C  4B C9 DC B0 */	b _savegpr_29
/* 806C4530  7C 7F 1B 78 */	mr r31, r3
/* 806C4534  3C 60 80 6C */	lis r3, lit_3906@ha
/* 806C4538  3B C3 74 E8 */	addi r30, r3, lit_3906@l
/* 806C453C  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 806C4540  3B A0 00 00 */	li r29, 0
/* 806C4544  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 806C4548  2C 00 00 01 */	cmpwi r0, 1
/* 806C454C  41 82 00 A4 */	beq lbl_806C45F0
/* 806C4550  40 80 00 10 */	bge lbl_806C4560
/* 806C4554  2C 00 00 00 */	cmpwi r0, 0
/* 806C4558  40 80 00 14 */	bge lbl_806C456C
/* 806C455C  48 00 00 E4 */	b lbl_806C4640
lbl_806C4560:
/* 806C4560  2C 00 00 03 */	cmpwi r0, 3
/* 806C4564  40 80 00 DC */	bge lbl_806C4640
/* 806C4568  48 00 00 D4 */	b lbl_806C463C
lbl_806C456C:
/* 806C456C  A8 1F 06 C4 */	lha r0, 0x6c4(r31)
/* 806C4570  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806C4574  40 82 00 0C */	bne lbl_806C4580
/* 806C4578  38 00 00 0A */	li r0, 0xa
/* 806C457C  B0 1F 0E 90 */	sth r0, 0xe90(r31)
lbl_806C4580:
/* 806C4580  A8 1F 06 C4 */	lha r0, 0x6c4(r31)
/* 806C4584  2C 00 00 00 */	cmpwi r0, 0
/* 806C4588  40 82 00 B8 */	bne lbl_806C4640
/* 806C458C  7F E3 FB 78 */	mr r3, r31
/* 806C4590  38 80 00 18 */	li r4, 0x18
/* 806C4594  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 806C4598  38 A0 00 00 */	li r5, 0
/* 806C459C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C45A0  4B FF D8 4D */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C45A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070158@ha */
/* 806C45A8  38 03 01 58 */	addi r0, r3, 0x0158 /* 0x00070158@l */
/* 806C45AC  90 01 00 08 */	stw r0, 8(r1)
/* 806C45B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C45B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C45B8  80 63 00 00 */	lwz r3, 0(r3)
/* 806C45BC  38 81 00 08 */	addi r4, r1, 8
/* 806C45C0  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 806C45C4  38 C0 00 00 */	li r6, 0
/* 806C45C8  38 E0 00 00 */	li r7, 0
/* 806C45CC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C45D0  FC 40 08 90 */	fmr f2, f1
/* 806C45D4  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 806C45D8  FC 80 18 90 */	fmr f4, f3
/* 806C45DC  39 00 00 00 */	li r8, 0
/* 806C45E0  4B BE 73 A4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C45E4  38 00 00 01 */	li r0, 1
/* 806C45E8  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
/* 806C45EC  48 00 00 54 */	b lbl_806C4640
lbl_806C45F0:
/* 806C45F0  38 60 00 01 */	li r3, 1
/* 806C45F4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806C45F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C45FC  40 82 00 18 */	bne lbl_806C4614
/* 806C4600  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806C4604  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806C4608  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C460C  41 82 00 08 */	beq lbl_806C4614
/* 806C4610  38 60 00 00 */	li r3, 0
lbl_806C4614:
/* 806C4614  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C4618  41 82 00 24 */	beq lbl_806C463C
/* 806C461C  7F E3 FB 78 */	mr r3, r31
/* 806C4620  38 80 00 19 */	li r4, 0x19
/* 806C4624  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806C4628  38 A0 00 02 */	li r5, 2
/* 806C462C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C4630  4B FF D7 BD */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C4634  38 00 00 02 */	li r0, 2
/* 806C4638  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
lbl_806C463C:
/* 806C463C  3B A0 00 01 */	li r29, 1
lbl_806C4640:
/* 806C4640  7F A0 07 75 */	extsb. r0, r29
/* 806C4644  41 82 00 2C */	beq lbl_806C4670
/* 806C4648  3C 60 80 6C */	lis r3, s_b_sub__FPvPv@ha
/* 806C464C  38 63 3C 44 */	addi r3, r3, s_b_sub__FPvPv@l
/* 806C4650  7F E4 FB 78 */	mr r4, r31
/* 806C4654  4B 95 CC E4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806C4658  28 03 00 00 */	cmplwi r3, 0
/* 806C465C  41 82 00 14 */	beq lbl_806C4670
/* 806C4660  38 00 00 02 */	li r0, 2
/* 806C4664  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 806C4668  38 00 00 00 */	li r0, 0
/* 806C466C  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
lbl_806C4670:
/* 806C4670  39 61 00 20 */	addi r11, r1, 0x20
/* 806C4674  4B C9 DB B4 */	b _restgpr_29
/* 806C4678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C467C  7C 08 03 A6 */	mtlr r0
/* 806C4680  38 21 00 20 */	addi r1, r1, 0x20
/* 806C4684  4E 80 00 20 */	blr 
