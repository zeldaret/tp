lbl_80D35774:
/* 80D35774  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D35778  7C 08 02 A6 */	mflr r0
/* 80D3577C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D35780  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D35784  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D35788  7C 7E 1B 78 */	mr r30, r3
/* 80D3578C  3C 60 80 D3 */	lis r3, lit_3703@ha
/* 80D35790  3B E3 60 C0 */	addi r31, r3, lit_3703@l
/* 80D35794  A8 7E 05 9C */	lha r3, 0x59c(r30)
/* 80D35798  38 03 00 01 */	addi r0, r3, 1
/* 80D3579C  B0 1E 05 9C */	sth r0, 0x59c(r30)
/* 80D357A0  38 60 00 00 */	li r3, 0
/* 80D357A4  38 00 00 02 */	li r0, 2
/* 80D357A8  7C 09 03 A6 */	mtctr r0
lbl_80D357AC:
/* 80D357AC  38 A3 05 A2 */	addi r5, r3, 0x5a2
/* 80D357B0  7C 9E 2A AE */	lhax r4, r30, r5
/* 80D357B4  2C 04 00 00 */	cmpwi r4, 0
/* 80D357B8  41 82 00 0C */	beq lbl_80D357C4
/* 80D357BC  38 04 FF FF */	addi r0, r4, -1
/* 80D357C0  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80D357C4:
/* 80D357C4  38 63 00 02 */	addi r3, r3, 2
/* 80D357C8  42 00 FF E4 */	bdnz lbl_80D357AC
/* 80D357CC  A8 7E 05 A6 */	lha r3, 0x5a6(r30)
/* 80D357D0  2C 03 00 00 */	cmpwi r3, 0
/* 80D357D4  41 82 00 0C */	beq lbl_80D357E0
/* 80D357D8  38 03 FF FF */	addi r0, r3, -1
/* 80D357DC  B0 1E 05 A6 */	sth r0, 0x5a6(r30)
lbl_80D357E0:
/* 80D357E0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D357E4  7C 03 07 74 */	extsb r3, r0
/* 80D357E8  4B 2F 78 84 */	b dComIfGp_getReverb__Fi
/* 80D357EC  7C 65 1B 78 */	mr r5, r3
/* 80D357F0  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80D357F4  38 80 00 00 */	li r4, 0
/* 80D357F8  81 9E 05 8C */	lwz r12, 0x58c(r30)
/* 80D357FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D35800  7D 89 03 A6 */	mtctr r12
/* 80D35804  4E 80 04 21 */	bctrl 
/* 80D35808  88 7E 05 B4 */	lbz r3, 0x5b4(r30)
/* 80D3580C  7C 60 07 75 */	extsb. r0, r3
/* 80D35810  41 82 01 08 */	beq lbl_80D35918
/* 80D35814  7C 60 07 74 */	extsb r0, r3
/* 80D35818  2C 00 00 01 */	cmpwi r0, 1
/* 80D3581C  40 82 00 70 */	bne lbl_80D3588C
/* 80D35820  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D35824  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D35828  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D3582C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D35830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D35834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D35838  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D3583C  38 80 00 00 */	li r4, 0
/* 80D35840  90 81 00 08 */	stw r4, 8(r1)
/* 80D35844  38 00 FF FF */	li r0, -1
/* 80D35848  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3584C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D35850  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D35854  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D35858  38 80 00 00 */	li r4, 0
/* 80D3585C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000840E@ha */
/* 80D35860  38 A5 84 0E */	addi r5, r5, 0x840E /* 0x0000840E@l */
/* 80D35864  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D35868  38 E0 00 00 */	li r7, 0
/* 80D3586C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80D35870  39 21 00 24 */	addi r9, r1, 0x24
/* 80D35874  39 40 00 FF */	li r10, 0xff
/* 80D35878  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D3587C  4B 31 72 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D35880  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D35884  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D35888  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80D3588C:
/* 80D3588C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D35890  7C 03 07 74 */	extsb r3, r0
/* 80D35894  4B 2F 77 D8 */	b dComIfGp_getReverb__Fi
/* 80D35898  7C 67 1B 78 */	mr r7, r3
/* 80D3589C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080112@ha */
/* 80D358A0  38 03 01 12 */	addi r0, r3, 0x0112 /* 0x00080112@l */
/* 80D358A4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D358A8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D358AC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D358B0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D358B4  38 81 00 20 */	addi r4, r1, 0x20
/* 80D358B8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D358BC  38 C0 00 00 */	li r6, 0
/* 80D358C0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D358C4  FC 40 08 90 */	fmr f2, f1
/* 80D358C8  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80D358CC  FC 80 18 90 */	fmr f4, f3
/* 80D358D0  39 00 00 00 */	li r8, 0
/* 80D358D4  4B 57 6C 38 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D358D8  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80D358DC  2C 00 00 23 */	cmpwi r0, 0x23
/* 80D358E0  40 82 00 28 */	bne lbl_80D35908
/* 80D358E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D358E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D358EC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D358F0  54 04 46 3E */	srwi r4, r0, 0x18
/* 80D358F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D358F8  7C 05 07 74 */	extsb r5, r0
/* 80D358FC  4B 2F F9 04 */	b onSwitch__10dSv_info_cFii
/* 80D35900  7F C3 F3 78 */	mr r3, r30
/* 80D35904  4B 2E 43 78 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80D35908:
/* 80D35908  88 7E 05 B4 */	lbz r3, 0x5b4(r30)
/* 80D3590C  38 03 00 01 */	addi r0, r3, 1
/* 80D35910  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80D35914  48 00 00 0C */	b lbl_80D35920
lbl_80D35918:
/* 80D35918  7F C3 F3 78 */	mr r3, r30
/* 80D3591C  4B FF FB ED */	bl action__FP14obj_web1_class
lbl_80D35920:
/* 80D35920  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D35924  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D35928  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D3592C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D35930  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D35934  4B 61 0F B4 */	b PSMTXTrans
/* 80D35938  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3593C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D35940  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D35944  4B 2D 6A F0 */	b mDoMtx_YrotM__FPA4_fs
/* 80D35948  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80D3594C  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80D35950  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D35954  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D35958  EC 42 00 2A */	fadds f2, f2, f0
/* 80D3595C  FC 60 08 90 */	fmr f3, f1
/* 80D35960  4B 2D 74 D8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D35964  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D35968  4B 2D 7A C0 */	b play__14mDoExt_baseAnmFv
/* 80D3596C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D35970  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D35974  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80D35978  38 84 00 24 */	addi r4, r4, 0x24
/* 80D3597C  4B 61 0B 34 */	b PSMTXCopy
/* 80D35980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D35984  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D35988  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D3598C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D35990  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D35994  4B 61 0F 54 */	b PSMTXTrans
/* 80D35998  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80D3599C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80D359A0  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80D359A4  FC 60 08 90 */	fmr f3, f1
/* 80D359A8  4B 2D 74 90 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D359AC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D359B0  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80D359B4  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80D359B8  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80D359BC  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D359C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D359C4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D359C8  EC 44 00 2A */	fadds f2, f4, f0
/* 80D359CC  FC 60 08 90 */	fmr f3, f1
/* 80D359D0  4B 2D 73 CC */	b transM__14mDoMtx_stack_cFfff
/* 80D359D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D359D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D359DC  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 80D359E0  4B 61 0A D0 */	b PSMTXCopy
/* 80D359E4  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 80D359E8  4B 34 5F D8 */	b Move__4dBgWFv
/* 80D359EC  38 7E 07 54 */	addi r3, r30, 0x754
/* 80D359F0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D359F4  4B 53 97 E8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D359F8  38 7E 07 54 */	addi r3, r30, 0x754
/* 80D359FC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80D35A00  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D35A04  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D35A08  4B 53 97 F8 */	b SetR__8cM3dGCylFf
/* 80D35A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D35A10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D35A14  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D35A18  38 9E 06 30 */	addi r4, r30, 0x630
/* 80D35A1C  4B 52 F1 8C */	b Set__4cCcSFP8cCcD_Obj
/* 80D35A20  38 60 00 01 */	li r3, 1
/* 80D35A24  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D35A28  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D35A2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D35A30  7C 08 03 A6 */	mtlr r0
/* 80D35A34  38 21 00 40 */	addi r1, r1, 0x40
/* 80D35A38  4E 80 00 20 */	blr 
