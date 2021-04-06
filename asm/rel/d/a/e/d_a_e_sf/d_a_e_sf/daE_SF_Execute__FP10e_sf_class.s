lbl_80788568:
/* 80788568  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8078856C  7C 08 02 A6 */	mflr r0
/* 80788570  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80788574  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80788578  4B BD 9C 51 */	bl _savegpr_24
/* 8078857C  7C 7F 1B 78 */	mr r31, r3
/* 80788580  3C 60 80 79 */	lis r3, lit_3908@ha /* 0x80789C38@ha */
/* 80788584  3B C3 9C 38 */	addi r30, r3, lit_3908@l /* 0x80789C38@l */
/* 80788588  A8 7F 06 88 */	lha r3, 0x688(r31)
/* 8078858C  38 03 00 01 */	addi r0, r3, 1
/* 80788590  B0 1F 06 88 */	sth r0, 0x688(r31)
/* 80788594  38 60 00 00 */	li r3, 0
/* 80788598  38 00 00 04 */	li r0, 4
/* 8078859C  7C 09 03 A6 */	mtctr r0
lbl_807885A0:
/* 807885A0  38 A3 06 9C */	addi r5, r3, 0x69c
/* 807885A4  7C 9F 2A AE */	lhax r4, r31, r5
/* 807885A8  2C 04 00 00 */	cmpwi r4, 0
/* 807885AC  41 82 00 0C */	beq lbl_807885B8
/* 807885B0  38 04 FF FF */	addi r0, r4, -1
/* 807885B4  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807885B8:
/* 807885B8  38 63 00 02 */	addi r3, r3, 2
/* 807885BC  42 00 FF E4 */	bdnz lbl_807885A0
/* 807885C0  A8 7F 06 A4 */	lha r3, 0x6a4(r31)
/* 807885C4  2C 03 00 00 */	cmpwi r3, 0
/* 807885C8  41 82 00 0C */	beq lbl_807885D4
/* 807885CC  38 03 FF FF */	addi r0, r3, -1
/* 807885D0  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
lbl_807885D4:
/* 807885D4  A8 7F 07 18 */	lha r3, 0x718(r31)
/* 807885D8  2C 03 00 00 */	cmpwi r3, 0
/* 807885DC  41 82 00 0C */	beq lbl_807885E8
/* 807885E0  38 03 FF FF */	addi r0, r3, -1
/* 807885E4  B0 1F 07 18 */	sth r0, 0x718(r31)
lbl_807885E8:
/* 807885E8  A8 7F 07 1A */	lha r3, 0x71a(r31)
/* 807885EC  2C 03 00 00 */	cmpwi r3, 0
/* 807885F0  41 82 00 0C */	beq lbl_807885FC
/* 807885F4  38 03 FF FF */	addi r0, r3, -1
/* 807885F8  B0 1F 07 1A */	sth r0, 0x71a(r31)
lbl_807885FC:
/* 807885FC  38 00 00 01 */	li r0, 1
/* 80788600  98 1F 06 AC */	stb r0, 0x6ac(r31)
/* 80788604  7F E3 FB 78 */	mr r3, r31
/* 80788608  4B FF ED B9 */	bl action__FP10e_sf_class
/* 8078860C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80788614  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80788618  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8078861C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80788620  4B BB E2 C9 */	bl PSMTXTrans
/* 80788624  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788628  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078862C  A8 9F 06 EA */	lha r4, 0x6ea(r31)
/* 80788630  4B 88 3D 6D */	bl mDoMtx_XrotM__FPA4_fs
/* 80788634  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788638  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078863C  A8 9F 06 EE */	lha r4, 0x6ee(r31)
/* 80788640  4B 88 3E 8D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80788644  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788648  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078864C  A8 9F 06 E6 */	lha r4, 0x6e6(r31)
/* 80788650  4B 88 3D E5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80788654  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788658  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078865C  A8 9F 06 E4 */	lha r4, 0x6e4(r31)
/* 80788660  4B 88 3D 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 80788664  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788668  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8078866C  A8 1F 06 E6 */	lha r0, 0x6e6(r31)
/* 80788670  7C 00 00 D0 */	neg r0, r0
/* 80788674  7C 04 07 34 */	extsh r4, r0
/* 80788678  4B 88 3D BD */	bl mDoMtx_YrotM__FPA4_fs
/* 8078867C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788680  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80788684  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80788688  4B 88 3D AD */	bl mDoMtx_YrotM__FPA4_fs
/* 8078868C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80788690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80788694  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80788698  4B 88 3D 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 8078869C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807886A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807886A4  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 807886A8  4B 88 3E 25 */	bl mDoMtx_ZrotM__FPA4_fs
/* 807886AC  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078A07C@ha */
/* 807886B0  3B A3 A0 7C */	addi r29, r3, l_HIO@l /* 0x8078A07C@l */
/* 807886B4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 807886B8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 807886BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 807886C0  FC 40 08 90 */	fmr f2, f1
/* 807886C4  FC 60 08 90 */	fmr f3, f1
/* 807886C8  4B 88 47 71 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807886CC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 807886D0  83 83 00 04 */	lwz r28, 4(r3)
/* 807886D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807886D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807886DC  38 9C 00 24 */	addi r4, r28, 0x24
/* 807886E0  4B BB DD D1 */	bl PSMTXCopy
/* 807886E4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807886E8  7C 03 07 74 */	extsb r3, r0
/* 807886EC  4B 8A 49 81 */	bl dComIfGp_getReverb__Fi
/* 807886F0  7C 65 1B 78 */	mr r5, r3
/* 807886F4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 807886F8  38 80 00 00 */	li r4, 0
/* 807886FC  4B 88 89 B5 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80788700  7F E3 FB 78 */	mr r3, r31
/* 80788704  4B FF F6 D5 */	bl anm_se_set__FP10e_sf_class
/* 80788708  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8078870C  4B 88 8A E1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80788710  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788714  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80788718  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8078871C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80788720  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80788724  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80788728  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8078872C  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80788730  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80788734  A8 1F 06 A4 */	lha r0, 0x6a4(r31)
/* 80788738  2C 00 00 00 */	cmpwi r0, 0
/* 8078873C  41 82 00 14 */	beq lbl_80788750
/* 80788740  38 61 00 78 */	addi r3, r1, 0x78
/* 80788744  38 81 00 6C */	addi r4, r1, 0x6c
/* 80788748  7C 65 1B 78 */	mr r5, r3
/* 8078874C  4B BB E9 45 */	bl PSVECAdd
lbl_80788750:
/* 80788750  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80788754  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80788758  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8078875C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80788760  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80788764  80 84 00 00 */	lwz r4, 0(r4)
/* 80788768  4B BB DD 49 */	bl PSMTXCopy
/* 8078876C  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80788770  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80788774  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 80788778  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8078877C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788780  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80788784  38 61 00 90 */	addi r3, r1, 0x90
/* 80788788  38 9F 05 38 */	addi r4, r31, 0x538
/* 8078878C  4B AE 87 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80788790  38 61 00 48 */	addi r3, r1, 0x48
/* 80788794  38 9F 05 38 */	addi r4, r31, 0x538
/* 80788798  38 A1 00 78 */	addi r5, r1, 0x78
/* 8078879C  4B AD E3 49 */	bl __pl__4cXyzCFRC3Vec
/* 807887A0  38 7F 0A 94 */	addi r3, r31, 0xa94
/* 807887A4  38 81 00 48 */	addi r4, r1, 0x48
/* 807887A8  4B AE 6E A1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807887AC  38 7F 0A 94 */	addi r3, r31, 0xa94
/* 807887B0  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 807887B4  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807887B8  EC 21 00 32 */	fmuls f1, f1, f0
/* 807887BC  4B AE 6F 4D */	bl SetR__8cM3dGSphFf
/* 807887C0  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807887C4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807887C8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807887CC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807887D0  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807887D4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807887D8  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807887DC  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 807887E0  EC 01 00 2A */	fadds f0, f1, f0
/* 807887E4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807887E8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807887EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807887F0  38 63 00 60 */	addi r3, r3, 0x60
/* 807887F4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807887F8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807887FC  80 84 00 00 */	lwz r4, 0(r4)
/* 80788800  4B BB DC B1 */	bl PSMTXCopy
/* 80788804  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788808  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8078880C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80788810  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80788814  38 61 00 90 */	addi r3, r1, 0x90
/* 80788818  38 81 00 84 */	addi r4, r1, 0x84
/* 8078881C  4B AE 86 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80788820  38 61 00 3C */	addi r3, r1, 0x3c
/* 80788824  38 81 00 84 */	addi r4, r1, 0x84
/* 80788828  38 A1 00 78 */	addi r5, r1, 0x78
/* 8078882C  4B AD E2 B9 */	bl __pl__4cXyzCFRC3Vec
/* 80788830  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80788834  38 81 00 3C */	addi r4, r1, 0x3c
/* 80788838  4B AE 6E 11 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8078883C  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80788840  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80788844  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80788848  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078884C  4B AE 6E BD */	bl SetR__8cM3dGSphFf
/* 80788850  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80788854  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80788858  38 63 03 00 */	addi r3, r3, 0x300
/* 8078885C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80788860  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80788864  80 84 00 00 */	lwz r4, 0(r4)
/* 80788868  4B BB DC 49 */	bl PSMTXCopy
/* 8078886C  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80788870  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80788874  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788878  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8078887C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80788880  38 61 00 90 */	addi r3, r1, 0x90
/* 80788884  38 81 00 84 */	addi r4, r1, 0x84
/* 80788888  4B AE 86 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8078888C  38 61 00 30 */	addi r3, r1, 0x30
/* 80788890  38 81 00 84 */	addi r4, r1, 0x84
/* 80788894  38 A1 00 78 */	addi r5, r1, 0x78
/* 80788898  4B AD E2 4D */	bl __pl__4cXyzCFRC3Vec
/* 8078889C  38 7F 0D 04 */	addi r3, r31, 0xd04
/* 807888A0  38 81 00 30 */	addi r4, r1, 0x30
/* 807888A4  4B AE 6D A5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807888A8  38 7F 0D 04 */	addi r3, r31, 0xd04
/* 807888AC  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 807888B0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807888B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 807888B8  4B AE 6E 51 */	bl SetR__8cM3dGSphFf
/* 807888BC  3B 00 00 00 */	li r24, 0
/* 807888C0  3B 40 00 00 */	li r26, 0
/* 807888C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807888C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807888CC  3B 83 23 3C */	addi r28, r3, 0x233c
lbl_807888D0:
/* 807888D0  88 1F 06 AC */	lbz r0, 0x6ac(r31)
/* 807888D4  7C 00 07 75 */	extsb. r0, r0
/* 807888D8  41 82 00 18 */	beq lbl_807888F0
/* 807888DC  38 7A 09 9C */	addi r3, r26, 0x99c
/* 807888E0  7C 1F 18 2E */	lwzx r0, r31, r3
/* 807888E4  60 00 00 01 */	ori r0, r0, 1
/* 807888E8  7C 1F 19 2E */	stwx r0, r31, r3
/* 807888EC  48 00 00 14 */	b lbl_80788900
lbl_807888F0:
/* 807888F0  38 7A 09 9C */	addi r3, r26, 0x99c
/* 807888F4  7C 1F 18 2E */	lwzx r0, r31, r3
/* 807888F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807888FC  7C 1F 19 2E */	stwx r0, r31, r3
lbl_80788900:
/* 80788900  7F 83 E3 78 */	mr r3, r28
/* 80788904  38 9A 09 70 */	addi r4, r26, 0x970
/* 80788908  7C 9F 22 14 */	add r4, r31, r4
/* 8078890C  4B AD C2 9D */	bl Set__4cCcSFP8cCcD_Obj
/* 80788910  3B 18 00 01 */	addi r24, r24, 1
/* 80788914  2C 18 00 02 */	cmpwi r24, 2
/* 80788918  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8078891C  40 81 FF B4 */	ble lbl_807888D0
/* 80788920  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 80788924  28 00 00 00 */	cmplwi r0, 0
/* 80788928  41 82 00 D4 */	beq lbl_807889FC
/* 8078892C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80788930  80 63 00 04 */	lwz r3, 4(r3)
/* 80788934  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80788938  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8078893C  38 63 02 70 */	addi r3, r3, 0x270
/* 80788940  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80788944  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80788948  80 84 00 00 */	lwz r4, 0(r4)
/* 8078894C  4B BB DB 65 */	bl PSMTXCopy
/* 80788950  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80788954  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80788958  80 63 00 00 */	lwz r3, 0(r3)
/* 8078895C  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 80788960  38 84 00 24 */	addi r4, r4, 0x24
/* 80788964  4B BB DB 4D */	bl PSMTXCopy
/* 80788968  88 1F 06 A9 */	lbz r0, 0x6a9(r31)
/* 8078896C  7C 00 07 75 */	extsb. r0, r0
/* 80788970  41 82 00 8C */	beq lbl_807889FC
/* 80788974  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80788978  28 00 00 00 */	cmplwi r0, 0
/* 8078897C  40 82 00 1C */	bne lbl_80788998
/* 80788980  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80788984  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80788988  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8078898C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80788990  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80788994  48 00 00 18 */	b lbl_807889AC
lbl_80788998:
/* 80788998  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8078899C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 807889A0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 807889A4  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 807889A8  D0 01 00 98 */	stfs f0, 0x98(r1)
lbl_807889AC:
/* 807889AC  38 61 00 90 */	addi r3, r1, 0x90
/* 807889B0  38 81 00 84 */	addi r4, r1, 0x84
/* 807889B4  4B AE 85 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807889B8  88 1F 06 AA */	lbz r0, 0x6aa(r31)
/* 807889BC  7C 00 07 75 */	extsb. r0, r0
/* 807889C0  40 82 00 1C */	bne lbl_807889DC
/* 807889C4  38 00 00 01 */	li r0, 1
/* 807889C8  98 1F 06 AA */	stb r0, 0x6aa(r31)
/* 807889CC  38 7F 0D 18 */	addi r3, r31, 0xd18
/* 807889D0  38 81 00 84 */	addi r4, r1, 0x84
/* 807889D4  4B 8F C0 A5 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 807889D8  48 00 00 10 */	b lbl_807889E8
lbl_807889DC:
/* 807889DC  38 7F 0D 18 */	addi r3, r31, 0xd18
/* 807889E0  38 81 00 84 */	addi r4, r1, 0x84
/* 807889E4  4B 8F C0 E1 */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_807889E8:
/* 807889E8  38 7F 0E 3C */	addi r3, r31, 0xe3c
/* 807889EC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807889F0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807889F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 807889F8  4B AE 6D 11 */	bl SetR__8cM3dGSphFf
lbl_807889FC:
/* 807889FC  88 1F 05 B9 */	lbz r0, 0x5b9(r31)
/* 80788A00  28 00 00 FF */	cmplwi r0, 0xff
/* 80788A04  41 82 00 40 */	beq lbl_80788A44
/* 80788A08  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80788A0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80788A10  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80788A14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80788A18  38 63 01 80 */	addi r3, r3, 0x180
/* 80788A1C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80788A20  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80788A24  80 84 00 00 */	lwz r4, 0(r4)
/* 80788A28  4B BB DA 89 */	bl PSMTXCopy
/* 80788A2C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80788A30  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80788A34  80 63 00 00 */	lwz r3, 0(r3)
/* 80788A38  80 9F 05 E0 */	lwz r4, 0x5e0(r31)
/* 80788A3C  38 84 00 24 */	addi r4, r4, 0x24
/* 80788A40  4B BB DA 71 */	bl PSMTXCopy
lbl_80788A44:
/* 80788A44  88 1F 06 A9 */	lbz r0, 0x6a9(r31)
/* 80788A48  7C 00 07 75 */	extsb. r0, r0
/* 80788A4C  40 82 00 1C */	bne lbl_80788A68
/* 80788A50  38 7F 0E 3C */	addi r3, r31, 0xe3c
/* 80788A54  38 81 00 6C */	addi r4, r1, 0x6c
/* 80788A58  4B AE 6B F1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80788A5C  38 00 00 00 */	li r0, 0
/* 80788A60  98 1F 06 AA */	stb r0, 0x6aa(r31)
/* 80788A64  48 00 00 0C */	b lbl_80788A70
lbl_80788A68:
/* 80788A68  38 00 00 00 */	li r0, 0
/* 80788A6C  98 1F 06 A9 */	stb r0, 0x6a9(r31)
lbl_80788A70:
/* 80788A70  7F 83 E3 78 */	mr r3, r28
/* 80788A74  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 80788A78  4B AD C1 31 */	bl Set__4cCcSFP8cCcD_Obj
/* 80788A7C  88 1F 06 AB */	lbz r0, 0x6ab(r31)
/* 80788A80  7C 00 07 75 */	extsb. r0, r0
/* 80788A84  41 82 02 20 */	beq lbl_80788CA4
/* 80788A88  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80788A8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80788A90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80788A94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80788A98  38 63 01 80 */	addi r3, r3, 0x180
/* 80788A9C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80788AA0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80788AA4  80 84 00 00 */	lwz r4, 0(r4)
/* 80788AA8  4B BB DA 09 */	bl PSMTXCopy
/* 80788AAC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80788AB0  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80788AB4  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80788AB8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80788ABC  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80788AC0  38 61 00 90 */	addi r3, r1, 0x90
/* 80788AC4  38 81 00 84 */	addi r4, r1, 0x84
/* 80788AC8  4B AE 84 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80788ACC  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80788AD0  38 81 00 84 */	addi r4, r1, 0x84
/* 80788AD4  4B AE 6B 75 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80788AD8  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80788ADC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80788AE0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80788AE4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80788AE8  4B AE 6C 21 */	bl SetR__8cM3dGSphFf
/* 80788AEC  38 00 00 00 */	li r0, 0
/* 80788AF0  98 1F 06 AB */	stb r0, 0x6ab(r31)
/* 80788AF4  A8 1F 07 1A */	lha r0, 0x71a(r31)
/* 80788AF8  2C 00 00 00 */	cmpwi r0, 0
/* 80788AFC  40 82 01 C4 */	bne lbl_80788CC0
/* 80788B00  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80788B04  4B 8F B9 5D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80788B08  28 03 00 00 */	cmplwi r3, 0
/* 80788B0C  41 82 01 B4 */	beq lbl_80788CC0
/* 80788B10  38 00 00 0F */	li r0, 0xf
/* 80788B14  B0 1F 07 1A */	sth r0, 0x71a(r31)
/* 80788B18  38 00 00 03 */	li r0, 3
/* 80788B1C  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha /* 0x80451125@ha */
/* 80788B20  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)  /* 0x80451125@l */
/* 80788B24  88 1F 05 B9 */	lbz r0, 0x5b9(r31)
/* 80788B28  28 00 00 01 */	cmplwi r0, 1
/* 80788B2C  40 82 01 58 */	bne lbl_80788C84
/* 80788B30  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80788B34  4B 8F B9 C5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80788B38  90 7F 0F 88 */	stw r3, 0xf88(r31)
/* 80788B3C  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80788B40  4B 8F EF 19 */	bl at_power_check__FP11dCcU_AtInfo
/* 80788B44  A0 7F 0F A4 */	lhz r3, 0xfa4(r31)
/* 80788B48  28 03 00 0A */	cmplwi r3, 0xa
/* 80788B4C  41 81 00 14 */	bgt lbl_80788B60
/* 80788B50  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80788B54  7C 03 00 50 */	subf r0, r3, r0
/* 80788B58  98 1F 05 C0 */	stb r0, 0x5c0(r31)
/* 80788B5C  48 00 00 0C */	b lbl_80788B68
lbl_80788B60:
/* 80788B60  38 00 00 00 */	li r0, 0
/* 80788B64  98 1F 05 C0 */	stb r0, 0x5c0(r31)
lbl_80788B68:
/* 80788B68  88 1F 05 C0 */	lbz r0, 0x5c0(r31)
/* 80788B6C  7C 00 07 75 */	extsb. r0, r0
/* 80788B70  41 81 00 F4 */	bgt lbl_80788C64
/* 80788B74  38 00 00 FF */	li r0, 0xff
/* 80788B78  98 1F 05 B9 */	stb r0, 0x5b9(r31)
/* 80788B7C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80788B80  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80788B84  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80788B88  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80788B8C  3B 60 00 00 */	li r27, 0
/* 80788B90  3B 40 00 00 */	li r26, 0
/* 80788B94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80788B98  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80788B9C  3C 60 80 79 */	lis r3, p_name@ha /* 0x80789E98@ha */
/* 80788BA0  3B 03 9E 98 */	addi r24, r3, p_name@l /* 0x80789E98@l */
lbl_80788BA4:
/* 80788BA4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80788BA8  38 80 00 00 */	li r4, 0
/* 80788BAC  90 81 00 08 */	stw r4, 8(r1)
/* 80788BB0  38 00 FF FF */	li r0, -1
/* 80788BB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80788BB8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80788BBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80788BC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80788BC4  38 80 00 00 */	li r4, 0
/* 80788BC8  7C B8 D2 2E */	lhzx r5, r24, r26
/* 80788BCC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80788BD0  38 E0 00 00 */	li r7, 0
/* 80788BD4  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80788BD8  39 21 00 60 */	addi r9, r1, 0x60
/* 80788BDC  39 40 00 FF */	li r10, 0xff
/* 80788BE0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80788BE4  4B 8C 3E AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80788BE8  7C 79 1B 79 */	or. r25, r3, r3
/* 80788BEC  41 82 00 38 */	beq lbl_80788C24
/* 80788BF0  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80788BF4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80788BF8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80788BFC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80788C00  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80788C04  80 84 00 00 */	lwz r4, 0(r4)
/* 80788C08  4B BB D8 A9 */	bl PSMTXCopy
/* 80788C0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80788C10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80788C14  80 63 00 00 */	lwz r3, 0(r3)
/* 80788C18  38 99 00 68 */	addi r4, r25, 0x68
/* 80788C1C  38 B9 00 A4 */	addi r5, r25, 0xa4
/* 80788C20  4B AF 7B C1 */	bl func_802807E0
lbl_80788C24:
/* 80788C24  3B 7B 00 01 */	addi r27, r27, 1
/* 80788C28  2C 1B 00 01 */	cmpwi r27, 1
/* 80788C2C  3B 5A 00 02 */	addi r26, r26, 2
/* 80788C30  40 81 FF 74 */	ble lbl_80788BA4
/* 80788C34  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080095@ha */
/* 80788C38  38 03 00 95 */	addi r0, r3, 0x0095 /* 0x00080095@l */
/* 80788C3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80788C40  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80788C44  38 81 00 20 */	addi r4, r1, 0x20
/* 80788C48  38 A0 00 00 */	li r5, 0
/* 80788C4C  38 C0 FF FF */	li r6, -1
/* 80788C50  81 9F 05 E4 */	lwz r12, 0x5e4(r31)
/* 80788C54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80788C58  7D 89 03 A6 */	mtctr r12
/* 80788C5C  4E 80 04 21 */	bctrl 
/* 80788C60  48 00 00 60 */	b lbl_80788CC0
lbl_80788C64:
/* 80788C64  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80788C68  4B 8F B8 91 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80788C6C  7C 64 1B 78 */	mr r4, r3
/* 80788C70  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80788C74  38 A0 00 29 */	li r5, 0x29
/* 80788C78  38 C0 00 00 */	li r6, 0
/* 80788C7C  4B 8F E8 99 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80788C80  48 00 00 40 */	b lbl_80788CC0
lbl_80788C84:
/* 80788C84  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80788C88  4B 8F B8 71 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80788C8C  7C 64 1B 78 */	mr r4, r3
/* 80788C90  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80788C94  38 A0 00 28 */	li r5, 0x28
/* 80788C98  38 C0 00 00 */	li r6, 0
/* 80788C9C  4B 8F E8 79 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80788CA0  48 00 00 20 */	b lbl_80788CC0
lbl_80788CA4:
/* 80788CA4  38 61 00 24 */	addi r3, r1, 0x24
/* 80788CA8  38 81 00 84 */	addi r4, r1, 0x84
/* 80788CAC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80788CB0  4B AD DE 35 */	bl __pl__4cXyzCFRC3Vec
/* 80788CB4  38 7F 0F 74 */	addi r3, r31, 0xf74
/* 80788CB8  38 81 00 24 */	addi r4, r1, 0x24
/* 80788CBC  4B AE 69 8D */	bl SetC__8cM3dGSphFRC4cXyz
lbl_80788CC0:
/* 80788CC0  7F 83 E3 78 */	mr r3, r28
/* 80788CC4  38 9F 0E 50 */	addi r4, r31, 0xe50
/* 80788CC8  4B AD BE E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 80788CCC  7F E3 FB 78 */	mr r3, r31
/* 80788CD0  4B FF F3 11 */	bl demo_camera__FP10e_sf_class
/* 80788CD4  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80788CD8  64 00 00 20 */	oris r0, r0, 0x20
/* 80788CDC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80788CE0  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 80788CE4  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80788CE8  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 80788CEC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80788CF0  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 80788CF4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80788CF8  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80788CFC  EC 02 00 2A */	fadds f0, f2, f0
/* 80788D00  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80788D04  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 80788D08  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 80788D0C  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 80788D10  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80788D14  64 00 00 20 */	oris r0, r0, 0x20
/* 80788D18  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80788D1C  38 60 00 01 */	li r3, 1
/* 80788D20  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80788D24  4B BD 94 F1 */	bl _restgpr_24
/* 80788D28  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80788D2C  7C 08 03 A6 */	mtlr r0
/* 80788D30  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80788D34  4E 80 00 20 */	blr 
