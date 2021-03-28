lbl_801E36CC:
/* 801E36CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E36D0  7C 08 02 A6 */	mflr r0
/* 801E36D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E36D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E36DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E36E0  7C 7E 1B 78 */	mr r30, r3
/* 801E36E4  80 03 00 50 */	lwz r0, 0x50(r3)
/* 801E36E8  28 00 00 00 */	cmplwi r0, 0
/* 801E36EC  41 82 01 C8 */	beq lbl_801E38B4
/* 801E36F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801E36F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801E36F8  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801E36FC  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 801E3700  38 80 00 FF */	li r4, 0xff
/* 801E3704  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3708  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E370C  7D 89 03 A6 */	mtctr r12
/* 801E3710  4E 80 04 21 */	bctrl 
/* 801E3714  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 801E3718  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E371C  FC 40 08 90 */	fmr f2, f1
/* 801E3720  C0 62 A9 34 */	lfs f3, lit_4442(r2)
/* 801E3724  C0 82 A9 38 */	lfs f4, lit_4443(r2)
/* 801E3728  38 80 00 00 */	li r4, 0
/* 801E372C  38 A0 00 00 */	li r5, 0
/* 801E3730  38 C0 00 00 */	li r6, 0
/* 801E3734  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3738  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801E373C  7D 89 03 A6 */	mtctr r12
/* 801E3740  4E 80 04 21 */	bctrl 
/* 801E3744  80 7E 00 04 */	lwz r3, 4(r30)
/* 801E3748  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E374C  FC 40 08 90 */	fmr f2, f1
/* 801E3750  7F E4 FB 78 */	mr r4, r31
/* 801E3754  48 11 57 81 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801E3758  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 801E375C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 801E3760  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 801E3764  88 04 07 25 */	lbz r0, 0x725(r4)
/* 801E3768  C8 22 A9 40 */	lfd f1, lit_4445(r2)
/* 801E376C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E3770  3C 00 43 30 */	lis r0, 0x4330
/* 801E3774  90 01 00 08 */	stw r0, 8(r1)
/* 801E3778  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E377C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801E3780  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 801E3784  EC 01 00 32 */	fmuls f0, f1, f0
/* 801E3788  FC 00 00 1E */	fctiwz f0, f0
/* 801E378C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801E3790  80 81 00 14 */	lwz r4, 0x14(r1)
/* 801E3794  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3798  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E379C  7D 89 03 A6 */	mtctr r12
/* 801E37A0  4E 80 04 21 */	bctrl 
/* 801E37A4  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 801E37A8  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E37AC  FC 40 08 90 */	fmr f2, f1
/* 801E37B0  C0 62 A9 34 */	lfs f3, lit_4442(r2)
/* 801E37B4  C0 82 A9 38 */	lfs f4, lit_4443(r2)
/* 801E37B8  38 80 00 00 */	li r4, 0
/* 801E37BC  38 A0 00 00 */	li r5, 0
/* 801E37C0  38 C0 00 00 */	li r6, 0
/* 801E37C4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E37C8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801E37CC  7D 89 03 A6 */	mtctr r12
/* 801E37D0  4E 80 04 21 */	bctrl 
/* 801E37D4  80 7E 00 08 */	lwz r3, 8(r30)
/* 801E37D8  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E37DC  FC 40 08 90 */	fmr f2, f1
/* 801E37E0  7F E4 FB 78 */	mr r4, r31
/* 801E37E4  48 11 56 F1 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801E37E8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801E37EC  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E37F0  FC 40 08 90 */	fmr f2, f1
/* 801E37F4  7F E4 FB 78 */	mr r4, r31
/* 801E37F8  48 11 56 DD */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801E37FC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 801E3800  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E3804  FC 40 08 90 */	fmr f2, f1
/* 801E3808  7F E4 FB 78 */	mr r4, r31
/* 801E380C  48 11 56 C9 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801E3810  88 1E 03 F3 */	lbz r0, 0x3f3(r30)
/* 801E3814  28 00 00 01 */	cmplwi r0, 1
/* 801E3818  41 82 00 14 */	beq lbl_801E382C
/* 801E381C  28 00 00 02 */	cmplwi r0, 2
/* 801E3820  41 82 00 0C */	beq lbl_801E382C
/* 801E3824  28 00 00 03 */	cmplwi r0, 3
/* 801E3828  40 82 00 18 */	bne lbl_801E3840
lbl_801E382C:
/* 801E382C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801E3830  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E3834  FC 40 08 90 */	fmr f2, f1
/* 801E3838  7F E4 FB 78 */	mr r4, r31
/* 801E383C  48 11 56 99 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801E3840:
/* 801E3840  88 1E 03 F3 */	lbz r0, 0x3f3(r30)
/* 801E3844  28 00 00 05 */	cmplwi r0, 5
/* 801E3848  40 82 00 18 */	bne lbl_801E3860
/* 801E384C  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 801E3850  81 83 00 00 */	lwz r12, 0(r3)
/* 801E3854  81 8C 00 08 */	lwz r12, 8(r12)
/* 801E3858  7D 89 03 A6 */	mtctr r12
/* 801E385C  4E 80 04 21 */	bctrl 
lbl_801E3860:
/* 801E3860  7F C3 F3 78 */	mr r3, r30
/* 801E3864  48 00 00 69 */	bl drawHaihai__14dMenu_Option_cFv
/* 801E3868  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 801E386C  4B FA E9 61 */	bl drawSelf__15dFile_warning_cFv
/* 801E3870  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801E3874  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E3878  FC 40 08 90 */	fmr f2, f1
/* 801E387C  7F E4 FB 78 */	mr r4, r31
/* 801E3880  48 11 56 55 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801E3884  88 1E 03 F3 */	lbz r0, 0x3f3(r30)
/* 801E3888  28 00 00 01 */	cmplwi r0, 1
/* 801E388C  41 82 00 28 */	beq lbl_801E38B4
/* 801E3890  28 00 00 02 */	cmplwi r0, 2
/* 801E3894  41 82 00 20 */	beq lbl_801E38B4
/* 801E3898  28 00 00 03 */	cmplwi r0, 3
/* 801E389C  41 82 00 18 */	beq lbl_801E38B4
/* 801E38A0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801E38A4  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E38A8  FC 40 08 90 */	fmr f2, f1
/* 801E38AC  7F E4 FB 78 */	mr r4, r31
/* 801E38B0  48 11 56 25 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801E38B4:
/* 801E38B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E38B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E38BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E38C0  7C 08 03 A6 */	mtlr r0
/* 801E38C4  38 21 00 20 */	addi r1, r1, 0x20
/* 801E38C8  4E 80 00 20 */	blr 
