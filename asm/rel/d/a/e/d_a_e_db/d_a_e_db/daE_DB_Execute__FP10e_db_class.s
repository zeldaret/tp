lbl_806A052C:
/* 806A052C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806A0530  7C 08 02 A6 */	mflr r0
/* 806A0534  90 01 00 84 */	stw r0, 0x84(r1)
/* 806A0538  39 61 00 80 */	addi r11, r1, 0x80
/* 806A053C  4B CC 1C 9C */	b _savegpr_28
/* 806A0540  7C 7D 1B 78 */	mr r29, r3
/* 806A0544  3C 60 80 6A */	lis r3, lit_3902@ha
/* 806A0548  3B C3 19 0C */	addi r30, r3, lit_3902@l
/* 806A054C  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806A0550  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 806A0554  40 82 00 84 */	bne lbl_806A05D8
/* 806A0558  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806A055C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 806A0560  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806A0564  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 806A0568  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806A056C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806A0570  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806A0574  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806A0578  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806A057C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806A0580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A0584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A0588  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806A058C  38 80 00 00 */	li r4, 0
/* 806A0590  90 81 00 08 */	stw r4, 8(r1)
/* 806A0594  38 00 FF FF */	li r0, -1
/* 806A0598  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A059C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806A05A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806A05A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A05A8  38 80 00 00 */	li r4, 0
/* 806A05AC  38 A0 01 09 */	li r5, 0x109
/* 806A05B0  38 C1 00 38 */	addi r6, r1, 0x38
/* 806A05B4  38 E0 00 00 */	li r7, 0
/* 806A05B8  39 00 00 00 */	li r8, 0
/* 806A05BC  39 21 00 44 */	addi r9, r1, 0x44
/* 806A05C0  39 40 00 FF */	li r10, 0xff
/* 806A05C4  4B 9A C4 CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A05C8  7F A3 EB 78 */	mr r3, r29
/* 806A05CC  4B 97 96 B0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806A05D0  38 60 00 01 */	li r3, 1
/* 806A05D4  48 00 03 04 */	b lbl_806A08D8
lbl_806A05D8:
/* 806A05D8  A8 7D 06 68 */	lha r3, 0x668(r29)
/* 806A05DC  38 03 00 01 */	addi r0, r3, 1
/* 806A05E0  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 806A05E4  38 60 00 00 */	li r3, 0
/* 806A05E8  38 00 00 03 */	li r0, 3
/* 806A05EC  7C 09 03 A6 */	mtctr r0
lbl_806A05F0:
/* 806A05F0  38 A3 06 94 */	addi r5, r3, 0x694
/* 806A05F4  7C 9D 2A AE */	lhax r4, r29, r5
/* 806A05F8  2C 04 00 00 */	cmpwi r4, 0
/* 806A05FC  41 82 00 0C */	beq lbl_806A0608
/* 806A0600  38 04 FF FF */	addi r0, r4, -1
/* 806A0604  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_806A0608:
/* 806A0608  38 63 00 02 */	addi r3, r3, 2
/* 806A060C  42 00 FF E4 */	bdnz lbl_806A05F0
/* 806A0610  A8 7D 06 9A */	lha r3, 0x69a(r29)
/* 806A0614  2C 03 00 00 */	cmpwi r3, 0
/* 806A0618  41 82 00 0C */	beq lbl_806A0624
/* 806A061C  38 03 FF FF */	addi r0, r3, -1
/* 806A0620  B0 1D 06 9A */	sth r0, 0x69a(r29)
lbl_806A0624:
/* 806A0624  7F A3 EB 78 */	mr r3, r29
/* 806A0628  4B FF F3 51 */	bl action__FP10e_db_class
/* 806A062C  7F A3 EB 78 */	mr r3, r29
/* 806A0630  4B FF FD 95 */	bl anm_se_set__FP10e_db_class
/* 806A0634  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806A0638  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806A063C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806A0640  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 806A0644  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 806A0648  4B CA 62 A0 */	b PSMTXTrans
/* 806A064C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806A0650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806A0654  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806A0658  4B 96 BD DC */	b mDoMtx_YrotM__FPA4_fs
/* 806A065C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806A0660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806A0664  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 806A0668  4B 96 BD 34 */	b mDoMtx_XrotM__FPA4_fs
/* 806A066C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806A0670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806A0674  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 806A0678  4B 96 BE 54 */	b mDoMtx_ZrotM__FPA4_fs
/* 806A067C  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 806A0680  2C 00 00 15 */	cmpwi r0, 0x15
/* 806A0684  41 82 00 18 */	beq lbl_806A069C
/* 806A0688  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 806A068C  38 80 00 00 */	li r4, 0
/* 806A0690  38 A0 00 08 */	li r5, 8
/* 806A0694  38 C0 04 00 */	li r6, 0x400
/* 806A0698  4B BC FF 70 */	b cLib_addCalcAngleS2__FPssss
lbl_806A069C:
/* 806A069C  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A06A0  3B E3 1D A8 */	addi r31, r3, l_HIO@l
/* 806A06A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A06A8  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 806A06AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A06B0  FC 40 08 90 */	fmr f2, f1
/* 806A06B4  FC 60 08 90 */	fmr f3, f1
/* 806A06B8  4B 96 C7 80 */	b scaleM__14mDoMtx_stack_cFfff
/* 806A06BC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806A06C0  83 83 00 04 */	lwz r28, 4(r3)
/* 806A06C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806A06C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806A06CC  38 9C 00 24 */	addi r4, r28, 0x24
/* 806A06D0  4B CA 5D E0 */	b PSMTXCopy
/* 806A06D4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806A06D8  7C 03 07 74 */	extsb r3, r0
/* 806A06DC  4B 98 C9 90 */	b dComIfGp_getReverb__Fi
/* 806A06E0  7C 65 1B 78 */	mr r5, r3
/* 806A06E4  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806A06E8  38 80 00 00 */	li r4, 0
/* 806A06EC  4B 97 09 C4 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806A06F0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806A06F4  4B 97 0A F8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806A06F8  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 806A06FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806A0700  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 806A0704  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806A0708  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 806A070C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806A0710  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806A0714  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A0718  38 63 00 30 */	addi r3, r3, 0x30
/* 806A071C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806A0720  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806A0724  80 84 00 00 */	lwz r4, 0(r4)
/* 806A0728  4B CA 5D 88 */	b PSMTXCopy
/* 806A072C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806A0730  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806A0734  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806A0738  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806A073C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806A0740  88 1D 08 50 */	lbz r0, 0x850(r29)
/* 806A0744  7C 00 07 75 */	extsb. r0, r0
/* 806A0748  41 82 00 44 */	beq lbl_806A078C
/* 806A074C  C0 1D 06 E4 */	lfs f0, 0x6e4(r29)
/* 806A0750  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 806A0754  C0 1D 06 E8 */	lfs f0, 0x6e8(r29)
/* 806A0758  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 806A075C  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 806A0760  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 806A0764  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 806A0768  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 806A076C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 806A0770  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806A0774  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 806A0778  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 806A077C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 806A0780  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 806A0784  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 806A0788  48 00 00 44 */	b lbl_806A07CC
lbl_806A078C:
/* 806A078C  38 61 00 5C */	addi r3, r1, 0x5c
/* 806A0790  38 9D 05 38 */	addi r4, r29, 0x538
/* 806A0794  4B BD 07 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 806A0798  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 806A079C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 806A07A0  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 806A07A4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806A07A8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 806A07AC  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 806A07B0  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 806A07B4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 806A07B8  EC 01 00 2A */	fadds f0, f1, f0
/* 806A07BC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806A07C0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 806A07C4  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 806A07C8  90 1D 08 CC */	stw r0, 0x8cc(r29)
lbl_806A07CC:
/* 806A07CC  38 61 00 5C */	addi r3, r1, 0x5c
/* 806A07D0  38 81 00 50 */	addi r4, r1, 0x50
/* 806A07D4  4B BD 07 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 806A07D8  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 806A07DC  2C 00 00 00 */	cmpwi r0, 0
/* 806A07E0  41 82 00 10 */	beq lbl_806A07F0
/* 806A07E4  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 806A07E8  2C 00 00 00 */	cmpwi r0, 0
/* 806A07EC  41 82 00 14 */	beq lbl_806A0800
lbl_806A07F0:
/* 806A07F0  38 61 00 50 */	addi r3, r1, 0x50
/* 806A07F4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806A07F8  7C 65 1B 78 */	mr r5, r3
/* 806A07FC  4B CA 68 94 */	b PSVECAdd
lbl_806A0800:
/* 806A0800  38 7D 09 C8 */	addi r3, r29, 0x9c8
/* 806A0804  38 81 00 50 */	addi r4, r1, 0x50
/* 806A0808  4B BC EE 40 */	b SetC__8cM3dGSphFRC4cXyz
/* 806A080C  38 7D 09 C8 */	addi r3, r29, 0x9c8
/* 806A0810  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 806A0814  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806A0818  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A081C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 806A0820  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A0824  4B BC EE E4 */	b SetR__8cM3dGSphFf
/* 806A0828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A082C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A0830  3B 83 23 3C */	addi r28, r3, 0x233c
/* 806A0834  7F 83 E3 78 */	mr r3, r28
/* 806A0838  38 9D 08 A4 */	addi r4, r29, 0x8a4
/* 806A083C  4B BC 43 6C */	b Set__4cCcSFP8cCcD_Obj
/* 806A0840  88 1D 0B 14 */	lbz r0, 0xb14(r29)
/* 806A0844  7C 00 07 75 */	extsb. r0, r0
/* 806A0848  41 82 00 1C */	beq lbl_806A0864
/* 806A084C  38 7D 09 DC */	addi r3, r29, 0x9dc
/* 806A0850  38 81 00 50 */	addi r4, r1, 0x50
/* 806A0854  4B 9E 42 70 */	b MoveCAt__8dCcD_SphFR4cXyz
/* 806A0858  38 00 00 00 */	li r0, 0
/* 806A085C  98 1D 0B 14 */	stb r0, 0xb14(r29)
/* 806A0860  48 00 00 20 */	b lbl_806A0880
lbl_806A0864:
/* 806A0864  38 61 00 20 */	addi r3, r1, 0x20
/* 806A0868  38 81 00 50 */	addi r4, r1, 0x50
/* 806A086C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806A0870  4B BC 62 74 */	b __pl__4cXyzCFRC3Vec
/* 806A0874  38 7D 0B 00 */	addi r3, r29, 0xb00
/* 806A0878  38 81 00 20 */	addi r4, r1, 0x20
/* 806A087C  4B BC ED CC */	b SetC__8cM3dGSphFRC4cXyz
lbl_806A0880:
/* 806A0880  38 7D 0B 00 */	addi r3, r29, 0xb00
/* 806A0884  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 806A0888  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806A088C  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A0890  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 806A0894  EC 21 00 32 */	fmuls f1, f1, f0
/* 806A0898  4B BC EE 70 */	b SetR__8cM3dGSphFf
/* 806A089C  7F 83 E3 78 */	mr r3, r28
/* 806A08A0  38 9D 09 DC */	addi r4, r29, 0x9dc
/* 806A08A4  4B BC 43 04 */	b Set__4cCcSFP8cCcD_Obj
/* 806A08A8  7F A3 EB 78 */	mr r3, r29
/* 806A08AC  38 80 00 00 */	li r4, 0
/* 806A08B0  4B FF F7 4D */	bl eff_set__FP10e_db_classi
/* 806A08B4  88 1D 08 52 */	lbz r0, 0x852(r29)
/* 806A08B8  7C 00 07 75 */	extsb. r0, r0
/* 806A08BC  41 82 00 18 */	beq lbl_806A08D4
/* 806A08C0  38 7D 08 54 */	addi r3, r29, 0x854
/* 806A08C4  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 806A08C8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806A08CC  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 806A08D0  4B BC F1 6C */	b cLib_addCalc2__FPffff
lbl_806A08D4:
/* 806A08D4  38 60 00 01 */	li r3, 1
lbl_806A08D8:
/* 806A08D8  39 61 00 80 */	addi r11, r1, 0x80
/* 806A08DC  4B CC 19 48 */	b _restgpr_28
/* 806A08E0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806A08E4  7C 08 03 A6 */	mtlr r0
/* 806A08E8  38 21 00 80 */	addi r1, r1, 0x80
/* 806A08EC  4E 80 00 20 */	blr 
