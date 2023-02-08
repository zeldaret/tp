lbl_805C382C:
/* 805C382C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C3830  7C 08 02 A6 */	mflr r0
/* 805C3834  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C3838  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805C383C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805C3840  7C 7E 1B 78 */	mr r30, r3
/* 805C3844  3C 80 80 5C */	lis r4, lit_3800@ha /* 0x805C6C74@ha */
/* 805C3848  3B E4 6C 74 */	addi r31, r4, lit_3800@l /* 0x805C6C74@l */
/* 805C384C  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 805C3850  2C 00 00 01 */	cmpwi r0, 1
/* 805C3854  41 82 00 40 */	beq lbl_805C3894
/* 805C3858  40 80 01 68 */	bge lbl_805C39C0
/* 805C385C  2C 00 00 00 */	cmpwi r0, 0
/* 805C3860  40 80 00 08 */	bge lbl_805C3868
/* 805C3864  48 00 01 5C */	b lbl_805C39C0
lbl_805C3868:
/* 805C3868  C0 1F 03 74 */	lfs f0, 0x374(r31)
/* 805C386C  D0 1E 07 30 */	stfs f0, 0x730(r30)
/* 805C3870  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 805C3874  4B FF 93 A5 */	bl mAllClr__8daB_DR_cFv
/* 805C3878  3C 60 80 5C */	lis r3, data_805C7974@ha /* 0x805C7974@ha */
/* 805C387C  88 03 79 74 */	lbz r0, data_805C7974@l(r3)  /* 0x805C7974@l */
/* 805C3880  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 805C3884  80 7E 07 0C */	lwz r3, 0x70c(r30)
/* 805C3888  38 03 00 01 */	addi r0, r3, 1
/* 805C388C  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 805C3890  48 00 01 30 */	b lbl_805C39C0
lbl_805C3894:
/* 805C3894  38 7E 07 C0 */	addi r3, r30, 0x7c0
/* 805C3898  48 00 33 45 */	bl func_805C6BDC
/* 805C389C  2C 03 00 00 */	cmpwi r3, 0
/* 805C38A0  40 82 00 10 */	bne lbl_805C38B0
/* 805C38A4  7F C3 F3 78 */	mr r3, r30
/* 805C38A8  4B A5 63 D5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 805C38AC  48 00 01 14 */	b lbl_805C39C0
lbl_805C38B0:
/* 805C38B0  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805C38B4  28 00 00 00 */	cmplwi r0, 0
/* 805C38B8  41 82 00 70 */	beq lbl_805C3928
/* 805C38BC  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805C38C0  90 01 00 08 */	stw r0, 8(r1)
/* 805C38C4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805C38C8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805C38CC  38 81 00 08 */	addi r4, r1, 8
/* 805C38D0  4B A5 5F 29 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805C38D4  28 03 00 00 */	cmplwi r3, 0
/* 805C38D8  41 82 00 50 */	beq lbl_805C3928
/* 805C38DC  C0 5F 04 44 */	lfs f2, 0x444(r31)
/* 805C38E0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 805C38E4  A8 03 07 5A */	lha r0, 0x75a(r3)
/* 805C38E8  7C 04 00 50 */	subf r0, r4, r0
/* 805C38EC  7C 00 07 34 */	extsh r0, r0
/* 805C38F0  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805C38F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C38F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C38FC  3C 00 43 30 */	lis r0, 0x4330
/* 805C3900  90 01 00 18 */	stw r0, 0x18(r1)
/* 805C3904  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805C3908  EC 00 08 28 */	fsubs f0, f0, f1
/* 805C390C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C3910  FC 00 00 1E */	fctiwz f0, f0
/* 805C3914  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805C3918  80 61 00 24 */	lwz r3, 0x24(r1)
/* 805C391C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805C3920  7C 03 00 50 */	subf r0, r3, r0
/* 805C3924  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_805C3928:
/* 805C3928  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805C392C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805C3930  80 63 00 00 */	lwz r3, 0(r3)
/* 805C3934  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805C3938  4B A4 8A A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805C393C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805C3940  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805C3944  80 63 00 00 */	lwz r3, 0(r3)
/* 805C3948  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805C394C  4B A4 8A 51 */	bl mDoMtx_XrotM__FPA4_fs
/* 805C3950  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C3954  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C3958  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C395C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805C3960  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C3964  38 61 00 0C */	addi r3, r1, 0xc
/* 805C3968  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 805C396C  4B CA D5 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805C3970  C0 3E 07 30 */	lfs f1, 0x730(r30)
/* 805C3974  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 805C3978  EC 01 00 2A */	fadds f0, f1, f0
/* 805C397C  D0 1E 07 30 */	stfs f0, 0x730(r30)
/* 805C3980  C0 3E 07 30 */	lfs f1, 0x730(r30)
/* 805C3984  C0 1F 03 74 */	lfs f0, 0x374(r31)
/* 805C3988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C398C  40 81 00 08 */	ble lbl_805C3994
/* 805C3990  D0 1E 07 30 */	stfs f0, 0x730(r30)
lbl_805C3994:
/* 805C3994  38 7E 10 4C */	addi r3, r30, 0x104c
/* 805C3998  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805C399C  4B CA BC AD */	bl SetC__8cM3dGSphFRC4cXyz
/* 805C39A0  38 7E 10 4C */	addi r3, r30, 0x104c
/* 805C39A4  C0 3E 07 30 */	lfs f1, 0x730(r30)
/* 805C39A8  4B CA BD 61 */	bl SetR__8cM3dGSphFf
/* 805C39AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C39B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C39B4  38 63 23 3C */	addi r3, r3, 0x233c
/* 805C39B8  38 9E 0F 28 */	addi r4, r30, 0xf28
/* 805C39BC  4B CA 11 ED */	bl Set__4cCcSFP8cCcD_Obj
lbl_805C39C0:
/* 805C39C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805C39C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805C39C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C39CC  7C 08 03 A6 */	mtlr r0
/* 805C39D0  38 21 00 30 */	addi r1, r1, 0x30
/* 805C39D4  4E 80 00 20 */	blr 
