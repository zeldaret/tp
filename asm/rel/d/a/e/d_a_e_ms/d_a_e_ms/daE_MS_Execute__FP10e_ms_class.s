lbl_80728464:
/* 80728464  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80728468  7C 08 02 A6 */	mflr r0
/* 8072846C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80728470  39 61 00 60 */	addi r11, r1, 0x60
/* 80728474  4B C3 9D 51 */	bl _savegpr_23
/* 80728478  7C 7F 1B 78 */	mr r31, r3
/* 8072847C  3C 60 80 73 */	lis r3, lit_1109@ha /* 0x807297C0@ha */
/* 80728480  3B A3 97 C0 */	addi r29, r3, lit_1109@l /* 0x807297C0@l */
/* 80728484  3C 60 80 73 */	lis r3, lit_3800@ha /* 0x80729504@ha */
/* 80728488  3B C3 95 04 */	addi r30, r3, lit_3800@l /* 0x80729504@l */
/* 8072848C  A8 7F 06 7C */	lha r3, 0x67c(r31)
/* 80728490  38 03 00 01 */	addi r0, r3, 1
/* 80728494  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 80728498  38 60 00 00 */	li r3, 0
/* 8072849C  38 00 00 04 */	li r0, 4
/* 807284A0  7C 09 03 A6 */	mtctr r0
lbl_807284A4:
/* 807284A4  38 A3 06 86 */	addi r5, r3, 0x686
/* 807284A8  7C 9F 2A AE */	lhax r4, r31, r5
/* 807284AC  2C 04 00 00 */	cmpwi r4, 0
/* 807284B0  41 82 00 0C */	beq lbl_807284BC
/* 807284B4  38 04 FF FF */	addi r0, r4, -1
/* 807284B8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807284BC:
/* 807284BC  38 63 00 02 */	addi r3, r3, 2
/* 807284C0  42 00 FF E4 */	bdnz lbl_807284A4
/* 807284C4  A8 7F 06 8E */	lha r3, 0x68e(r31)
/* 807284C8  2C 03 00 00 */	cmpwi r3, 0
/* 807284CC  41 82 00 0C */	beq lbl_807284D8
/* 807284D0  38 03 FF FF */	addi r0, r3, -1
/* 807284D4  B0 1F 06 8E */	sth r0, 0x68e(r31)
lbl_807284D8:
/* 807284D8  88 7F 0B A7 */	lbz r3, 0xba7(r31)
/* 807284DC  7C 60 07 75 */	extsb. r0, r3
/* 807284E0  41 82 00 0C */	beq lbl_807284EC
/* 807284E4  38 03 FF FF */	addi r0, r3, -1
/* 807284E8  98 1F 0B A7 */	stb r0, 0xba7(r31)
lbl_807284EC:
/* 807284EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807284F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807284F4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 807284F8  3C 80 80 73 */	lis r4, d_a_e_ms__stringBase0@ha /* 0x807295FC@ha */
/* 807284FC  38 84 95 FC */	addi r4, r4, d_a_e_ms__stringBase0@l /* 0x807295FC@l */
/* 80728500  38 84 00 05 */	addi r4, r4, 5
/* 80728504  4B C4 04 91 */	bl strcmp
/* 80728508  2C 03 00 00 */	cmpwi r3, 0
/* 8072850C  40 82 00 60 */	bne lbl_8072856C
/* 80728510  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80728514  7C 05 07 74 */	extsb r5, r0
/* 80728518  2C 05 00 0F */	cmpwi r5, 0xf
/* 8072851C  40 82 00 50 */	bne lbl_8072856C
/* 80728520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80728524  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80728528  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8072852C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80728530  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80728534  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80728538  40 80 00 2C */	bge lbl_80728564
/* 8072853C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80728540  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80728544  40 81 00 20 */	ble lbl_80728564
/* 80728548  38 80 00 0A */	li r4, 0xa
/* 8072854C  4B 90 CE 15 */	bl isSwitch__10dSv_info_cCFii
/* 80728550  2C 03 00 00 */	cmpwi r3, 0
/* 80728554  40 82 00 10 */	bne lbl_80728564
/* 80728558  38 00 00 01 */	li r0, 1
/* 8072855C  98 1F 0B A8 */	stb r0, 0xba8(r31)
/* 80728560  48 00 00 0C */	b lbl_8072856C
lbl_80728564:
/* 80728564  38 00 00 00 */	li r0, 0
/* 80728568  98 1F 0B A8 */	stb r0, 0xba8(r31)
lbl_8072856C:
/* 8072856C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80728570  83 83 00 04 */	lwz r28, 4(r3)
/* 80728574  7F E3 FB 78 */	mr r3, r31
/* 80728578  4B FF F4 A9 */	bl action__FP10e_ms_class
/* 8072857C  A8 1F 06 7E */	lha r0, 0x67e(r31)
/* 80728580  2C 00 00 05 */	cmpwi r0, 5
/* 80728584  40 82 00 98 */	bne lbl_8072861C
/* 80728588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072858C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80728590  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80728594  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80728598  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8072859C  7D 89 03 A6 */	mtctr r12
/* 807285A0  4E 80 04 21 */	bctrl 
/* 807285A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807285A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807285AC  4B C1 DF 05 */	bl PSMTXCopy
/* 807285B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807285B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807285B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807285BC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807285C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807285C4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807285C8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807285CC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807285D0  38 80 00 00 */	li r4, 0
/* 807285D4  4B 8E 3E 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 807285D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807285DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807285E0  38 80 80 00 */	li r4, -32768
/* 807285E4  4B 8E 3D B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 807285E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807285EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807285F0  38 80 09 C4 */	li r4, 0x9c4
/* 807285F4  4B 8E 3E D9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 807285F8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807285FC  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 80728600  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 80728604  4B 8E 47 99 */	bl transM__14mDoMtx_stack_cFfff
/* 80728608  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072860C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80728610  38 9C 00 24 */	addi r4, r28, 0x24
/* 80728614  4B C1 DE 9D */	bl PSMTXCopy
/* 80728618  48 00 00 54 */	b lbl_8072866C
lbl_8072861C:
/* 8072861C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80728620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80728624  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80728628  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8072862C  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80728630  EC 42 00 2A */	fadds f2, f2, f0
/* 80728634  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80728638  4B C1 E2 B1 */	bl PSMTXTrans
/* 8072863C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80728640  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80728644  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80728648  4B 8E 3D ED */	bl mDoMtx_YrotM__FPA4_fs
/* 8072864C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80728650  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80728654  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80728658  4B 8E 3D 45 */	bl mDoMtx_XrotM__FPA4_fs
/* 8072865C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80728660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80728664  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80728668  4B 8E 3E 65 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8072866C:
/* 8072866C  3B 7D 00 4C */	addi r27, r29, 0x4c
/* 80728670  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80728674  FC 40 08 90 */	fmr f2, f1
/* 80728678  FC 60 08 90 */	fmr f3, f1
/* 8072867C  4B 8E 47 BD */	bl scaleM__14mDoMtx_stack_cFfff
/* 80728680  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80728684  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80728688  38 9C 00 24 */	addi r4, r28, 0x24
/* 8072868C  4B C1 DE 25 */	bl PSMTXCopy
/* 80728690  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80728694  7C 03 07 74 */	extsb r3, r0
/* 80728698  4B 90 49 D5 */	bl dComIfGp_getReverb__Fi
/* 8072869C  7C 65 1B 78 */	mr r5, r3
/* 807286A0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807286A4  88 9F 0B A8 */	lbz r4, 0xba8(r31)
/* 807286A8  7C 84 07 74 */	extsb r4, r4
/* 807286AC  4B 8E 8A 05 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807286B0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807286B4  4B 8E 8B 39 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807286B8  7F E3 FB 78 */	mr r3, r31
/* 807286BC  4B FF F9 81 */	bl anm_se_set__FP10e_ms_class
/* 807286C0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807286C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807286C8  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 807286CC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807286D0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807286D4  80 84 00 00 */	lwz r4, 0(r4)
/* 807286D8  4B C1 DD D9 */	bl PSMTXCopy
/* 807286DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807286E0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807286E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807286E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807286EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807286F0  38 9F 05 38 */	addi r4, r31, 0x538
/* 807286F4  4B B4 87 F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807286F8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807286FC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80728700  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80728704  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80728708  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8072870C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80728710  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80728714  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80728718  EC 01 00 2A */	fadds f0, f1, f0
/* 8072871C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80728720  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80728724  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80728728  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8072872C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80728730  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80728734  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80728738  38 61 00 2C */	addi r3, r1, 0x2c
/* 8072873C  38 81 00 20 */	addi r4, r1, 0x20
/* 80728740  4B B4 87 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80728744  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 80728748  38 81 00 20 */	addi r4, r1, 0x20
/* 8072874C  4B B4 6E FD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80728750  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 80728754  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80728758  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8072875C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80728760  4B B4 6F A9 */	bl SetR__8cM3dGSphFf
/* 80728764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80728768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072876C  3B 23 23 3C */	addi r25, r3, 0x233c
/* 80728770  7F 23 CB 78 */	mr r3, r25
/* 80728774  38 9F 08 F0 */	addi r4, r31, 0x8f0
/* 80728778  4B B3 C4 31 */	bl Set__4cCcSFP8cCcD_Obj
/* 8072877C  88 1F 0B 84 */	lbz r0, 0xb84(r31)
/* 80728780  7C 00 07 75 */	extsb. r0, r0
/* 80728784  40 82 00 18 */	bne lbl_8072879C
/* 80728788  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8072878C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80728790  EC 01 00 2A */	fadds f0, f1, f0
/* 80728794  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80728798  48 00 00 28 */	b lbl_807287C0
lbl_8072879C:
/* 8072879C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807287A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807287A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807287A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807287AC  38 61 00 2C */	addi r3, r1, 0x2c
/* 807287B0  38 81 00 20 */	addi r4, r1, 0x20
/* 807287B4  4B B4 87 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807287B8  38 00 00 00 */	li r0, 0
/* 807287BC  98 1F 0B 84 */	stb r0, 0xb84(r31)
lbl_807287C0:
/* 807287C0  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 807287C4  38 81 00 20 */	addi r4, r1, 0x20
/* 807287C8  4B B4 6E 81 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807287CC  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 807287D0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 807287D4  C0 1B 00 08 */	lfs f0, 8(r27)
/* 807287D8  EC 21 00 32 */	fmuls f1, f1, f0
/* 807287DC  4B B4 6F 2D */	bl SetR__8cM3dGSphFf
/* 807287E0  7F 23 CB 78 */	mr r3, r25
/* 807287E4  38 9F 0A 28 */	addi r4, r31, 0xa28
/* 807287E8  4B B3 C3 C1 */	bl Set__4cCcSFP8cCcD_Obj
/* 807287EC  88 1F 08 B0 */	lbz r0, 0x8b0(r31)
/* 807287F0  7C 00 07 75 */	extsb. r0, r0
/* 807287F4  41 82 01 10 */	beq lbl_80728904
/* 807287F8  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 807287FC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80728800  40 82 01 04 */	bne lbl_80728904
/* 80728804  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80728808  38 63 00 0C */	addi r3, r3, 0xc
/* 8072880C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80728810  4B BF FC 1D */	bl checkPass__12J3DFrameCtrlFf
/* 80728814  2C 03 00 00 */	cmpwi r3, 0
/* 80728818  40 82 00 1C */	bne lbl_80728834
/* 8072881C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80728820  38 63 00 0C */	addi r3, r3, 0xc
/* 80728824  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80728828  4B BF FC 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8072882C  2C 03 00 00 */	cmpwi r3, 0
/* 80728830  41 82 00 D4 */	beq lbl_80728904
lbl_80728834:
/* 80728834  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80728838  4B B3 F1 1D */	bl cM_rndF__Ff
/* 8072883C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80728840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80728844  40 80 00 C0 */	bge lbl_80728904
/* 80728848  88 1D 00 C8 */	lbz r0, 0xc8(r29)
/* 8072884C  7C 00 07 75 */	extsb. r0, r0
/* 80728850  40 82 00 30 */	bne lbl_80728880
/* 80728854  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80728858  D0 1D 00 CC */	stfs f0, 0xcc(r29)
/* 8072885C  38 7D 00 CC */	addi r3, r29, 0xcc
/* 80728860  D0 03 00 04 */	stfs f0, 4(r3)
/* 80728864  D0 03 00 08 */	stfs f0, 8(r3)
/* 80728868  3C 80 80 73 */	lis r4, __dt__4cXyzFv@ha /* 0x807294B4@ha */
/* 8072886C  38 84 94 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807294B4@l */
/* 80728870  38 BD 00 BC */	addi r5, r29, 0xbc
/* 80728874  4B FF D2 A5 */	bl __register_global_object
/* 80728878  38 00 00 01 */	li r0, 1
/* 8072887C  98 1D 00 C8 */	stb r0, 0xc8(r29)
lbl_80728880:
/* 80728880  3A E0 00 00 */	li r23, 0
/* 80728884  3B 60 00 00 */	li r27, 0
/* 80728888  3B 80 00 00 */	li r28, 0
/* 8072888C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80728890  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80728894  3C 60 80 73 */	lis r3, eff_id_4781@ha /* 0x80729674@ha */
/* 80728898  3B 43 96 74 */	addi r26, r3, eff_id_4781@l /* 0x80729674@l */
lbl_8072889C:
/* 8072889C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807288A0  38 00 00 FF */	li r0, 0xff
/* 807288A4  90 01 00 08 */	stw r0, 8(r1)
/* 807288A8  38 80 00 00 */	li r4, 0
/* 807288AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807288B0  38 00 FF FF */	li r0, -1
/* 807288B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807288B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807288BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807288C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807288C4  3B 1C 0B 8C */	addi r24, r28, 0xb8c
/* 807288C8  7C 9F C0 2E */	lwzx r4, r31, r24
/* 807288CC  38 A0 00 00 */	li r5, 0
/* 807288D0  7C DA DA 2E */	lhzx r6, r26, r27
/* 807288D4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 807288D8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807288DC  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807288E0  39 5D 00 CC */	addi r10, r29, 0xcc
/* 807288E4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807288E8  4B 92 4B E5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807288EC  7C 7F C1 2E */	stwx r3, r31, r24
/* 807288F0  3A F7 00 01 */	addi r23, r23, 1
/* 807288F4  2C 17 00 04 */	cmpwi r23, 4
/* 807288F8  3B 7B 00 02 */	addi r27, r27, 2
/* 807288FC  3B 9C 00 04 */	addi r28, r28, 4
/* 80728900  41 80 FF 9C */	blt lbl_8072889C
lbl_80728904:
/* 80728904  38 60 00 01 */	li r3, 1
/* 80728908  39 61 00 60 */	addi r11, r1, 0x60
/* 8072890C  4B C3 99 05 */	bl _restgpr_23
/* 80728910  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80728914  7C 08 03 A6 */	mtlr r0
/* 80728918  38 21 00 60 */	addi r1, r1, 0x60
/* 8072891C  4E 80 00 20 */	blr 
