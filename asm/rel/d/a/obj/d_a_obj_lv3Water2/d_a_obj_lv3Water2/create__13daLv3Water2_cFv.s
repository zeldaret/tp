lbl_80C5A5E4:
/* 80C5A5E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5A5E8  7C 08 02 A6 */	mflr r0
/* 80C5A5EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5A5F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C5A5F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C5A5F8  7C 7E 1B 78 */	mr r30, r3
/* 80C5A5FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5A600  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5A604  40 82 00 6C */	bne lbl_80C5A670
/* 80C5A608  7F C0 F3 79 */	or. r0, r30, r30
/* 80C5A60C  41 82 00 58 */	beq lbl_80C5A664
/* 80C5A610  7C 1F 03 78 */	mr r31, r0
/* 80C5A614  4B 41 E0 11 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C5A618  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C5B454@ha */
/* 80C5A61C  38 03 B4 54 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C5B454@l */
/* 80C5A620  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C5A624  93 FF 05 AC */	stw r31, 0x5ac(r31)
/* 80C5A628  38 00 00 00 */	li r0, 0
/* 80C5A62C  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80C5A630  3C 60 80 C6 */	lis r3, __vt__13daLv3Water2_c@ha /* 0x80C5B46C@ha */
/* 80C5A634  38 63 B4 6C */	addi r3, r3, __vt__13daLv3Water2_c@l /* 0x80C5B46C@l */
/* 80C5A638  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80C5A63C  38 03 00 28 */	addi r0, r3, 0x28
/* 80C5A640  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C5A644  3C 60 80 C6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80C5B448@ha */
/* 80C5A648  38 03 B4 48 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80C5B448@l */
/* 80C5A64C  94 1F 05 C4 */	stwu r0, 0x5c4(r31)
/* 80C5A650  7F E3 FB 78 */	mr r3, r31
/* 80C5A654  38 80 00 00 */	li r4, 0
/* 80C5A658  4B 6C DD A5 */	bl init__12J3DFrameCtrlFs
/* 80C5A65C  38 00 00 00 */	li r0, 0
/* 80C5A660  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80C5A664:
/* 80C5A664  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C5A668  60 00 00 08 */	ori r0, r0, 8
/* 80C5A66C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C5A670:
/* 80C5A670  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5A674  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C5A678  98 1E 05 DD */	stb r0, 0x5dd(r30)
/* 80C5A67C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C5A680  88 1E 05 DD */	lbz r0, 0x5dd(r30)
/* 80C5A684  54 00 10 3A */	slwi r0, r0, 2
/* 80C5A688  3C 80 80 C6 */	lis r4, l_resNameIdx@ha /* 0x80C5B3C4@ha */
/* 80C5A68C  38 84 B3 C4 */	addi r4, r4, l_resNameIdx@l /* 0x80C5B3C4@l */
/* 80C5A690  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5A694  4B 3D 28 29 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C5A698  7C 7F 1B 78 */	mr r31, r3
/* 80C5A69C  2C 1F 00 04 */	cmpwi r31, 4
/* 80C5A6A0  40 82 01 40 */	bne lbl_80C5A7E0
/* 80C5A6A4  88 1E 05 DD */	lbz r0, 0x5dd(r30)
/* 80C5A6A8  54 00 10 3A */	slwi r0, r0, 2
/* 80C5A6AC  7F C3 F3 78 */	mr r3, r30
/* 80C5A6B0  3C 80 80 C6 */	lis r4, l_resNameIdx@ha /* 0x80C5B3C4@ha */
/* 80C5A6B4  38 84 B3 C4 */	addi r4, r4, l_resNameIdx@l /* 0x80C5B3C4@l */
/* 80C5A6B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C5A6BC  3C A0 80 C6 */	lis r5, l_dzbIdx@ha /* 0x80C5B368@ha */
/* 80C5A6C0  38 A5 B3 68 */	addi r5, r5, l_dzbIdx@l /* 0x80C5B368@l */
/* 80C5A6C4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C5A6C8  38 C0 00 00 */	li r6, 0
/* 80C5A6CC  38 E0 2D 00 */	li r7, 0x2d00
/* 80C5A6D0  39 00 00 00 */	li r8, 0
/* 80C5A6D4  4B 41 E0 E9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C5A6D8  2C 03 00 05 */	cmpwi r3, 5
/* 80C5A6DC  40 82 00 0C */	bne lbl_80C5A6E8
/* 80C5A6E0  38 60 00 05 */	li r3, 5
/* 80C5A6E4  48 00 01 00 */	b lbl_80C5A7E4
lbl_80C5A6E8:
/* 80C5A6E8  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80C5A6EC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C5A6F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5A6F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5A6F8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5A6FC  7C 05 07 74 */	extsb r5, r0
/* 80C5A700  4B 3D AC 61 */	bl isSwitch__10dSv_info_cCFii
/* 80C5A704  98 7E 05 E7 */	stb r3, 0x5e7(r30)
/* 80C5A708  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80C5A70C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C5A710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5A714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5A718  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5A71C  7C 05 07 74 */	extsb r5, r0
/* 80C5A720  4B 3D AC 41 */	bl isSwitch__10dSv_info_cCFii
/* 80C5A724  98 7E 05 E8 */	stb r3, 0x5e8(r30)
/* 80C5A728  7F C3 F3 78 */	mr r3, r30
/* 80C5A72C  4B FF FD 4D */	bl setBaseMtx__13daLv3Water2_cFv
/* 80C5A730  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C5A734  38 03 00 24 */	addi r0, r3, 0x24
/* 80C5A738  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C5A73C  88 1E 05 E7 */	lbz r0, 0x5e7(r30)
/* 80C5A740  28 00 00 00 */	cmplwi r0, 0
/* 80C5A744  41 82 00 44 */	beq lbl_80C5A788
/* 80C5A748  C0 7E 04 AC */	lfs f3, 0x4ac(r30)
/* 80C5A74C  3C 60 80 C6 */	lis r3, lit_3747@ha /* 0x80C5B374@ha */
/* 80C5A750  C0 43 B3 74 */	lfs f2, lit_3747@l(r3)  /* 0x80C5B374@l */
/* 80C5A754  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5A758  54 00 E5 3E */	rlwinm r0, r0, 0x1c, 0x14, 0x1f
/* 80C5A75C  3C 60 80 C6 */	lis r3, lit_3749@ha /* 0x80C5B37C@ha */
/* 80C5A760  C8 23 B3 7C */	lfd f1, lit_3749@l(r3)  /* 0x80C5B37C@l */
/* 80C5A764  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C5A768  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C5A76C  3C 00 43 30 */	lis r0, 0x4330
/* 80C5A770  90 01 00 08 */	stw r0, 8(r1)
/* 80C5A774  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C5A778  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C5A77C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C5A780  EC 03 00 2A */	fadds f0, f3, f0
/* 80C5A784  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C5A788:
/* 80C5A788  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80C5A78C  28 00 00 00 */	cmplwi r0, 0
/* 80C5A790  41 82 00 48 */	beq lbl_80C5A7D8
/* 80C5A794  3C 60 80 C6 */	lis r3, lit_3747@ha /* 0x80C5B374@ha */
/* 80C5A798  C0 43 B3 74 */	lfs f2, lit_3747@l(r3)  /* 0x80C5B374@l */
/* 80C5A79C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C5A7A0  54 00 E5 3E */	rlwinm r0, r0, 0x1c, 0x14, 0x1f
/* 80C5A7A4  3C 60 80 C6 */	lis r3, lit_3749@ha /* 0x80C5B37C@ha */
/* 80C5A7A8  C8 23 B3 7C */	lfd f1, lit_3749@l(r3)  /* 0x80C5B37C@l */
/* 80C5A7AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C5A7B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C5A7B4  3C 00 43 30 */	lis r0, 0x4330
/* 80C5A7B8  90 01 00 08 */	stw r0, 8(r1)
/* 80C5A7BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C5A7C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C5A7C4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C5A7C8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80C5A7CC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C5A7D0  EC 00 08 2A */	fadds f0, f0, f1
/* 80C5A7D4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C5A7D8:
/* 80C5A7D8  38 00 00 00 */	li r0, 0
/* 80C5A7DC  98 1E 05 DC */	stb r0, 0x5dc(r30)
lbl_80C5A7E0:
/* 80C5A7E0  7F E3 FB 78 */	mr r3, r31
lbl_80C5A7E4:
/* 80C5A7E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C5A7E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C5A7EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5A7F0  7C 08 03 A6 */	mtlr r0
/* 80C5A7F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5A7F8  4E 80 00 20 */	blr 
