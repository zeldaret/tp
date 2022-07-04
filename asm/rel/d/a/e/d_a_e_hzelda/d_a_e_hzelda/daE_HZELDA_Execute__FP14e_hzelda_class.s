lbl_806F3590:
/* 806F3590  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 806F3594  7C 08 02 A6 */	mflr r0
/* 806F3598  90 01 01 34 */	stw r0, 0x134(r1)
/* 806F359C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 806F35A0  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 806F35A4  39 61 01 20 */	addi r11, r1, 0x120
/* 806F35A8  4B C6 EC 15 */	bl _savegpr_21
/* 806F35AC  7C 7F 1B 78 */	mr r31, r3
/* 806F35B0  3C 60 80 6F */	lis r3, cNullVec__6Z2Calc@ha /* 0x806F565C@ha */
/* 806F35B4  3B 43 56 5C */	addi r26, r3, cNullVec__6Z2Calc@l /* 0x806F565C@l */
/* 806F35B8  3C 60 80 6F */	lis r3, lit_3767@ha /* 0x806F5514@ha */
/* 806F35BC  3B C3 55 14 */	addi r30, r3, lit_3767@l /* 0x806F5514@l */
/* 806F35C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F35C4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F35C8  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806F35CC  A8 1F 14 40 */	lha r0, 0x1440(r31)
/* 806F35D0  2C 00 00 00 */	cmpwi r0, 0
/* 806F35D4  40 82 00 38 */	bne lbl_806F360C
/* 806F35D8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F35DC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 806F35E0  7D 89 03 A6 */	mtctr r12
/* 806F35E4  4E 80 04 21 */	bctrl 
/* 806F35E8  2C 03 00 00 */	cmpwi r3, 0
/* 806F35EC  40 82 00 20 */	bne lbl_806F360C
/* 806F35F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F35F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F35F8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 806F35FC  28 00 00 00 */	cmplwi r0, 0
/* 806F3600  41 82 00 0C */	beq lbl_806F360C
/* 806F3604  38 60 00 01 */	li r3, 1
/* 806F3608  48 00 11 24 */	b lbl_806F472C
lbl_806F360C:
/* 806F360C  88 7F 14 14 */	lbz r3, 0x1414(r31)
/* 806F3610  28 03 00 00 */	cmplwi r3, 0
/* 806F3614  41 82 00 20 */	beq lbl_806F3634
/* 806F3618  38 03 FF FF */	addi r0, r3, -1
/* 806F361C  98 1F 14 14 */	stb r0, 0x1414(r31)
/* 806F3620  88 1F 14 14 */	lbz r0, 0x1414(r31)
/* 806F3624  28 00 00 00 */	cmplwi r0, 0
/* 806F3628  40 82 00 0C */	bne lbl_806F3634
/* 806F362C  38 60 04 90 */	li r3, 0x490
/* 806F3630  4B 92 C9 95 */	bl fopMsgM_messageSetDemo__FUl
lbl_806F3634:
/* 806F3634  A8 7F 06 94 */	lha r3, 0x694(r31)
/* 806F3638  38 03 00 01 */	addi r0, r3, 1
/* 806F363C  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806F3640  38 60 00 00 */	li r3, 0
/* 806F3644  38 00 00 04 */	li r0, 4
/* 806F3648  7C 09 03 A6 */	mtctr r0
lbl_806F364C:
/* 806F364C  38 A3 06 AC */	addi r5, r3, 0x6ac
/* 806F3650  7C 9F 2A AE */	lhax r4, r31, r5
/* 806F3654  2C 04 00 00 */	cmpwi r4, 0
/* 806F3658  41 82 00 0C */	beq lbl_806F3664
/* 806F365C  38 04 FF FF */	addi r0, r4, -1
/* 806F3660  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_806F3664:
/* 806F3664  38 63 00 02 */	addi r3, r3, 2
/* 806F3668  42 00 FF E4 */	bdnz lbl_806F364C
/* 806F366C  A8 7F 06 B4 */	lha r3, 0x6b4(r31)
/* 806F3670  2C 03 00 00 */	cmpwi r3, 0
/* 806F3674  41 82 00 0C */	beq lbl_806F3680
/* 806F3678  38 03 FF FF */	addi r0, r3, -1
/* 806F367C  B0 1F 06 B4 */	sth r0, 0x6b4(r31)
lbl_806F3680:
/* 806F3680  7F E3 FB 78 */	mr r3, r31
/* 806F3684  4B FF F3 B9 */	bl action__FP14e_hzelda_class
/* 806F3688  7F E3 FB 78 */	mr r3, r31
/* 806F368C  4B FF F9 F9 */	bl demo_camera__FP14e_hzelda_class
/* 806F3690  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806F3694  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806F3698  EC 00 08 28 */	fsubs f0, f0, f1
/* 806F369C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806F36A0  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 806F36A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806F36A8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 806F36AC  38 7F 07 80 */	addi r3, r31, 0x780
/* 806F36B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F36B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F36B8  3B 64 0F 38 */	addi r27, r4, 0xf38
/* 806F36BC  7F 64 DB 78 */	mr r4, r27
/* 806F36C0  4B 98 33 ED */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806F36C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806F36C8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806F36CC  EC 00 08 2A */	fadds f0, f0, f1
/* 806F36D0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806F36D4  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 806F36D8  EC 00 08 2A */	fadds f0, f0, f1
/* 806F36DC  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 806F36E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F36E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F36E8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806F36EC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806F36F0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806F36F4  4B C5 31 F5 */	bl PSMTXTrans
/* 806F36F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F36FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F3700  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806F3704  4B 91 8D 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 806F3708  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F370C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F3710  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806F3714  4B 91 8C 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F3718  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F371C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F3720  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806F3724  4B 91 8D A9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806F3728  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F5938@ha */
/* 806F372C  38 63 59 38 */	addi r3, r3, l_HIO@l /* 0x806F5938@l */
/* 806F3730  C0 23 00 08 */	lfs f1, 8(r3)
/* 806F3734  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 806F3738  EC 21 00 32 */	fmuls f1, f1, f0
/* 806F373C  FC 40 08 90 */	fmr f2, f1
/* 806F3740  FC 60 08 90 */	fmr f3, f1
/* 806F3744  4B 91 96 F5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806F3748  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F374C  83 23 00 04 */	lwz r25, 4(r3)
/* 806F3750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F3754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F3758  38 99 00 24 */	addi r4, r25, 0x24
/* 806F375C  4B C5 2D 55 */	bl PSMTXCopy
/* 806F3760  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806F3764  7C 03 07 74 */	extsb r3, r0
/* 806F3768  4B 93 99 05 */	bl dComIfGp_getReverb__Fi
/* 806F376C  7C 65 1B 78 */	mr r5, r3
/* 806F3770  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F3774  38 80 00 00 */	li r4, 0
/* 806F3778  4B 91 D9 39 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806F377C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F3780  4B 91 DA 6D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806F3784  7F E3 FB 78 */	mr r3, r31
/* 806F3788  4B FF FC 01 */	bl anm_se_set__FP14e_hzelda_class
/* 806F378C  80 79 00 84 */	lwz r3, 0x84(r25)
/* 806F3790  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F3794  38 63 00 C0 */	addi r3, r3, 0xc0
/* 806F3798  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F379C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F37A0  80 84 00 00 */	lwz r4, 0(r4)
/* 806F37A4  4B C5 2D 0D */	bl PSMTXCopy
/* 806F37A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F37AC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F37B0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F37B4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F37B8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F37BC  38 9F 05 38 */	addi r4, r31, 0x538
/* 806F37C0  4B B7 D7 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F37C4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806F37C8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806F37CC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806F37D0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806F37D4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806F37D8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806F37DC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 806F37E0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 806F37E4  EC 01 00 2A */	fadds f0, f1, f0
/* 806F37E8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806F37EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F37F0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 806F37F4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 806F37F8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 806F37FC  A8 1F 06 B4 */	lha r0, 0x6b4(r31)
/* 806F3800  2C 00 00 00 */	cmpwi r0, 0
/* 806F3804  41 82 00 1C */	beq lbl_806F3820
/* 806F3808  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 806F380C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 806F3810  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 806F3814  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 806F3818  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 806F381C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
lbl_806F3820:
/* 806F3820  38 61 00 98 */	addi r3, r1, 0x98
/* 806F3824  38 9F 05 38 */	addi r4, r31, 0x538
/* 806F3828  38 A1 00 BC */	addi r5, r1, 0xbc
/* 806F382C  4B B7 32 B9 */	bl __pl__4cXyzCFRC3Vec
/* 806F3830  38 7F 0A B8 */	addi r3, r31, 0xab8
/* 806F3834  38 81 00 98 */	addi r4, r1, 0x98
/* 806F3838  4B B7 BE 11 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F383C  38 7F 0A B8 */	addi r3, r31, 0xab8
/* 806F3840  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 806F3844  4B B7 BE C5 */	bl SetR__8cM3dGSphFf
/* 806F3848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F384C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F3850  3B 83 23 3C */	addi r28, r3, 0x233c
/* 806F3854  7F 83 E3 78 */	mr r3, r28
/* 806F3858  38 9F 09 94 */	addi r4, r31, 0x994
/* 806F385C  4B B7 13 4D */	bl Set__4cCcSFP8cCcD_Obj
/* 806F3860  80 79 00 84 */	lwz r3, 0x84(r25)
/* 806F3864  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F3868  38 63 06 00 */	addi r3, r3, 0x600
/* 806F386C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F3870  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F3874  80 84 00 00 */	lwz r4, 0(r4)
/* 806F3878  4B C5 2C 39 */	bl PSMTXCopy
/* 806F387C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F3880  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F3884  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3888  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F388C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F3890  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F3894  4B B7 D6 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F3898  38 61 00 8C */	addi r3, r1, 0x8c
/* 806F389C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F38A0  38 A1 00 BC */	addi r5, r1, 0xbc
/* 806F38A4  4B B7 32 41 */	bl __pl__4cXyzCFRC3Vec
/* 806F38A8  38 7F 0B F0 */	addi r3, r31, 0xbf0
/* 806F38AC  38 81 00 8C */	addi r4, r1, 0x8c
/* 806F38B0  4B B7 BD 99 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F38B4  38 7F 0B F0 */	addi r3, r31, 0xbf0
/* 806F38B8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806F38BC  4B B7 BE 4D */	bl SetR__8cM3dGSphFf
/* 806F38C0  7F 83 E3 78 */	mr r3, r28
/* 806F38C4  38 9F 0A CC */	addi r4, r31, 0xacc
/* 806F38C8  4B B7 12 E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 806F38CC  80 79 00 84 */	lwz r3, 0x84(r25)
/* 806F38D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F38D4  38 63 06 F0 */	addi r3, r3, 0x6f0
/* 806F38D8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F38DC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F38E0  80 84 00 00 */	lwz r4, 0(r4)
/* 806F38E4  4B C5 2B CD */	bl PSMTXCopy
/* 806F38E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F38EC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F38F0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F38F4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F38F8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F38FC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F3900  4B B7 D5 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F3904  38 61 00 80 */	addi r3, r1, 0x80
/* 806F3908  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F390C  38 A1 00 BC */	addi r5, r1, 0xbc
/* 806F3910  4B B7 31 D5 */	bl __pl__4cXyzCFRC3Vec
/* 806F3914  38 7F 0D 28 */	addi r3, r31, 0xd28
/* 806F3918  38 81 00 80 */	addi r4, r1, 0x80
/* 806F391C  4B B7 BD 2D */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F3920  38 7F 0D 28 */	addi r3, r31, 0xd28
/* 806F3924  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 806F3928  4B B7 BD E1 */	bl SetR__8cM3dGSphFf
/* 806F392C  7F 83 E3 78 */	mr r3, r28
/* 806F3930  38 9F 0C 04 */	addi r4, r31, 0xc04
/* 806F3934  4B B7 12 75 */	bl Set__4cCcSFP8cCcD_Obj
/* 806F3938  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 806F393C  28 00 00 00 */	cmplwi r0, 0
/* 806F3940  41 82 00 94 */	beq lbl_806F39D4
/* 806F3944  80 79 00 84 */	lwz r3, 0x84(r25)
/* 806F3948  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F394C  38 63 05 40 */	addi r3, r3, 0x540
/* 806F3950  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F3954  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F3958  80 84 00 00 */	lwz r4, 0(r4)
/* 806F395C  4B C5 2B 55 */	bl PSMTXCopy
/* 806F3960  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F3964  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F3968  80 63 00 00 */	lwz r3, 0(r3)
/* 806F396C  80 9F 06 88 */	lwz r4, 0x688(r31)
/* 806F3970  38 84 00 24 */	addi r4, r4, 0x24
/* 806F3974  4B C5 2B 3D */	bl PSMTXCopy
/* 806F3978  88 1F 06 B8 */	lbz r0, 0x6b8(r31)
/* 806F397C  7C 00 07 75 */	extsb. r0, r0
/* 806F3980  41 82 00 54 */	beq lbl_806F39D4
/* 806F3984  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806F3988  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F398C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F3990  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3994  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 806F3998  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F399C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F39A0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F39A4  4B B7 D5 49 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F39A8  38 7F 0E 9C */	addi r3, r31, 0xe9c
/* 806F39AC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F39B0  4B B7 BC 99 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F39B4  38 7F 0E 9C */	addi r3, r31, 0xe9c
/* 806F39B8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806F39BC  4B B7 BD 4D */	bl SetR__8cM3dGSphFf
/* 806F39C0  7F 83 E3 78 */	mr r3, r28
/* 806F39C4  38 9F 0D 78 */	addi r4, r31, 0xd78
/* 806F39C8  4B B7 11 E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 806F39CC  38 00 00 00 */	li r0, 0
/* 806F39D0  98 1F 06 B8 */	stb r0, 0x6b8(r31)
lbl_806F39D4:
/* 806F39D4  38 7F 09 74 */	addi r3, r31, 0x974
/* 806F39D8  4B 98 FE 59 */	bl Move__10dCcD_GSttsFv
/* 806F39DC  38 7F 0D 58 */	addi r3, r31, 0xd58
/* 806F39E0  4B 98 FE 51 */	bl Move__10dCcD_GSttsFv
/* 806F39E4  38 7F 12 98 */	addi r3, r31, 0x1298
/* 806F39E8  4B 98 FE 49 */	bl Move__10dCcD_GSttsFv
/* 806F39EC  3B 00 00 00 */	li r24, 0
/* 806F39F0  4B A6 B9 A9 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 806F39F4  2C 03 00 00 */	cmpwi r3, 0
/* 806F39F8  41 82 00 3C */	beq lbl_806F3A34
/* 806F39FC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806F3A00  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806F3A04  28 00 00 00 */	cmplwi r0, 0
/* 806F3A08  41 82 00 24 */	beq lbl_806F3A2C
/* 806F3A0C  88 7F 14 12 */	lbz r3, 0x1412(r31)
/* 806F3A10  38 03 00 01 */	addi r0, r3, 1
/* 806F3A14  98 1F 14 12 */	stb r0, 0x1412(r31)
/* 806F3A18  88 1F 14 12 */	lbz r0, 0x1412(r31)
/* 806F3A1C  28 00 00 06 */	cmplwi r0, 6
/* 806F3A20  40 80 00 14 */	bge lbl_806F3A34
/* 806F3A24  3B 00 00 01 */	li r24, 1
/* 806F3A28  48 00 00 0C */	b lbl_806F3A34
lbl_806F3A2C:
/* 806F3A2C  38 00 00 00 */	li r0, 0
/* 806F3A30  98 1F 14 12 */	stb r0, 0x1412(r31)
lbl_806F3A34:
/* 806F3A34  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806F3A38  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F3A3C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 806F3A40  7D 89 03 A6 */	mtctr r12
/* 806F3A44  4E 80 04 21 */	bctrl 
/* 806F3A48  2C 03 00 00 */	cmpwi r3, 0
/* 806F3A4C  41 82 00 24 */	beq lbl_806F3A70
/* 806F3A50  88 7F 14 11 */	lbz r3, 0x1411(r31)
/* 806F3A54  38 03 00 01 */	addi r0, r3, 1
/* 806F3A58  98 1F 14 11 */	stb r0, 0x1411(r31)
/* 806F3A5C  88 1F 14 11 */	lbz r0, 0x1411(r31)
/* 806F3A60  28 00 00 0A */	cmplwi r0, 0xa
/* 806F3A64  40 80 00 14 */	bge lbl_806F3A78
/* 806F3A68  3B 00 00 01 */	li r24, 1
/* 806F3A6C  48 00 00 0C */	b lbl_806F3A78
lbl_806F3A70:
/* 806F3A70  38 00 00 00 */	li r0, 0
/* 806F3A74  98 1F 14 11 */	stb r0, 0x1411(r31)
lbl_806F3A78:
/* 806F3A78  2C 18 00 00 */	cmpwi r24, 0
/* 806F3A7C  41 82 00 74 */	beq lbl_806F3AF0
/* 806F3A80  82 DD 5D AC */	lwz r22, 0x5dac(r29)
/* 806F3A84  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F3A88  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F3A8C  80 63 00 00 */	lwz r3, 0(r3)
/* 806F3A90  A8 96 04 E6 */	lha r4, 0x4e6(r22)
/* 806F3A94  4B 91 89 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F3A98  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F3A9C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F3AA0  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 806F3AA4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3AA8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 806F3AAC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F3AB0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F3AB4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F3AB8  4B B7 D4 35 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F3ABC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 806F3AC0  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 806F3AC4  7C 65 1B 78 */	mr r5, r3
/* 806F3AC8  4B C5 35 C9 */	bl PSVECAdd
/* 806F3ACC  38 7F 13 DC */	addi r3, r31, 0x13dc
/* 806F3AD0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 806F3AD4  4B B7 BB 75 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F3AD8  38 7F 13 DC */	addi r3, r31, 0x13dc
/* 806F3ADC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 806F3AE0  4B B7 BC 29 */	bl SetR__8cM3dGSphFf
/* 806F3AE4  7F 83 E3 78 */	mr r3, r28
/* 806F3AE8  38 9F 12 B8 */	addi r4, r31, 0x12b8
/* 806F3AEC  4B B7 10 BD */	bl Set__4cCcSFP8cCcD_Obj
lbl_806F3AF0:
/* 806F3AF0  88 7F 06 E4 */	lbz r3, 0x6e4(r31)
/* 806F3AF4  7C 60 07 75 */	extsb. r0, r3
/* 806F3AF8  40 81 05 C8 */	ble lbl_806F40C0
/* 806F3AFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704EA@ha */
/* 806F3B00  38 03 04 EA */	addi r0, r3, 0x04EA /* 0x000704EA@l */
/* 806F3B04  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F3B08  38 7F 13 F0 */	addi r3, r31, 0x13f0
/* 806F3B0C  38 81 00 44 */	addi r4, r1, 0x44
/* 806F3B10  38 A0 00 00 */	li r5, 0
/* 806F3B14  38 C0 FF FF */	li r6, -1
/* 806F3B18  81 9F 14 00 */	lwz r12, 0x1400(r31)
/* 806F3B1C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F3B20  7D 89 03 A6 */	mtctr r12
/* 806F3B24  4E 80 04 21 */	bctrl 
/* 806F3B28  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 806F3B2C  2C 00 00 01 */	cmpwi r0, 1
/* 806F3B30  40 82 00 74 */	bne lbl_806F3BA4
/* 806F3B34  80 79 00 84 */	lwz r3, 0x84(r25)
/* 806F3B38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F3B3C  38 63 05 40 */	addi r3, r3, 0x540
/* 806F3B40  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F3B44  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F3B48  80 84 00 00 */	lwz r4, 0(r4)
/* 806F3B4C  4B C5 29 65 */	bl PSMTXCopy
/* 806F3B50  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F3B54  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F3B58  80 63 00 00 */	lwz r3, 0(r3)
/* 806F3B5C  80 9F 06 88 */	lwz r4, 0x688(r31)
/* 806F3B60  38 84 00 24 */	addi r4, r4, 0x24
/* 806F3B64  4B C5 29 4D */	bl PSMTXCopy
/* 806F3B68  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806F3B6C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F3B70  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F3B74  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3B78  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 806F3B7C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F3B80  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F3B84  38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 806F3B88  4B B7 D3 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F3B8C  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 806F3B90  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F3B94  FC 40 08 90 */	fmr f2, f1
/* 806F3B98  C0 7E 01 14 */	lfs f3, 0x114(r30)
/* 806F3B9C  4B B7 BE A1 */	bl cLib_addCalc2__FPffff
/* 806F3BA0  48 00 04 9C */	b lbl_806F403C
lbl_806F3BA4:
/* 806F3BA4  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 806F3BA8  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 806F3BAC  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 806F3BB0  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 806F3BB4  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 806F3BB8  D0 1F 06 F4 */	stfs f0, 0x6f4(r31)
/* 806F3BBC  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 806F3BC0  38 9F 07 04 */	addi r4, r31, 0x704
/* 806F3BC4  7C 65 1B 78 */	mr r5, r3
/* 806F3BC8  4B C5 34 C9 */	bl PSVECAdd
/* 806F3BCC  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 806F3BD0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 806F3BD4  C0 3F 06 FC */	lfs f1, 0x6fc(r31)
/* 806F3BD8  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 806F3BDC  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 806F3BE0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 806F3BE4  3B 00 00 00 */	li r24, 0
/* 806F3BE8  88 1F 06 E4 */	lbz r0, 0x6e4(r31)
/* 806F3BEC  7C 00 07 74 */	extsb r0, r0
/* 806F3BF0  2C 00 00 02 */	cmpwi r0, 2
/* 806F3BF4  40 82 03 7C */	bne lbl_806F3F70
/* 806F3BF8  80 1F 10 68 */	lwz r0, 0x1068(r31)
/* 806F3BFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F3C00  40 82 00 14 */	bne lbl_806F3C14
/* 806F3C04  38 7F 10 0C */	addi r3, r31, 0x100c
/* 806F3C08  4B 99 06 B9 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 806F3C0C  28 03 00 00 */	cmplwi r3, 0
/* 806F3C10  41 82 01 8C */	beq lbl_806F3D9C
lbl_806F3C14:
/* 806F3C14  38 7F 10 0C */	addi r3, r31, 0x100c
/* 806F3C18  4B 99 06 A9 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 806F3C1C  28 03 00 00 */	cmplwi r3, 0
/* 806F3C20  41 82 03 90 */	beq lbl_806F3FB0
/* 806F3C24  38 7F 10 0C */	addi r3, r31, 0x100c
/* 806F3C28  4B 99 07 31 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 806F3C2C  4B B6 FE 1D */	bl GetAc__8cCcD_ObjFv
/* 806F3C30  A8 03 00 08 */	lha r0, 8(r3)
/* 806F3C34  2C 00 00 FD */	cmpwi r0, 0xfd
/* 806F3C38  40 82 03 78 */	bne lbl_806F3FB0
/* 806F3C3C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806F3C40  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F3C44  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 806F3C48  7D 89 03 A6 */	mtctr r12
/* 806F3C4C  4E 80 04 21 */	bctrl 
/* 806F3C50  2C 03 00 00 */	cmpwi r3, 0
/* 806F3C54  40 82 00 34 */	bne lbl_806F3C88
/* 806F3C58  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E3@ha */
/* 806F3C5C  38 03 04 E3 */	addi r0, r3, 0x04E3 /* 0x000704E3@l */
/* 806F3C60  90 01 00 40 */	stw r0, 0x40(r1)
/* 806F3C64  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F3C68  38 81 00 40 */	addi r4, r1, 0x40
/* 806F3C6C  38 A0 FF FF */	li r5, -1
/* 806F3C70  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F3C74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F3C78  7D 89 03 A6 */	mtctr r12
/* 806F3C7C  4E 80 04 21 */	bctrl 
/* 806F3C80  3B 00 00 01 */	li r24, 1
/* 806F3C84  48 00 03 2C */	b lbl_806F3FB0
lbl_806F3C88:
/* 806F3C88  38 61 00 74 */	addi r3, r1, 0x74
/* 806F3C8C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806F3C90  38 BF 06 F8 */	addi r5, r31, 0x6f8
/* 806F3C94  4B B7 2E A1 */	bl __mi__4cXyzCFRC3Vec
/* 806F3C98  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 806F3C9C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F3CA0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 806F3CA4  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 806F3CA8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 806F3CAC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F3CB0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 806F3CB4  EC 01 00 2A */	fadds f0, f1, f0
/* 806F3CB8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3CBC  38 00 00 04 */	li r0, 4
/* 806F3CC0  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 806F3CC4  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 806F3CC8  C0 41 00 DC */	lfs f2, 0xdc(r1)
/* 806F3CCC  4B B7 39 A9 */	bl cM_atan2s__Fff
/* 806F3CD0  7C 64 07 34 */	extsh r4, r3
/* 806F3CD4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F3CD8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F3CDC  80 63 00 00 */	lwz r3, 0(r3)
/* 806F3CE0  4B 91 86 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 806F3CE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F3CE8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F3CEC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3CF0  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 806F3CF4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F3CF8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F3CFC  38 9F 07 04 */	addi r4, r31, 0x704
/* 806F3D00  4B B7 D1 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F3D04  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 806F3D08  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 806F3D0C  38 00 00 00 */	li r0, 0
/* 806F3D10  98 1F 06 BA */	stb r0, 0x6ba(r31)
/* 806F3D14  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704ED@ha */
/* 806F3D18  38 03 04 ED */	addi r0, r3, 0x04ED /* 0x000704ED@l */
/* 806F3D1C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806F3D20  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F3D24  38 81 00 3C */	addi r4, r1, 0x3c
/* 806F3D28  38 A0 00 00 */	li r5, 0
/* 806F3D2C  38 C0 FF FF */	li r6, -1
/* 806F3D30  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F3D34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F3D38  7D 89 03 A6 */	mtctr r12
/* 806F3D3C  4E 80 04 21 */	bctrl 
/* 806F3D40  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806F3D44  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 806F3D48  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806F3D4C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806F3D50  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 806F3D54  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 806F3D58  38 80 00 03 */	li r4, 3
/* 806F3D5C  38 A0 00 1F */	li r5, 0x1f
/* 806F3D60  38 C1 00 68 */	addi r6, r1, 0x68
/* 806F3D64  4B 97 BC C1 */	bl StartShock__12dVibration_cFii4cXyz
/* 806F3D68  7F E3 FB 78 */	mr r3, r31
/* 806F3D6C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806F3D70  4B FF E2 35 */	bl ball_crash_eff_set__FP14e_hzelda_classf
/* 806F3D74  38 00 00 02 */	li r0, 2
/* 806F3D78  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 806F3D7C  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 806F3D80  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 806F3D84  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806F3D88  EC 01 00 2A */	fadds f0, f1, f0
/* 806F3D8C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 806F3D90  38 00 00 50 */	li r0, 0x50
/* 806F3D94  B0 1F 06 B0 */	sth r0, 0x6b0(r31)
/* 806F3D98  48 00 02 18 */	b lbl_806F3FB0
lbl_806F3D9C:
/* 806F3D9C  38 7F 0E D4 */	addi r3, r31, 0xed4
/* 806F3DA0  4B 99 06 C1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806F3DA4  28 03 00 00 */	cmplwi r3, 0
/* 806F3DA8  41 82 02 08 */	beq lbl_806F3FB0
/* 806F3DAC  38 61 00 5C */	addi r3, r1, 0x5c
/* 806F3DB0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806F3DB4  38 BF 06 F8 */	addi r5, r31, 0x6f8
/* 806F3DB8  4B B7 2D 7D */	bl __mi__4cXyzCFRC3Vec
/* 806F3DBC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806F3DC0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F3DC4  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 806F3DC8  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 806F3DCC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 806F3DD0  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F3DD4  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 806F3DD8  EC 01 00 2A */	fadds f0, f1, f0
/* 806F3DDC  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3DE0  3A C0 00 00 */	li r22, 0
/* 806F3DE4  3A E0 00 00 */	li r23, 0
/* 806F3DE8  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806F3DEC  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806F3DF0  28 00 00 29 */	cmplwi r0, 0x29
/* 806F3DF4  40 82 00 50 */	bne lbl_806F3E44
/* 806F3DF8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F3DFC  4B B7 3B 59 */	bl cM_rndF__Ff
/* 806F3E00  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806F3E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F3E08  40 80 00 0C */	bge lbl_806F3E14
/* 806F3E0C  3A E0 0A 00 */	li r23, 0xa00
/* 806F3E10  48 00 00 08 */	b lbl_806F3E18
lbl_806F3E14:
/* 806F3E14  3A E0 F6 00 */	li r23, -2560
lbl_806F3E18:
/* 806F3E18  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F3E1C  4B B7 3B 39 */	bl cM_rndF__Ff
/* 806F3E20  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806F3E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F3E28  40 80 00 0C */	bge lbl_806F3E34
/* 806F3E2C  3A C0 0A 00 */	li r22, 0xa00
/* 806F3E30  48 00 00 08 */	b lbl_806F3E38
lbl_806F3E34:
/* 806F3E34  3A C0 F6 00 */	li r22, -2560
lbl_806F3E38:
/* 806F3E38  38 00 00 04 */	li r0, 4
/* 806F3E3C  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 806F3E40  48 00 00 14 */	b lbl_806F3E54
lbl_806F3E44:
/* 806F3E44  38 00 00 00 */	li r0, 0
/* 806F3E48  98 1F 14 10 */	stb r0, 0x1410(r31)
/* 806F3E4C  38 00 00 03 */	li r0, 3
/* 806F3E50  98 1F 06 E4 */	stb r0, 0x6e4(r31)
lbl_806F3E54:
/* 806F3E54  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 806F3E58  C0 41 00 DC */	lfs f2, 0xdc(r1)
/* 806F3E5C  4B B7 38 19 */	bl cM_atan2s__Fff
/* 806F3E60  7C 17 1A 14 */	add r0, r23, r3
/* 806F3E64  7C 04 07 34 */	extsh r4, r0
/* 806F3E68  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F3E6C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F3E70  80 63 00 00 */	lwz r3, 0(r3)
/* 806F3E74  4B 91 85 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F3E78  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 806F3E7C  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F3E80  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 806F3E84  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F3E88  EC 41 00 2A */	fadds f2, f1, f0
/* 806F3E8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F3E90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F3E94  40 81 00 0C */	ble lbl_806F3EA0
/* 806F3E98  FC 00 10 34 */	frsqrte f0, f2
/* 806F3E9C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F3EA0:
/* 806F3EA0  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 806F3EA4  4B B7 37 D1 */	bl cM_atan2s__Fff
/* 806F3EA8  7C 03 B0 50 */	subf r0, r3, r22
/* 806F3EAC  7C 04 07 34 */	extsh r4, r0
/* 806F3EB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F3EB4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F3EB8  80 63 00 00 */	lwz r3, 0(r3)
/* 806F3EBC  4B 91 84 E1 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F3EC0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F3EC4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 806F3EC8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 806F3ECC  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 806F3ED0  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 806F3ED4  38 61 00 D4 */	addi r3, r1, 0xd4
/* 806F3ED8  38 9F 07 04 */	addi r4, r31, 0x704
/* 806F3EDC  4B B7 D0 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F3EE0  38 00 00 00 */	li r0, 0
/* 806F3EE4  98 1F 06 BA */	stb r0, 0x6ba(r31)
/* 806F3EE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704ED@ha */
/* 806F3EEC  38 03 04 ED */	addi r0, r3, 0x04ED /* 0x000704ED@l */
/* 806F3EF0  90 01 00 38 */	stw r0, 0x38(r1)
/* 806F3EF4  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F3EF8  38 81 00 38 */	addi r4, r1, 0x38
/* 806F3EFC  38 A0 00 00 */	li r5, 0
/* 806F3F00  38 C0 FF FF */	li r6, -1
/* 806F3F04  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F3F08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F3F0C  7D 89 03 A6 */	mtctr r12
/* 806F3F10  4E 80 04 21 */	bctrl 
/* 806F3F14  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806F3F18  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 806F3F1C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806F3F20  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F3F24  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 806F3F28  38 7B 4C 9C */	addi r3, r27, 0x4c9c
/* 806F3F2C  38 80 00 03 */	li r4, 3
/* 806F3F30  38 A0 00 1F */	li r5, 0x1f
/* 806F3F34  38 C1 00 50 */	addi r6, r1, 0x50
/* 806F3F38  4B 97 BA ED */	bl StartShock__12dVibration_cFii4cXyz
/* 806F3F3C  7F E3 FB 78 */	mr r3, r31
/* 806F3F40  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 806F3F44  4B FF E0 61 */	bl ball_crash_eff_set__FP14e_hzelda_classf
/* 806F3F48  38 00 00 02 */	li r0, 2
/* 806F3F4C  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 806F3F50  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 806F3F54  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 806F3F58  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806F3F5C  EC 01 00 2A */	fadds f0, f1, f0
/* 806F3F60  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 806F3F64  38 00 00 50 */	li r0, 0x50
/* 806F3F68  B0 1F 06 B0 */	sth r0, 0x6b0(r31)
/* 806F3F6C  48 00 00 44 */	b lbl_806F3FB0
lbl_806F3F70:
/* 806F3F70  2C 00 00 03 */	cmpwi r0, 3
/* 806F3F74  41 80 00 3C */	blt lbl_806F3FB0
/* 806F3F78  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806F3F7C  EC 01 00 2A */	fadds f0, f1, f0
/* 806F3F80  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 806F3F84  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806F3F88  A8 1F 06 B0 */	lha r0, 0x6b0(r31)
/* 806F3F8C  2C 00 00 00 */	cmpwi r0, 0
/* 806F3F90  41 82 00 1C */	beq lbl_806F3FAC
/* 806F3F94  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F3F98  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 806F3F9C  7D 89 03 A6 */	mtctr r12
/* 806F3FA0  4E 80 04 21 */	bctrl 
/* 806F3FA4  2C 03 00 00 */	cmpwi r3, 0
/* 806F3FA8  41 82 00 08 */	beq lbl_806F3FB0
lbl_806F3FAC:
/* 806F3FAC  3B 00 00 01 */	li r24, 1
lbl_806F3FB0:
/* 806F3FB0  2C 18 00 00 */	cmpwi r24, 0
/* 806F3FB4  40 82 00 14 */	bne lbl_806F3FC8
/* 806F3FB8  7F E3 FB 78 */	mr r3, r31
/* 806F3FBC  4B FF EF E1 */	bl ball_bg_check__FP14e_hzelda_class
/* 806F3FC0  2C 03 00 00 */	cmpwi r3, 0
/* 806F3FC4  41 82 00 48 */	beq lbl_806F400C
lbl_806F3FC8:
/* 806F3FC8  38 00 FF FF */	li r0, -1
/* 806F3FCC  98 1F 06 E4 */	stb r0, 0x6e4(r31)
/* 806F3FD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704EC@ha */
/* 806F3FD4  38 03 04 EC */	addi r0, r3, 0x04EC /* 0x000704EC@l */
/* 806F3FD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F3FDC  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F3FE0  38 81 00 34 */	addi r4, r1, 0x34
/* 806F3FE4  38 A0 00 00 */	li r5, 0
/* 806F3FE8  38 C0 FF FF */	li r6, -1
/* 806F3FEC  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F3FF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F3FF4  7D 89 03 A6 */	mtctr r12
/* 806F3FF8  4E 80 04 21 */	bctrl 
/* 806F3FFC  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 806F4000  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 806F4004  EC 01 00 2A */	fadds f0, f1, f0
/* 806F4008  D0 01 00 B4 */	stfs f0, 0xb4(r1)
lbl_806F400C:
/* 806F400C  38 7F 0F F8 */	addi r3, r31, 0xff8
/* 806F4010  38 81 00 B0 */	addi r4, r1, 0xb0
/* 806F4014  4B B7 B6 35 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F4018  38 7F 10 0C */	addi r3, r31, 0x100c
/* 806F401C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 806F4020  4B 99 0A A5 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 806F4024  7F 83 E3 78 */	mr r3, r28
/* 806F4028  38 9F 0E D4 */	addi r4, r31, 0xed4
/* 806F402C  4B B7 0B 7D */	bl Set__4cCcSFP8cCcD_Obj
/* 806F4030  7F 83 E3 78 */	mr r3, r28
/* 806F4034  38 9F 10 0C */	addi r4, r31, 0x100c
/* 806F4038  4B B7 0B 71 */	bl Set__4cCcSFP8cCcD_Obj
lbl_806F403C:
/* 806F403C  3A A0 00 00 */	li r21, 0
/* 806F4040  3B 00 00 00 */	li r24, 0
/* 806F4044  3B 20 00 00 */	li r25, 0
/* 806F4048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F404C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F4050  3A FA 00 58 */	addi r23, r26, 0x58
lbl_806F4054:
/* 806F4054  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806F4058  38 00 00 FF */	li r0, 0xff
/* 806F405C  90 01 00 08 */	stw r0, 8(r1)
/* 806F4060  38 80 00 00 */	li r4, 0
/* 806F4064  90 81 00 0C */	stw r4, 0xc(r1)
/* 806F4068  38 00 FF FF */	li r0, -1
/* 806F406C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F4070  90 81 00 14 */	stw r4, 0x14(r1)
/* 806F4074  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F4078  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806F407C  3A D9 14 1C */	addi r22, r25, 0x141c
/* 806F4080  7C 9F B0 2E */	lwzx r4, r31, r22
/* 806F4084  38 A0 00 00 */	li r5, 0
/* 806F4088  7C D7 C2 2E */	lhzx r6, r23, r24
/* 806F408C  38 FF 06 F8 */	addi r7, r31, 0x6f8
/* 806F4090  39 00 00 00 */	li r8, 0
/* 806F4094  39 20 00 00 */	li r9, 0
/* 806F4098  39 40 00 00 */	li r10, 0
/* 806F409C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F40A0  4B 95 94 2D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F40A4  7C 7F B1 2E */	stwx r3, r31, r22
/* 806F40A8  3A B5 00 01 */	addi r21, r21, 1
/* 806F40AC  2C 15 00 03 */	cmpwi r21, 3
/* 806F40B0  3B 18 00 02 */	addi r24, r24, 2
/* 806F40B4  3B 39 00 04 */	addi r25, r25, 4
/* 806F40B8  41 80 FF 9C */	blt lbl_806F4054
/* 806F40BC  48 00 00 70 */	b lbl_806F412C
lbl_806F40C0:
/* 806F40C0  7C 60 07 75 */	extsb. r0, r3
/* 806F40C4  40 80 00 68 */	bge lbl_806F412C
/* 806F40C8  3A A0 00 00 */	li r21, 0
/* 806F40CC  3B 00 00 00 */	li r24, 0
/* 806F40D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F40D4  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_806F40D8:
/* 806F40D8  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806F40DC  38 63 02 10 */	addi r3, r3, 0x210
/* 806F40E0  3A D8 14 1C */	addi r22, r24, 0x141c
/* 806F40E4  7C 9F B0 2E */	lwzx r4, r31, r22
/* 806F40E8  4B 95 78 31 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806F40EC  28 03 00 00 */	cmplwi r3, 0
/* 806F40F0  41 82 00 18 */	beq lbl_806F4108
/* 806F40F4  4B B8 AB 6D */	bl deleteAllParticle__14JPABaseEmitterFv
/* 806F40F8  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806F40FC  38 63 02 10 */	addi r3, r3, 0x210
/* 806F4100  7C 9F B0 2E */	lwzx r4, r31, r22
/* 806F4104  4B 95 77 B1 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_806F4108:
/* 806F4108  3A B5 00 01 */	addi r21, r21, 1
/* 806F410C  2C 15 00 03 */	cmpwi r21, 3
/* 806F4110  3B 18 00 04 */	addi r24, r24, 4
/* 806F4114  41 80 FF C4 */	blt lbl_806F40D8
/* 806F4118  7F E3 FB 78 */	mr r3, r31
/* 806F411C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F4120  4B FF DE 85 */	bl ball_crash_eff_set__FP14e_hzelda_classf
/* 806F4124  38 00 00 00 */	li r0, 0
/* 806F4128  98 1F 06 E4 */	stb r0, 0x6e4(r31)
lbl_806F412C:
/* 806F412C  A8 1F 07 1A */	lha r0, 0x71a(r31)
/* 806F4130  2C 00 00 00 */	cmpwi r0, 0
/* 806F4134  41 82 03 B0 */	beq lbl_806F44E4
/* 806F4138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F413C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F4140  C0 3F 07 28 */	lfs f1, 0x728(r31)
/* 806F4144  C0 5F 07 2C */	lfs f2, 0x72c(r31)
/* 806F4148  C0 7F 07 30 */	lfs f3, 0x730(r31)
/* 806F414C  4B C5 27 9D */	bl PSMTXTrans
/* 806F4150  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F4154  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F4158  A8 9F 07 1C */	lha r4, 0x71c(r31)
/* 806F415C  3C 84 00 01 */	addis r4, r4, 1
/* 806F4160  38 04 80 00 */	addi r0, r4, -32768
/* 806F4164  7C 04 07 34 */	extsh r4, r0
/* 806F4168  4B 91 82 CD */	bl mDoMtx_YrotM__FPA4_fs
/* 806F416C  C3 FF 07 24 */	lfs f31, 0x724(r31)
/* 806F4170  FC 20 F8 90 */	fmr f1, f31
/* 806F4174  FC 40 F8 90 */	fmr f2, f31
/* 806F4178  FC 60 F8 90 */	fmr f3, f31
/* 806F417C  4B 91 8C BD */	bl scaleM__14mDoMtx_stack_cFfff
/* 806F4180  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F4184  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F4188  80 9F 07 14 */	lwz r4, 0x714(r31)
/* 806F418C  38 84 00 24 */	addi r4, r4, 0x24
/* 806F4190  4B C5 23 21 */	bl PSMTXCopy
/* 806F4194  80 1F 07 20 */	lwz r0, 0x720(r31)
/* 806F4198  C8 3E 00 88 */	lfd f1, 0x88(r30)
/* 806F419C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806F41A0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806F41A4  3C 80 43 30 */	lis r4, 0x4330
/* 806F41A8  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 806F41AC  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 806F41B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806F41B4  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 806F41B8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806F41BC  80 1F 07 20 */	lwz r0, 0x720(r31)
/* 806F41C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806F41C4  90 01 00 EC */	stw r0, 0xec(r1)
/* 806F41C8  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 806F41CC  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 806F41D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806F41D4  80 7F 07 38 */	lwz r3, 0x738(r31)
/* 806F41D8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806F41DC  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 806F41E0  2C 03 00 D2 */	cmpwi r3, 0xd2
/* 806F41E4  40 80 01 74 */	bge lbl_806F4358
/* 806F41E8  2C 03 00 64 */	cmpwi r3, 0x64
/* 806F41EC  40 80 01 64 */	bge lbl_806F4350
/* 806F41F0  38 03 00 02 */	addi r0, r3, 2
/* 806F41F4  90 1F 07 20 */	stw r0, 0x720(r31)
/* 806F41F8  80 1F 07 20 */	lwz r0, 0x720(r31)
/* 806F41FC  2C 00 00 02 */	cmpwi r0, 2
/* 806F4200  40 82 00 44 */	bne lbl_806F4244
/* 806F4204  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E7@ha */
/* 806F4208  38 03 04 E7 */	addi r0, r3, 0x04E7 /* 0x000704E7@l */
/* 806F420C  90 01 00 30 */	stw r0, 0x30(r1)
/* 806F4210  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806F4214  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806F4218  80 63 00 00 */	lwz r3, 0(r3)
/* 806F421C  38 81 00 30 */	addi r4, r1, 0x30
/* 806F4220  38 BF 07 28 */	addi r5, r31, 0x728
/* 806F4224  38 C0 00 00 */	li r6, 0
/* 806F4228  38 E0 00 00 */	li r7, 0
/* 806F422C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F4230  FC 40 08 90 */	fmr f2, f1
/* 806F4234  C0 7E 00 08 */	lfs f3, 8(r30)
/* 806F4238  FC 80 18 90 */	fmr f4, f3
/* 806F423C  39 00 00 00 */	li r8, 0
/* 806F4240  4B BB 77 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806F4244:
/* 806F4244  80 1F 07 20 */	lwz r0, 0x720(r31)
/* 806F4248  2C 00 00 64 */	cmpwi r0, 0x64
/* 806F424C  40 82 01 0C */	bne lbl_806F4358
/* 806F4250  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E8@ha */
/* 806F4254  38 03 04 E8 */	addi r0, r3, 0x04E8 /* 0x000704E8@l */
/* 806F4258  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806F425C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806F4260  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806F4264  80 63 00 00 */	lwz r3, 0(r3)
/* 806F4268  38 81 00 2C */	addi r4, r1, 0x2c
/* 806F426C  38 BF 07 28 */	addi r5, r31, 0x728
/* 806F4270  38 C0 00 00 */	li r6, 0
/* 806F4274  38 E0 00 00 */	li r7, 0
/* 806F4278  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F427C  FC 40 08 90 */	fmr f2, f1
/* 806F4280  C0 7E 00 08 */	lfs f3, 8(r30)
/* 806F4284  FC 80 18 90 */	fmr f4, f3
/* 806F4288  39 00 00 00 */	li r8, 0
/* 806F428C  4B BB 76 F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806F4290  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E9@ha */
/* 806F4294  38 03 04 E9 */	addi r0, r3, 0x04E9 /* 0x000704E9@l */
/* 806F4298  90 01 00 28 */	stw r0, 0x28(r1)
/* 806F429C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F42A0  38 81 00 28 */	addi r4, r1, 0x28
/* 806F42A4  38 A0 FF FF */	li r5, -1
/* 806F42A8  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F42AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F42B0  7D 89 03 A6 */	mtctr r12
/* 806F42B4  4E 80 04 21 */	bctrl 
/* 806F42B8  38 61 00 48 */	addi r3, r1, 0x48
/* 806F42BC  38 80 00 00 */	li r4, 0
/* 806F42C0  A8 BF 07 1C */	lha r5, 0x71c(r31)
/* 806F42C4  3C A5 00 01 */	addis r5, r5, 1
/* 806F42C8  38 05 80 00 */	addi r0, r5, -32768
/* 806F42CC  7C 05 07 34 */	extsh r5, r0
/* 806F42D0  38 C0 00 00 */	li r6, 0
/* 806F42D4  4B B7 31 21 */	bl __ct__5csXyzFsss
/* 806F42D8  D3 E1 00 A4 */	stfs f31, 0xa4(r1)
/* 806F42DC  D3 E1 00 A8 */	stfs f31, 0xa8(r1)
/* 806F42E0  D3 E1 00 AC */	stfs f31, 0xac(r1)
/* 806F42E4  3A A0 00 00 */	li r21, 0
/* 806F42E8  3B 00 00 00 */	li r24, 0
/* 806F42EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F42F0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F42F4  3A FA 00 60 */	addi r23, r26, 0x60
lbl_806F42F8:
/* 806F42F8  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806F42FC  38 80 00 00 */	li r4, 0
/* 806F4300  90 81 00 08 */	stw r4, 8(r1)
/* 806F4304  38 00 FF FF */	li r0, -1
/* 806F4308  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F430C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806F4310  90 81 00 14 */	stw r4, 0x14(r1)
/* 806F4314  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F4318  38 80 00 00 */	li r4, 0
/* 806F431C  7C B7 C2 2E */	lhzx r5, r23, r24
/* 806F4320  38 DF 07 28 */	addi r6, r31, 0x728
/* 806F4324  38 E0 00 00 */	li r7, 0
/* 806F4328  39 01 00 48 */	addi r8, r1, 0x48
/* 806F432C  39 21 00 A4 */	addi r9, r1, 0xa4
/* 806F4330  39 40 00 FF */	li r10, 0xff
/* 806F4334  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F4338  4B 95 87 59 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F433C  3A B5 00 01 */	addi r21, r21, 1
/* 806F4340  2C 15 00 05 */	cmpwi r21, 5
/* 806F4344  3B 18 00 02 */	addi r24, r24, 2
/* 806F4348  41 80 FF B0 */	blt lbl_806F42F8
/* 806F434C  48 00 00 0C */	b lbl_806F4358
lbl_806F4350:
/* 806F4350  38 03 00 01 */	addi r0, r3, 1
/* 806F4354  90 1F 07 20 */	stw r0, 0x720(r31)
lbl_806F4358:
/* 806F4358  80 1F 07 20 */	lwz r0, 0x720(r31)
/* 806F435C  2C 00 00 69 */	cmpwi r0, 0x69
/* 806F4360  40 81 01 84 */	ble lbl_806F44E4
/* 806F4364  2C 00 00 87 */	cmpwi r0, 0x87
/* 806F4368  40 80 01 7C */	bge lbl_806F44E4
/* 806F436C  82 BD 5D AC */	lwz r21, 0x5dac(r29)
/* 806F4370  C0 35 04 D0 */	lfs f1, 0x4d0(r21)
/* 806F4374  C0 1F 07 28 */	lfs f0, 0x728(r31)
/* 806F4378  EC 01 00 28 */	fsubs f0, f1, f0
/* 806F437C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 806F4380  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F4384  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 806F4388  C0 35 04 D8 */	lfs f1, 0x4d8(r21)
/* 806F438C  C0 1F 07 30 */	lfs f0, 0x730(r31)
/* 806F4390  EC 01 00 28 */	fsubs f0, f1, f0
/* 806F4394  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 806F4398  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F439C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F43A0  80 63 00 00 */	lwz r3, 0(r3)
/* 806F43A4  A8 1F 07 1C */	lha r0, 0x71c(r31)
/* 806F43A8  7C 00 00 D0 */	neg r0, r0
/* 806F43AC  7C 04 07 34 */	extsh r4, r0
/* 806F43B0  4B 91 80 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 806F43B4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 806F43B8  38 81 00 D4 */	addi r4, r1, 0xd4
/* 806F43BC  4B B7 CB 31 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F43C0  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 806F43C4  C0 41 00 DC */	lfs f2, 0xdc(r1)
/* 806F43C8  4B B7 34 4D */	bl cM_atan2f__Fff
/* 806F43CC  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 806F43D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806F43D4  FC 00 02 10 */	fabs f0, f0
/* 806F43D8  FC 40 00 18 */	frsp f2, f0
/* 806F43DC  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 806F43E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F43E4  4C 41 13 82 */	cror 2, 1, 2
/* 806F43E8  40 82 00 1C */	bne lbl_806F4404
/* 806F43EC  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 806F43F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F43F4  4C 40 13 82 */	cror 2, 0, 2
/* 806F43F8  40 82 00 0C */	bne lbl_806F4404
/* 806F43FC  EC 40 10 28 */	fsubs f2, f0, f2
/* 806F4400  48 00 00 28 */	b lbl_806F4428
lbl_806F4404:
/* 806F4404  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 806F4408  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806F440C  4C 41 13 82 */	cror 2, 1, 2
/* 806F4410  40 82 00 18 */	bne lbl_806F4428
/* 806F4414  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 806F4418  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F441C  4C 40 13 82 */	cror 2, 0, 2
/* 806F4420  40 82 00 08 */	bne lbl_806F4428
/* 806F4424  EC 42 08 28 */	fsubs f2, f2, f1
lbl_806F4428:
/* 806F4428  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 806F442C  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 806F4430  EC 02 00 24 */	fdivs f0, f2, f0
/* 806F4434  EC 21 00 32 */	fmuls f1, f1, f0
/* 806F4438  4B B7 31 AD */	bl cM_rad2s__Ff
/* 806F443C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806F4440  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806F4444  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 806F4448  7C 64 02 14 */	add r3, r4, r0
/* 806F444C  C0 23 00 04 */	lfs f1, 4(r3)
/* 806F4450  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806F4454  EC 60 08 24 */	fdivs f3, f0, f1
/* 806F4458  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 806F445C  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F4460  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 806F4464  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F4468  EC 41 00 2A */	fadds f2, f1, f0
/* 806F446C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F4470  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F4474  40 81 00 0C */	ble lbl_806F4480
/* 806F4478  FC 00 10 34 */	frsqrte f0, f2
/* 806F447C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F4480:
/* 806F4480  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806F4484  C0 1F 07 24 */	lfs f0, 0x724(r31)
/* 806F4488  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F448C  EC 03 00 32 */	fmuls f0, f3, f0
/* 806F4490  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F4494  40 80 00 50 */	bge lbl_806F44E4
/* 806F4498  38 7F 12 68 */	addi r3, r31, 0x1268
/* 806F449C  38 95 04 D0 */	addi r4, r21, 0x4d0
/* 806F44A0  4B B7 B1 A9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F44A4  38 7F 12 68 */	addi r3, r31, 0x1268
/* 806F44A8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806F44AC  4B B7 B2 5D */	bl SetR__8cM3dGSphFf
/* 806F44B0  7F 83 E3 78 */	mr r3, r28
/* 806F44B4  38 9F 11 44 */	addi r4, r31, 0x1144
/* 806F44B8  4B B7 06 F1 */	bl Set__4cCcSFP8cCcD_Obj
/* 806F44BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E3@ha */
/* 806F44C0  38 03 04 E3 */	addi r0, r3, 0x04E3 /* 0x000704E3@l */
/* 806F44C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F44C8  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F44CC  38 81 00 24 */	addi r4, r1, 0x24
/* 806F44D0  38 A0 FF FF */	li r5, -1
/* 806F44D4  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F44D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F44DC  7D 89 03 A6 */	mtctr r12
/* 806F44E0  4E 80 04 21 */	bctrl 
lbl_806F44E4:
/* 806F44E4  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 806F44E8  2C 00 00 00 */	cmpwi r0, 0
/* 806F44EC  41 82 00 B8 */	beq lbl_806F45A4
/* 806F44F0  38 7F 06 90 */	addi r3, r31, 0x690
/* 806F44F4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F44F8  FC 40 08 90 */	fmr f2, f1
/* 806F44FC  C0 7E 01 34 */	lfs f3, 0x134(r30)
/* 806F4500  4B B7 B5 3D */	bl cLib_addCalc2__FPffff
/* 806F4504  38 80 00 00 */	li r4, 0
/* 806F4508  90 9F 06 8C */	stw r4, 0x68c(r31)
/* 806F450C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F4510  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F4514  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806F4518  38 00 00 FF */	li r0, 0xff
/* 806F451C  90 01 00 08 */	stw r0, 8(r1)
/* 806F4520  90 81 00 0C */	stw r4, 0xc(r1)
/* 806F4524  38 00 FF FF */	li r0, -1
/* 806F4528  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F452C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806F4530  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F4534  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806F4538  80 9F 14 18 */	lwz r4, 0x1418(r31)
/* 806F453C  38 A0 00 00 */	li r5, 0
/* 806F4540  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000895F@ha */
/* 806F4544  38 C6 89 5F */	addi r6, r6, 0x895F /* 0x0000895F@l */
/* 806F4548  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806F454C  39 00 00 00 */	li r8, 0
/* 806F4550  39 20 00 00 */	li r9, 0
/* 806F4554  39 40 00 00 */	li r10, 0
/* 806F4558  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F455C  4B 95 8F 71 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F4560  90 7F 14 18 */	stw r3, 0x1418(r31)
/* 806F4564  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806F4568  38 63 02 10 */	addi r3, r3, 0x210
/* 806F456C  80 9F 14 18 */	lwz r4, 0x1418(r31)
/* 806F4570  4B 95 73 A9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806F4574  7C 65 1B 79 */	or. r5, r3, r3
/* 806F4578  41 82 00 3C */	beq lbl_806F45B4
/* 806F457C  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 806F4580  38 63 00 24 */	addi r3, r3, 0x24
/* 806F4584  38 85 00 68 */	addi r4, r5, 0x68
/* 806F4588  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 806F458C  4B B8 C2 55 */	bl func_802807E0
/* 806F4590  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806F4594  38 63 02 10 */	addi r3, r3, 0x210
/* 806F4598  80 9F 14 18 */	lwz r4, 0x1418(r31)
/* 806F459C  4B 95 73 19 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 806F45A0  48 00 00 14 */	b lbl_806F45B4
lbl_806F45A4:
/* 806F45A4  38 7F 06 90 */	addi r3, r31, 0x690
/* 806F45A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F45AC  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 806F45B0  4B B7 B4 D1 */	bl cLib_addCalc0__FPfff
lbl_806F45B4:
/* 806F45B4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 806F45B8  2C 00 00 10 */	cmpwi r0, 0x10
/* 806F45BC  41 82 00 14 */	beq lbl_806F45D0
/* 806F45C0  2C 00 00 16 */	cmpwi r0, 0x16
/* 806F45C4  41 82 00 0C */	beq lbl_806F45D0
/* 806F45C8  2C 00 00 11 */	cmpwi r0, 0x11
/* 806F45CC  40 82 01 34 */	bne lbl_806F4700
lbl_806F45D0:
/* 806F45D0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F45D4  83 23 00 04 */	lwz r25, 4(r3)
/* 806F45D8  3B 00 00 00 */	li r24, 0
/* 806F45DC  3B 80 00 00 */	li r28, 0
/* 806F45E0  3B A0 00 00 */	li r29, 0
/* 806F45E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F45E8  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F45EC  3A FA 00 6C */	addi r23, r26, 0x6c
lbl_806F45F0:
/* 806F45F0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806F45F4  38 00 00 FF */	li r0, 0xff
/* 806F45F8  90 01 00 08 */	stw r0, 8(r1)
/* 806F45FC  38 80 00 00 */	li r4, 0
/* 806F4600  90 81 00 0C */	stw r4, 0xc(r1)
/* 806F4604  38 00 FF FF */	li r0, -1
/* 806F4608  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F460C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806F4610  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F4614  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806F4618  3A DD 14 28 */	addi r22, r29, 0x1428
/* 806F461C  7C 9F B0 2E */	lwzx r4, r31, r22
/* 806F4620  38 A0 00 00 */	li r5, 0
/* 806F4624  7C D7 E2 2E */	lhzx r6, r23, r28
/* 806F4628  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806F462C  39 00 00 00 */	li r8, 0
/* 806F4630  39 20 00 00 */	li r9, 0
/* 806F4634  39 40 00 00 */	li r10, 0
/* 806F4638  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F463C  4B 95 8E 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F4640  7C 7F B1 2E */	stwx r3, r31, r22
/* 806F4644  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806F4648  38 63 02 10 */	addi r3, r3, 0x210
/* 806F464C  7C 9F B0 2E */	lwzx r4, r31, r22
/* 806F4650  4B 95 72 C9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806F4654  7C 7A 1B 79 */	or. r26, r3, r3
/* 806F4658  41 82 00 68 */	beq lbl_806F46C0
/* 806F465C  2C 18 00 02 */	cmpwi r24, 2
/* 806F4660  41 81 00 34 */	bgt lbl_806F4694
/* 806F4664  80 79 00 84 */	lwz r3, 0x84(r25)
/* 806F4668  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F466C  38 63 00 60 */	addi r3, r3, 0x60
/* 806F4670  38 9A 00 68 */	addi r4, r26, 0x68
/* 806F4674  38 BA 00 98 */	addi r5, r26, 0x98
/* 806F4678  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 806F467C  4B B8 C1 8D */	bl func_80280808
/* 806F4680  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 806F4684  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 806F4688  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 806F468C  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
/* 806F4690  48 00 00 30 */	b lbl_806F46C0
lbl_806F4694:
/* 806F4694  80 79 00 84 */	lwz r3, 0x84(r25)
/* 806F4698  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F469C  38 63 06 00 */	addi r3, r3, 0x600
/* 806F46A0  38 9A 00 68 */	addi r4, r26, 0x68
/* 806F46A4  38 BA 00 98 */	addi r5, r26, 0x98
/* 806F46A8  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 806F46AC  4B B8 C1 5D */	bl func_80280808
/* 806F46B0  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 806F46B4  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 806F46B8  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 806F46BC  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
lbl_806F46C0:
/* 806F46C0  3B 18 00 01 */	addi r24, r24, 1
/* 806F46C4  2C 18 00 06 */	cmpwi r24, 6
/* 806F46C8  3B 9C 00 02 */	addi r28, r28, 2
/* 806F46CC  3B BD 00 04 */	addi r29, r29, 4
/* 806F46D0  41 80 FF 20 */	blt lbl_806F45F0
/* 806F46D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704EF@ha */
/* 806F46D8  38 03 04 EF */	addi r0, r3, 0x04EF /* 0x000704EF@l */
/* 806F46DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 806F46E0  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 806F46E4  38 81 00 20 */	addi r4, r1, 0x20
/* 806F46E8  38 A0 00 00 */	li r5, 0
/* 806F46EC  38 C0 FF FF */	li r6, -1
/* 806F46F0  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 806F46F4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806F46F8  7D 89 03 A6 */	mtctr r12
/* 806F46FC  4E 80 04 21 */	bctrl 
lbl_806F4700:
/* 806F4700  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806F4704  7C 03 07 74 */	extsb r3, r0
/* 806F4708  4B 93 89 65 */	bl dComIfGp_getReverb__Fi
/* 806F470C  7C 65 1B 78 */	mr r5, r3
/* 806F4710  38 7F 13 F0 */	addi r3, r31, 0x13f0
/* 806F4714  38 80 00 00 */	li r4, 0
/* 806F4718  81 9F 14 00 */	lwz r12, 0x1400(r31)
/* 806F471C  81 8C 00 08 */	lwz r12, 8(r12)
/* 806F4720  7D 89 03 A6 */	mtctr r12
/* 806F4724  4E 80 04 21 */	bctrl 
/* 806F4728  38 60 00 01 */	li r3, 1
lbl_806F472C:
/* 806F472C  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 806F4730  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 806F4734  39 61 01 20 */	addi r11, r1, 0x120
/* 806F4738  4B C6 DA D1 */	bl _restgpr_21
/* 806F473C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 806F4740  7C 08 03 A6 */	mtlr r0
/* 806F4744  38 21 01 30 */	addi r1, r1, 0x130
/* 806F4748  4E 80 00 20 */	blr 
