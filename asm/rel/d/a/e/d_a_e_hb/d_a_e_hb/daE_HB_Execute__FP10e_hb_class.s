lbl_804FF744:
/* 804FF744  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804FF748  7C 08 02 A6 */	mflr r0
/* 804FF74C  90 01 00 84 */	stw r0, 0x84(r1)
/* 804FF750  39 61 00 80 */	addi r11, r1, 0x80
/* 804FF754  4B E6 2A 84 */	b _savegpr_28
/* 804FF758  7C 7D 1B 78 */	mr r29, r3
/* 804FF75C  3C 80 80 50 */	lis r4, lit_3788@ha
/* 804FF760  3B C4 0B 04 */	addi r30, r4, lit_3788@l
/* 804FF764  88 83 08 50 */	lbz r4, 0x850(r3)
/* 804FF768  7C 80 07 75 */	extsb. r0, r4
/* 804FF76C  41 82 00 24 */	beq lbl_804FF790
/* 804FF770  38 04 FF FF */	addi r0, r4, -1
/* 804FF774  98 1D 08 50 */	stb r0, 0x850(r29)
/* 804FF778  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 804FF77C  7C 00 07 75 */	extsb. r0, r0
/* 804FF780  40 82 00 08 */	bne lbl_804FF788
/* 804FF784  4B B1 A4 F8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_804FF788:
/* 804FF788  38 60 00 01 */	li r3, 1
/* 804FF78C  48 00 03 58 */	b lbl_804FFAE4
lbl_804FF790:
/* 804FF790  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 804FF794  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804FF798  40 82 00 84 */	bne lbl_804FF81C
/* 804FF79C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FF7A0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 804FF7A4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804FF7A8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 804FF7AC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804FF7B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804FF7B4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804FF7B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804FF7BC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804FF7C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804FF7C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FF7C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FF7CC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804FF7D0  38 80 00 00 */	li r4, 0
/* 804FF7D4  90 81 00 08 */	stw r4, 8(r1)
/* 804FF7D8  38 00 FF FF */	li r0, -1
/* 804FF7DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FF7E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 804FF7E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 804FF7E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 804FF7EC  38 80 00 00 */	li r4, 0
/* 804FF7F0  38 A0 01 09 */	li r5, 0x109
/* 804FF7F4  38 C1 00 38 */	addi r6, r1, 0x38
/* 804FF7F8  38 E0 00 00 */	li r7, 0
/* 804FF7FC  39 00 00 00 */	li r8, 0
/* 804FF800  39 21 00 44 */	addi r9, r1, 0x44
/* 804FF804  39 40 00 FF */	li r10, 0xff
/* 804FF808  4B B4 D2 88 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804FF80C  7F A3 EB 78 */	mr r3, r29
/* 804FF810  4B B1 A4 6C */	b fopAcM_delete__FP10fopAc_ac_c
/* 804FF814  38 60 00 01 */	li r3, 1
/* 804FF818  48 00 02 CC */	b lbl_804FFAE4
lbl_804FF81C:
/* 804FF81C  A8 7D 06 68 */	lha r3, 0x668(r29)
/* 804FF820  38 03 00 01 */	addi r0, r3, 1
/* 804FF824  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 804FF828  38 60 00 00 */	li r3, 0
/* 804FF82C  38 00 00 03 */	li r0, 3
/* 804FF830  7C 09 03 A6 */	mtctr r0
lbl_804FF834:
/* 804FF834  38 A3 06 98 */	addi r5, r3, 0x698
/* 804FF838  7C 9D 2A AE */	lhax r4, r29, r5
/* 804FF83C  2C 04 00 00 */	cmpwi r4, 0
/* 804FF840  41 82 00 0C */	beq lbl_804FF84C
/* 804FF844  38 04 FF FF */	addi r0, r4, -1
/* 804FF848  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_804FF84C:
/* 804FF84C  38 63 00 02 */	addi r3, r3, 2
/* 804FF850  42 00 FF E4 */	bdnz lbl_804FF834
/* 804FF854  A8 7D 06 9E */	lha r3, 0x69e(r29)
/* 804FF858  2C 03 00 00 */	cmpwi r3, 0
/* 804FF85C  41 82 00 0C */	beq lbl_804FF868
/* 804FF860  38 03 FF FF */	addi r0, r3, -1
/* 804FF864  B0 1D 06 9E */	sth r0, 0x69e(r29)
lbl_804FF868:
/* 804FF868  7F A3 EB 78 */	mr r3, r29
/* 804FF86C  4B FF F3 C9 */	bl action__FP10e_hb_class
/* 804FF870  7F A3 EB 78 */	mr r3, r29
/* 804FF874  4B FF FD 69 */	bl anm_se_set__FP10e_hb_class
/* 804FF878  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FF87C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FF880  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 804FF884  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 804FF888  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 804FF88C  4B E4 70 5C */	b PSMTXTrans
/* 804FF890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FF894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FF898  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804FF89C  4B B0 CB 98 */	b mDoMtx_YrotM__FPA4_fs
/* 804FF8A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FF8A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FF8A8  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 804FF8AC  4B B0 CA F0 */	b mDoMtx_XrotM__FPA4_fs
/* 804FF8B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FF8B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FF8B8  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 804FF8BC  4B B0 CC 10 */	b mDoMtx_ZrotM__FPA4_fs
/* 804FF8C0  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 804FF8C4  38 80 00 00 */	li r4, 0
/* 804FF8C8  38 A0 00 08 */	li r5, 8
/* 804FF8CC  38 C0 04 00 */	li r6, 0x400
/* 804FF8D0  4B D7 0D 38 */	b cLib_addCalcAngleS2__FPssss
/* 804FF8D4  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804FF8D8  3B E3 0E 70 */	addi r31, r3, l_HIO@l
/* 804FF8DC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FF8E0  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 804FF8E4  EC 21 00 32 */	fmuls f1, f1, f0
/* 804FF8E8  FC 40 08 90 */	fmr f2, f1
/* 804FF8EC  FC 60 08 90 */	fmr f3, f1
/* 804FF8F0  4B B0 D5 48 */	b scaleM__14mDoMtx_stack_cFfff
/* 804FF8F4  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 804FF8F8  83 83 00 04 */	lwz r28, 4(r3)
/* 804FF8FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804FF900  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804FF904  38 9C 00 24 */	addi r4, r28, 0x24
/* 804FF908  4B E4 6B A8 */	b PSMTXCopy
/* 804FF90C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804FF910  7C 03 07 74 */	extsb r3, r0
/* 804FF914  4B B2 D7 58 */	b dComIfGp_getReverb__Fi
/* 804FF918  7C 65 1B 78 */	mr r5, r3
/* 804FF91C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 804FF920  38 80 00 00 */	li r4, 0
/* 804FF924  4B B1 17 8C */	b play__16mDoExt_McaMorfSOFUlSc
/* 804FF928  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 804FF92C  4B B1 18 C0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 804FF930  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804FF934  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804FF938  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 804FF93C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804FF940  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 804FF944  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804FF948  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804FF94C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804FF950  38 63 00 30 */	addi r3, r3, 0x30
/* 804FF954  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804FF958  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804FF95C  80 84 00 00 */	lwz r4, 0(r4)
/* 804FF960  4B E4 6B 50 */	b PSMTXCopy
/* 804FF964  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 804FF968  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804FF96C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FF970  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804FF974  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804FF978  88 1D 08 51 */	lbz r0, 0x851(r29)
/* 804FF97C  7C 00 07 75 */	extsb. r0, r0
/* 804FF980  41 82 00 44 */	beq lbl_804FF9C4
/* 804FF984  C0 1D 06 E8 */	lfs f0, 0x6e8(r29)
/* 804FF988  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 804FF98C  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 804FF990  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 804FF994  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 804FF998  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 804FF99C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 804FF9A0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 804FF9A4  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 804FF9A8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 804FF9AC  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 804FF9B0  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 804FF9B4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDBF@ha */
/* 804FF9B8  38 03 FD BF */	addi r0, r3, 0xFDBF /* 0xD8FBFDBF@l */
/* 804FF9BC  90 1D 08 C4 */	stw r0, 0x8c4(r29)
/* 804FF9C0  48 00 00 44 */	b lbl_804FFA04
lbl_804FF9C4:
/* 804FF9C4  38 61 00 5C */	addi r3, r1, 0x5c
/* 804FF9C8  38 9D 05 38 */	addi r4, r29, 0x538
/* 804FF9CC  4B D7 15 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 804FF9D0  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 804FF9D4  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 804FF9D8  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 804FF9DC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 804FF9E0  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 804FF9E4  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 804FF9E8  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 804FF9EC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 804FF9F0  EC 01 00 2A */	fadds f0, f1, f0
/* 804FF9F4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 804FF9F8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 804FF9FC  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 804FFA00  90 1D 08 C4 */	stw r0, 0x8c4(r29)
lbl_804FFA04:
/* 804FFA04  38 61 00 5C */	addi r3, r1, 0x5c
/* 804FFA08  38 81 00 50 */	addi r4, r1, 0x50
/* 804FFA0C  4B D7 14 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804FFA10  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 804FFA14  2C 00 00 00 */	cmpwi r0, 0
/* 804FFA18  41 82 00 14 */	beq lbl_804FFA2C
/* 804FFA1C  38 61 00 50 */	addi r3, r1, 0x50
/* 804FFA20  38 81 00 2C */	addi r4, r1, 0x2c
/* 804FFA24  7C 65 1B 78 */	mr r5, r3
/* 804FFA28  4B E4 76 68 */	b PSVECAdd
lbl_804FFA2C:
/* 804FFA2C  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 804FFA30  38 81 00 50 */	addi r4, r1, 0x50
/* 804FFA34  4B D6 FC 14 */	b SetC__8cM3dGSphFRC4cXyz
/* 804FFA38  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 804FFA3C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 804FFA40  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804FFA44  EC 21 00 32 */	fmuls f1, f1, f0
/* 804FFA48  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 804FFA4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 804FFA50  4B D6 FC B8 */	b SetR__8cM3dGSphFf
/* 804FFA54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FFA58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FFA5C  3B 83 23 3C */	addi r28, r3, 0x233c
/* 804FFA60  7F 83 E3 78 */	mr r3, r28
/* 804FFA64  38 9D 08 9C */	addi r4, r29, 0x89c
/* 804FFA68  4B D6 51 40 */	b Set__4cCcSFP8cCcD_Obj
/* 804FFA6C  88 1D 0B 0C */	lbz r0, 0xb0c(r29)
/* 804FFA70  7C 00 07 75 */	extsb. r0, r0
/* 804FFA74  41 82 00 1C */	beq lbl_804FFA90
/* 804FFA78  38 7D 09 D4 */	addi r3, r29, 0x9d4
/* 804FFA7C  38 81 00 50 */	addi r4, r1, 0x50
/* 804FFA80  4B B8 50 44 */	b MoveCAt__8dCcD_SphFR4cXyz
/* 804FFA84  38 00 00 00 */	li r0, 0
/* 804FFA88  98 1D 0B 0C */	stb r0, 0xb0c(r29)
/* 804FFA8C  48 00 00 20 */	b lbl_804FFAAC
lbl_804FFA90:
/* 804FFA90  38 61 00 20 */	addi r3, r1, 0x20
/* 804FFA94  38 81 00 50 */	addi r4, r1, 0x50
/* 804FFA98  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804FFA9C  4B D6 70 48 */	b __pl__4cXyzCFRC3Vec
/* 804FFAA0  38 7D 0A F8 */	addi r3, r29, 0xaf8
/* 804FFAA4  38 81 00 20 */	addi r4, r1, 0x20
/* 804FFAA8  4B D6 FB A0 */	b SetC__8cM3dGSphFRC4cXyz
lbl_804FFAAC:
/* 804FFAAC  38 7D 0A F8 */	addi r3, r29, 0xaf8
/* 804FFAB0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 804FFAB4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804FFAB8  EC 21 00 32 */	fmuls f1, f1, f0
/* 804FFABC  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 804FFAC0  EC 21 00 32 */	fmuls f1, f1, f0
/* 804FFAC4  4B D6 FC 44 */	b SetR__8cM3dGSphFf
/* 804FFAC8  7F 83 E3 78 */	mr r3, r28
/* 804FFACC  38 9D 09 D4 */	addi r4, r29, 0x9d4
/* 804FFAD0  4B D6 50 D8 */	b Set__4cCcSFP8cCcD_Obj
/* 804FFAD4  7F A3 EB 78 */	mr r3, r29
/* 804FFAD8  38 80 00 00 */	li r4, 0
/* 804FFADC  4B FF F7 39 */	bl eff_set__FP10e_hb_classi
/* 804FFAE0  38 60 00 01 */	li r3, 1
lbl_804FFAE4:
/* 804FFAE4  39 61 00 80 */	addi r11, r1, 0x80
/* 804FFAE8  4B E6 27 3C */	b _restgpr_28
/* 804FFAEC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804FFAF0  7C 08 03 A6 */	mtlr r0
/* 804FFAF4  38 21 00 80 */	addi r1, r1, 0x80
/* 804FFAF8  4E 80 00 20 */	blr 
