lbl_80D34794:
/* 80D34794  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D34798  7C 08 02 A6 */	mflr r0
/* 80D3479C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D347A0  39 61 00 60 */	addi r11, r1, 0x60
/* 80D347A4  4B 62 DA 35 */	bl _savegpr_28
/* 80D347A8  7C 7E 1B 78 */	mr r30, r3
/* 80D347AC  3C 60 80 D3 */	lis r3, lit_3724@ha /* 0x80D3517C@ha */
/* 80D347B0  3B E3 51 7C */	addi r31, r3, lit_3724@l /* 0x80D3517C@l */
/* 80D347B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D347B8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D347BC  83 BC 5D AC */	lwz r29, 0x5dac(r28)
/* 80D347C0  A8 7E 05 7C */	lha r3, 0x57c(r30)
/* 80D347C4  38 03 00 01 */	addi r0, r3, 1
/* 80D347C8  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80D347CC  38 60 00 00 */	li r3, 0
/* 80D347D0  38 00 00 02 */	li r0, 2
/* 80D347D4  7C 09 03 A6 */	mtctr r0
lbl_80D347D8:
/* 80D347D8  38 A3 05 84 */	addi r5, r3, 0x584
/* 80D347DC  7C 9E 2A AE */	lhax r4, r30, r5
/* 80D347E0  2C 04 00 00 */	cmpwi r4, 0
/* 80D347E4  41 82 00 0C */	beq lbl_80D347F0
/* 80D347E8  38 04 FF FF */	addi r0, r4, -1
/* 80D347EC  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80D347F0:
/* 80D347F0  38 63 00 02 */	addi r3, r3, 2
/* 80D347F4  42 00 FF E4 */	bdnz lbl_80D347D8
/* 80D347F8  A8 7E 05 88 */	lha r3, 0x588(r30)
/* 80D347FC  2C 03 00 00 */	cmpwi r3, 0
/* 80D34800  41 82 00 0C */	beq lbl_80D3480C
/* 80D34804  38 03 FF FF */	addi r0, r3, -1
/* 80D34808  B0 1E 05 88 */	sth r0, 0x588(r30)
lbl_80D3480C:
/* 80D3480C  88 1E 07 38 */	lbz r0, 0x738(r30)
/* 80D34810  28 00 00 00 */	cmplwi r0, 0
/* 80D34814  41 82 01 30 */	beq lbl_80D34944
/* 80D34818  28 00 00 01 */	cmplwi r0, 1
/* 80D3481C  40 82 00 80 */	bne lbl_80D3489C
/* 80D34820  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D34824  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D34828  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D3482C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D34830  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80D34834  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D34838  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D3483C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80D34840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D34844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D34848  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D3484C  38 80 00 00 */	li r4, 0
/* 80D34850  90 81 00 08 */	stw r4, 8(r1)
/* 80D34854  38 00 FF FF */	li r0, -1
/* 80D34858  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3485C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D34860  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D34864  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D34868  38 80 00 00 */	li r4, 0
/* 80D3486C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000840C@ha */
/* 80D34870  38 A5 84 0C */	addi r5, r5, 0x840C /* 0x0000840C@l */
/* 80D34874  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D34878  38 E0 00 00 */	li r7, 0
/* 80D3487C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80D34880  39 21 00 30 */	addi r9, r1, 0x30
/* 80D34884  39 40 00 FF */	li r10, 0xff
/* 80D34888  4B 31 82 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3488C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D34890  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D34894  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D34898  48 00 00 18 */	b lbl_80D348B0
lbl_80D3489C:
/* 80D3489C  28 00 00 29 */	cmplwi r0, 0x29
/* 80D348A0  40 82 00 10 */	bne lbl_80D348B0
/* 80D348A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D348A8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D348AC  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_80D348B0:
/* 80D348B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D348B4  7C 03 07 74 */	extsb r3, r0
/* 80D348B8  4B 2F 87 B5 */	bl dComIfGp_getReverb__Fi
/* 80D348BC  7C 67 1B 78 */	mr r7, r3
/* 80D348C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080112@ha */
/* 80D348C4  38 03 01 12 */	addi r0, r3, 0x0112 /* 0x00080112@l */
/* 80D348C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D348CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D348D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D348D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D348D8  38 81 00 20 */	addi r4, r1, 0x20
/* 80D348DC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D348E0  38 C0 00 00 */	li r6, 0
/* 80D348E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D348E8  FC 40 08 90 */	fmr f2, f1
/* 80D348EC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D348F0  FC 80 18 90 */	fmr f4, f3
/* 80D348F4  39 00 00 00 */	li r8, 0
/* 80D348F8  4B 57 7C 15 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D348FC  88 1E 07 38 */	lbz r0, 0x738(r30)
/* 80D34900  28 00 00 28 */	cmplwi r0, 0x28
/* 80D34904  41 82 00 0C */	beq lbl_80D34910
/* 80D34908  28 00 00 50 */	cmplwi r0, 0x50
/* 80D3490C  40 82 00 28 */	bne lbl_80D34934
lbl_80D34910:
/* 80D34910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D34914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D34918  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D3491C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80D34920  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D34924  7C 05 07 74 */	extsb r5, r0
/* 80D34928  4B 30 08 D9 */	bl onSwitch__10dSv_info_cFii
/* 80D3492C  7F C3 F3 78 */	mr r3, r30
/* 80D34930  4B 2E 53 4D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D34934:
/* 80D34934  88 7E 07 38 */	lbz r3, 0x738(r30)
/* 80D34938  38 03 00 01 */	addi r0, r3, 1
/* 80D3493C  98 1E 07 38 */	stb r0, 0x738(r30)
/* 80D34940  48 00 00 0C */	b lbl_80D3494C
lbl_80D34944:
/* 80D34944  7F C3 F3 78 */	mr r3, r30
/* 80D34948  4B FF FC 79 */	bl damage_check__FP14obj_web0_class
lbl_80D3494C:
/* 80D3494C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D34950  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D34954  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D34958  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D3495C  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D34960  4B 61 1F 89 */	bl PSMTXTrans
/* 80D34964  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D34968  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3496C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D34970  4B 2D 7A C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D34974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D34978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3497C  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80D34980  4B 2D 7B 4D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80D34984  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80D34988  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 80D3498C  C0 7E 04 F4 */	lfs f3, 0x4f4(r30)
/* 80D34990  4B 2D 84 A9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80D34994  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D34998  4B 2D 8A 91 */	bl play__14mDoExt_baseAnmFv
/* 80D3499C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D349A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D349A4  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80D349A8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D349AC  4B 61 1B 05 */	bl PSMTXCopy
/* 80D349B0  A8 7E 05 82 */	lha r3, 0x582(r30)
/* 80D349B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D349B8  41 82 00 0C */	beq lbl_80D349C4
/* 80D349BC  38 03 FF FF */	addi r0, r3, -1
/* 80D349C0  B0 1E 05 82 */	sth r0, 0x582(r30)
lbl_80D349C4:
/* 80D349C4  A8 9E 05 82 */	lha r4, 0x582(r30)
/* 80D349C8  1C 04 19 00 */	mulli r0, r4, 0x1900
/* 80D349CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D349D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D349D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D349D8  7C 63 04 2E */	lfsx f3, r3, r0
/* 80D349DC  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80D349E0  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80D349E4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80D349E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D349EC  3C 00 43 30 */	lis r0, 0x4330
/* 80D349F0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80D349F4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80D349F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D349FC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80D34A00  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D34A04  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80D34A08  7F C3 F3 78 */	mr r3, r30
/* 80D34A0C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80D34A10  4B 2E 5D 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D34A14  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D34A18  38 03 40 00 */	addi r0, r3, 0x4000
/* 80D34A1C  7C 04 00 50 */	subf r0, r4, r0
/* 80D34A20  7C 1C 07 35 */	extsh. r28, r0
/* 80D34A24  40 80 00 14 */	bge lbl_80D34A38
/* 80D34A28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D34A2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D34A30  38 80 80 00 */	li r4, -32768
/* 80D34A34  4B 2D 7A 01 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80D34A38:
/* 80D34A38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D34A3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D34A40  38 9E 05 90 */	addi r4, r30, 0x590
/* 80D34A44  4B 61 1A 6D */	bl PSMTXCopy
/* 80D34A48  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80D34A4C  4B 34 6F 75 */	bl Move__4dBgWFv
/* 80D34A50  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D34A54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D34A58  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D34A5C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80D34A60  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D34A64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D34A68  A8 1E 05 7C */	lha r0, 0x57c(r30)
/* 80D34A6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D34A70  41 82 00 18 */	beq lbl_80D34A88
/* 80D34A74  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80D34A78  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D34A7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D34A80  EC 02 00 28 */	fsubs f0, f2, f0
/* 80D34A84  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80D34A88:
/* 80D34A88  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80D34A8C  7F 80 07 35 */	extsh. r0, r28
/* 80D34A90  40 80 00 0C */	bge lbl_80D34A9C
/* 80D34A94  38 03 80 00 */	addi r0, r3, -32768
/* 80D34A98  7C 03 07 34 */	extsh r3, r0
lbl_80D34A9C:
/* 80D34A9C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80D34AA0  7C 60 18 50 */	subf r3, r0, r3
/* 80D34AA4  7C 60 07 34 */	extsh r0, r3
/* 80D34AA8  2C 00 4E 20 */	cmpwi r0, 0x4e20
/* 80D34AAC  40 80 00 0C */	bge lbl_80D34AB8
/* 80D34AB0  2C 00 B1 E0 */	cmpwi r0, -20000
/* 80D34AB4  41 81 00 10 */	bgt lbl_80D34AC4
lbl_80D34AB8:
/* 80D34AB8  A8 1E 05 88 */	lha r0, 0x588(r30)
/* 80D34ABC  2C 00 00 00 */	cmpwi r0, 0
/* 80D34AC0  41 82 00 14 */	beq lbl_80D34AD4
lbl_80D34AC4:
/* 80D34AC4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80D34AC8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80D34ACC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D34AD0  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80D34AD4:
/* 80D34AD4  38 7E 07 24 */	addi r3, r30, 0x724
/* 80D34AD8  38 81 00 24 */	addi r4, r1, 0x24
/* 80D34ADC  4B 53 AB 6D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80D34AE0  38 7E 07 24 */	addi r3, r30, 0x724
/* 80D34AE4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80D34AE8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D34AEC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D34AF0  4B 53 AC 19 */	bl SetR__8cM3dGSphFf
/* 80D34AF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D34AF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D34AFC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D34B00  38 9E 06 00 */	addi r4, r30, 0x600
/* 80D34B04  4B 53 00 A5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D34B08  38 60 00 01 */	li r3, 1
/* 80D34B0C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D34B10  4B 62 D7 15 */	bl _restgpr_28
/* 80D34B14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D34B18  7C 08 03 A6 */	mtlr r0
/* 80D34B1C  38 21 00 60 */	addi r1, r1, 0x60
/* 80D34B20  4E 80 00 20 */	blr 
