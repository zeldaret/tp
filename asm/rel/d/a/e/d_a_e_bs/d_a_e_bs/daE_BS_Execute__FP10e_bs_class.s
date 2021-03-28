lbl_8068FBDC:
/* 8068FBDC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8068FBE0  7C 08 02 A6 */	mflr r0
/* 8068FBE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8068FBE8  39 61 00 70 */	addi r11, r1, 0x70
/* 8068FBEC  4B CD 25 EC */	b _savegpr_28
/* 8068FBF0  7C 7C 1B 78 */	mr r28, r3
/* 8068FBF4  3C 60 80 69 */	lis r3, lit_3788@ha
/* 8068FBF8  3B C3 0D D8 */	addi r30, r3, lit_3788@l
/* 8068FBFC  A8 7C 06 7C */	lha r3, 0x67c(r28)
/* 8068FC00  38 03 00 01 */	addi r0, r3, 1
/* 8068FC04  B0 1C 06 7C */	sth r0, 0x67c(r28)
/* 8068FC08  38 60 00 00 */	li r3, 0
/* 8068FC0C  38 00 00 04 */	li r0, 4
/* 8068FC10  7C 09 03 A6 */	mtctr r0
lbl_8068FC14:
/* 8068FC14  38 A3 06 9C */	addi r5, r3, 0x69c
/* 8068FC18  7C 9C 2A AE */	lhax r4, r28, r5
/* 8068FC1C  2C 04 00 00 */	cmpwi r4, 0
/* 8068FC20  41 82 00 0C */	beq lbl_8068FC2C
/* 8068FC24  38 04 FF FF */	addi r0, r4, -1
/* 8068FC28  7C 1C 2B 2E */	sthx r0, r28, r5
lbl_8068FC2C:
/* 8068FC2C  38 63 00 02 */	addi r3, r3, 2
/* 8068FC30  42 00 FF E4 */	bdnz lbl_8068FC14
/* 8068FC34  A8 7C 06 A4 */	lha r3, 0x6a4(r28)
/* 8068FC38  2C 03 00 00 */	cmpwi r3, 0
/* 8068FC3C  41 82 00 0C */	beq lbl_8068FC48
/* 8068FC40  38 03 FF FF */	addi r0, r3, -1
/* 8068FC44  B0 1C 06 A4 */	sth r0, 0x6a4(r28)
lbl_8068FC48:
/* 8068FC48  7F 83 E3 78 */	mr r3, r28
/* 8068FC4C  4B FF F8 79 */	bl action__FP10e_bs_class
/* 8068FC50  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 8068FC54  FC 00 02 10 */	fabs f0, f0
/* 8068FC58  FC 60 00 18 */	frsp f3, f0
/* 8068FC5C  38 7C 06 90 */	addi r3, r28, 0x690
/* 8068FC60  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8068FC64  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8068FC68  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8068FC6C  EC 60 18 2A */	fadds f3, f0, f3
/* 8068FC70  4B BD FD CC */	b cLib_addCalc2__FPffff
/* 8068FC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8068FC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8068FC7C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8068FC80  C0 5C 06 90 */	lfs f2, 0x690(r28)
/* 8068FC84  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 8068FC88  4B CB 6C 60 */	b PSMTXTrans
/* 8068FC8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8068FC90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8068FC94  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8068FC98  4B 97 C7 9C */	b mDoMtx_YrotM__FPA4_fs
/* 8068FC9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8068FCA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8068FCA4  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 8068FCA8  4B 97 C6 F4 */	b mDoMtx_XrotM__FPA4_fs
/* 8068FCAC  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068FCB0  3B E3 10 A0 */	addi r31, r3, l_HIO@l
/* 8068FCB4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068FCB8  FC 40 08 90 */	fmr f2, f1
/* 8068FCBC  FC 60 08 90 */	fmr f3, f1
/* 8068FCC0  4B 97 D1 78 */	b scaleM__14mDoMtx_stack_cFfff
/* 8068FCC4  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8068FCC8  83 A3 00 04 */	lwz r29, 4(r3)
/* 8068FCCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8068FCD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8068FCD4  38 9D 00 24 */	addi r4, r29, 0x24
/* 8068FCD8  4B CB 67 D8 */	b PSMTXCopy
/* 8068FCDC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8068FCE0  7C 03 07 74 */	extsb r3, r0
/* 8068FCE4  4B 99 D3 88 */	b dComIfGp_getReverb__Fi
/* 8068FCE8  7C 65 1B 78 */	mr r5, r3
/* 8068FCEC  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8068FCF0  38 80 00 00 */	li r4, 0
/* 8068FCF4  4B 98 13 BC */	b play__16mDoExt_McaMorfSOFUlSc
/* 8068FCF8  7F 83 E3 78 */	mr r3, r28
/* 8068FCFC  4B FF FD 09 */	bl anm_se_set__FP10e_bs_class
/* 8068FD00  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8068FD04  4B 98 14 E8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8068FD08  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068FD0C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8068FD10  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8068FD14  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8068FD18  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8068FD1C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8068FD20  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8068FD24  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8068FD28  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8068FD2C  A8 1C 06 A4 */	lha r0, 0x6a4(r28)
/* 8068FD30  2C 00 00 00 */	cmpwi r0, 0
/* 8068FD34  41 82 00 14 */	beq lbl_8068FD48
/* 8068FD38  38 61 00 38 */	addi r3, r1, 0x38
/* 8068FD3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8068FD40  7C 65 1B 78 */	mr r5, r3
/* 8068FD44  4B CB 73 4C */	b PSVECAdd
lbl_8068FD48:
/* 8068FD48  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8068FD4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068FD50  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8068FD54  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8068FD58  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8068FD5C  80 84 00 00 */	lwz r4, 0(r4)
/* 8068FD60  4B CB 67 50 */	b PSMTXCopy
/* 8068FD64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068FD68  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8068FD6C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8068FD70  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8068FD74  38 61 00 50 */	addi r3, r1, 0x50
/* 8068FD78  38 9C 05 38 */	addi r4, r28, 0x538
/* 8068FD7C  4B BE 11 70 */	b MtxPosition__FP4cXyzP4cXyz
/* 8068FD80  38 61 00 14 */	addi r3, r1, 0x14
/* 8068FD84  38 9C 05 38 */	addi r4, r28, 0x538
/* 8068FD88  38 A1 00 38 */	addi r5, r1, 0x38
/* 8068FD8C  4B BD 6D 58 */	b __pl__4cXyzCFRC3Vec
/* 8068FD90  38 7C 0A 50 */	addi r3, r28, 0xa50
/* 8068FD94  38 81 00 14 */	addi r4, r1, 0x14
/* 8068FD98  4B BD F8 B0 */	b SetC__8cM3dGSphFRC4cXyz
/* 8068FD9C  38 7C 0A 50 */	addi r3, r28, 0xa50
/* 8068FDA0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8068FDA4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8068FDA8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8068FDAC  4B BD F9 5C */	b SetR__8cM3dGSphFf
/* 8068FDB0  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8068FDB4  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 8068FDB8  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8068FDBC  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8068FDC0  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8068FDC4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 8068FDC8  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 8068FDCC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8068FDD0  EC 01 00 2A */	fadds f0, f1, f0
/* 8068FDD4  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 8068FDD8  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8068FDDC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068FDE0  38 63 00 30 */	addi r3, r3, 0x30
/* 8068FDE4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8068FDE8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8068FDEC  80 84 00 00 */	lwz r4, 0(r4)
/* 8068FDF0  4B CB 66 C0 */	b PSMTXCopy
/* 8068FDF4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068FDF8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8068FDFC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8068FE00  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8068FE04  38 61 00 50 */	addi r3, r1, 0x50
/* 8068FE08  38 81 00 44 */	addi r4, r1, 0x44
/* 8068FE0C  4B BE 10 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8068FE10  38 61 00 08 */	addi r3, r1, 8
/* 8068FE14  38 81 00 44 */	addi r4, r1, 0x44
/* 8068FE18  38 A1 00 38 */	addi r5, r1, 0x38
/* 8068FE1C  4B BD 6C C8 */	b __pl__4cXyzCFRC3Vec
/* 8068FE20  38 7C 0B 88 */	addi r3, r28, 0xb88
/* 8068FE24  38 81 00 08 */	addi r4, r1, 8
/* 8068FE28  4B BD F8 20 */	b SetC__8cM3dGSphFRC4cXyz
/* 8068FE2C  38 7C 0B 88 */	addi r3, r28, 0xb88
/* 8068FE30  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 8068FE34  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8068FE38  EC 21 00 32 */	fmuls f1, f1, f0
/* 8068FE3C  4B BD F8 CC */	b SetR__8cM3dGSphFf
/* 8068FE40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068FE44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8068FE48  3B A3 23 3C */	addi r29, r3, 0x233c
/* 8068FE4C  7F A3 EB 78 */	mr r3, r29
/* 8068FE50  38 9C 09 2C */	addi r4, r28, 0x92c
/* 8068FE54  4B BD 4D 54 */	b Set__4cCcSFP8cCcD_Obj
/* 8068FE58  7F A3 EB 78 */	mr r3, r29
/* 8068FE5C  38 9C 0A 64 */	addi r4, r28, 0xa64
/* 8068FE60  4B BD 4D 48 */	b Set__4cCcSFP8cCcD_Obj
/* 8068FE64  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 8068FE68  38 9C 05 38 */	addi r4, r28, 0x538
/* 8068FE6C  38 A0 00 00 */	li r5, 0
/* 8068FE70  38 C0 00 00 */	li r6, 0
/* 8068FE74  4B 98 07 54 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 8068FE78  80 7C 05 CC */	lwz r3, 0x5cc(r28)
/* 8068FE7C  80 63 00 04 */	lwz r3, 4(r3)
/* 8068FE80  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8068FE84  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068FE88  38 63 01 80 */	addi r3, r3, 0x180
/* 8068FE8C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8068FE90  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8068FE94  80 84 00 00 */	lwz r4, 0(r4)
/* 8068FE98  4B CB 66 18 */	b PSMTXCopy
/* 8068FE9C  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 8068FEA0  80 83 00 04 */	lwz r4, 4(r3)
/* 8068FEA4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8068FEA8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8068FEAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8068FEB0  38 84 00 24 */	addi r4, r4, 0x24
/* 8068FEB4  4B CB 65 FC */	b PSMTXCopy
/* 8068FEB8  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 8068FEBC  4B 98 07 F0 */	b modelCalc__14mDoExt_McaMorfFv
/* 8068FEC0  88 1C 06 A6 */	lbz r0, 0x6a6(r28)
/* 8068FEC4  7C 00 07 75 */	extsb. r0, r0
/* 8068FEC8  41 82 00 68 */	beq lbl_8068FF30
/* 8068FECC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8068FED0  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8068FED4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8068FED8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8068FEDC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8068FEE0  38 61 00 50 */	addi r3, r1, 0x50
/* 8068FEE4  38 81 00 44 */	addi r4, r1, 0x44
/* 8068FEE8  4B BE 10 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 8068FEEC  88 1C 06 A7 */	lbz r0, 0x6a7(r28)
/* 8068FEF0  7C 00 07 75 */	extsb. r0, r0
/* 8068FEF4  40 82 00 1C */	bne lbl_8068FF10
/* 8068FEF8  38 00 00 01 */	li r0, 1
/* 8068FEFC  98 1C 06 A7 */	stb r0, 0x6a7(r28)
/* 8068FF00  38 7C 0B 9C */	addi r3, r28, 0xb9c
/* 8068FF04  38 81 00 44 */	addi r4, r1, 0x44
/* 8068FF08  4B 9F 4B 70 */	b StartCAt__8dCcD_SphFR4cXyz
/* 8068FF0C  48 00 00 10 */	b lbl_8068FF1C
lbl_8068FF10:
/* 8068FF10  38 7C 0B 9C */	addi r3, r28, 0xb9c
/* 8068FF14  38 81 00 44 */	addi r4, r1, 0x44
/* 8068FF18  4B 9F 4B AC */	b MoveCAt__8dCcD_SphFR4cXyz
lbl_8068FF1C:
/* 8068FF1C  38 7C 0C C0 */	addi r3, r28, 0xcc0
/* 8068FF20  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 8068FF24  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8068FF28  EC 21 00 32 */	fmuls f1, f1, f0
/* 8068FF2C  4B BD F7 DC */	b SetR__8cM3dGSphFf
lbl_8068FF30:
/* 8068FF30  88 1C 06 A6 */	lbz r0, 0x6a6(r28)
/* 8068FF34  7C 00 07 75 */	extsb. r0, r0
/* 8068FF38  40 82 00 1C */	bne lbl_8068FF54
/* 8068FF3C  38 7C 0C C0 */	addi r3, r28, 0xcc0
/* 8068FF40  38 81 00 2C */	addi r4, r1, 0x2c
/* 8068FF44  4B BD F7 04 */	b SetC__8cM3dGSphFRC4cXyz
/* 8068FF48  38 00 00 00 */	li r0, 0
/* 8068FF4C  98 1C 06 A7 */	stb r0, 0x6a7(r28)
/* 8068FF50  48 00 00 0C */	b lbl_8068FF5C
lbl_8068FF54:
/* 8068FF54  38 00 00 00 */	li r0, 0
/* 8068FF58  98 1C 06 A6 */	stb r0, 0x6a6(r28)
lbl_8068FF5C:
/* 8068FF5C  7F A3 EB 78 */	mr r3, r29
/* 8068FF60  38 9C 0B 9C */	addi r4, r28, 0xb9c
/* 8068FF64  4B BD 4C 44 */	b Set__4cCcSFP8cCcD_Obj
/* 8068FF68  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8068FF6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068FF70  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8068FF74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8068FF78  7F 83 E3 78 */	mr r3, r28
/* 8068FF7C  38 9C 05 D8 */	addi r4, r28, 0x5d8
/* 8068FF80  38 BC 05 38 */	addi r5, r28, 0x538
/* 8068FF84  38 C1 00 20 */	addi r6, r1, 0x20
/* 8068FF88  48 00 0A 29 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8068FF8C  38 60 00 01 */	li r3, 1
/* 8068FF90  39 61 00 70 */	addi r11, r1, 0x70
/* 8068FF94  4B CD 22 90 */	b _restgpr_28
/* 8068FF98  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8068FF9C  7C 08 03 A6 */	mtlr r0
/* 8068FFA0  38 21 00 70 */	addi r1, r1, 0x70
/* 8068FFA4  4E 80 00 20 */	blr 
