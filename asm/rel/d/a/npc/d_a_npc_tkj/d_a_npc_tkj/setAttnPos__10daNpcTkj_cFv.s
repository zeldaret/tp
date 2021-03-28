lbl_80574524:
/* 80574524  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80574528  7C 08 02 A6 */	mflr r0
/* 8057452C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80574530  39 61 00 60 */	addi r11, r1, 0x60
/* 80574534  4B DE DC A0 */	b _savegpr_27
/* 80574538  7C 7E 1B 78 */	mr r30, r3
/* 8057453C  3C 80 80 57 */	lis r4, m__17daNpc_Tkj_Param_c@ha
/* 80574540  3B E4 65 98 */	addi r31, r4, m__17daNpc_Tkj_Param_c@l
/* 80574544  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80574548  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8057454C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80574550  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80574554  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80574558  80 83 05 78 */	lwz r4, 0x578(r3)
/* 8057455C  83 64 00 04 */	lwz r27, 4(r4)
/* 80574560  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80574564  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80574568  7D 89 03 A6 */	mtctr r12
/* 8057456C  4E 80 04 21 */	bctrl 
/* 80574570  7C 7C 1B 78 */	mr r28, r3
/* 80574574  7F C3 F3 78 */	mr r3, r30
/* 80574578  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8057457C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80574580  7D 89 03 A6 */	mtctr r12
/* 80574584  4E 80 04 21 */	bctrl 
/* 80574588  7C 7D 1B 78 */	mr r29, r3
/* 8057458C  7F C3 F3 78 */	mr r3, r30
/* 80574590  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80574594  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80574598  7D 89 03 A6 */	mtctr r12
/* 8057459C  4E 80 04 21 */	bctrl 
/* 805745A0  7C 67 1B 78 */	mr r7, r3
/* 805745A4  39 5F 00 00 */	addi r10, r31, 0
/* 805745A8  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 805745AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805745B0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 805745B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805745B8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805745BC  7F C4 F3 78 */	mr r4, r30
/* 805745C0  7F 65 DB 78 */	mr r5, r27
/* 805745C4  38 C1 00 28 */	addi r6, r1, 0x28
/* 805745C8  7F A8 EB 78 */	mr r8, r29
/* 805745CC  7F 89 E3 78 */	mr r9, r28
/* 805745D0  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 805745D4  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 805745D8  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 805745DC  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 805745E0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 805745E4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 805745E8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 805745EC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 805745F0  39 40 00 00 */	li r10, 0
/* 805745F4  4B BD 26 E4 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 805745F8  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 805745FC  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80574600  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80574604  7C 03 00 50 */	subf r0, r3, r0
/* 80574608  7C 00 07 34 */	extsh r0, r0
/* 8057460C  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80574610  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80574614  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80574618  3C 00 43 30 */	lis r0, 0x4330
/* 8057461C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80574620  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80574624  EC 00 08 28 */	fsubs f0, f0, f1
/* 80574628  EC 62 00 32 */	fmuls f3, f2, f0
/* 8057462C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80574630  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80574634  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80574638  4B BD 36 00 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 8057463C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80574640  80 63 00 04 */	lwz r3, 4(r3)
/* 80574644  80 A3 00 04 */	lwz r5, 4(r3)
/* 80574648  38 C0 00 00 */	li r6, 0
/* 8057464C  3C 60 80 57 */	lis r3, ctrlJointCallBack__10daNpcTkj_cFP8J3DJointi@ha
/* 80574650  38 83 40 78 */	addi r4, r3, ctrlJointCallBack__10daNpcTkj_cFP8J3DJointi@l
/* 80574654  48 00 00 18 */	b lbl_8057466C
lbl_80574658:
/* 80574658  80 65 00 28 */	lwz r3, 0x28(r5)
/* 8057465C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80574660  7C 63 00 2E */	lwzx r3, r3, r0
/* 80574664  90 83 00 04 */	stw r4, 4(r3)
/* 80574668  38 C6 00 01 */	addi r6, r6, 1
lbl_8057466C:
/* 8057466C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80574670  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 80574674  7C 03 00 40 */	cmplw r3, r0
/* 80574678  41 80 FF E0 */	blt lbl_80574658
/* 8057467C  7F C3 F3 78 */	mr r3, r30
/* 80574680  4B BD 4B 10 */	b setMtx__8daNpcT_cFv
/* 80574684  7F C3 F3 78 */	mr r3, r30
/* 80574688  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8057468C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80574690  7D 89 03 A6 */	mtctr r12
/* 80574694  4E 80 04 21 */	bctrl 
/* 80574698  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8057469C  80 84 00 04 */	lwz r4, 4(r4)
/* 805746A0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 805746A4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 805746A8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 805746AC  7C 64 02 14 */	add r3, r4, r0
/* 805746B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805746B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805746B8  4B DD 1D F8 */	b PSMTXCopy
/* 805746BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805746C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805746C4  38 81 00 28 */	addi r4, r1, 0x28
/* 805746C8  38 BE 05 38 */	addi r5, r30, 0x538
/* 805746CC  4B DD 26 A0 */	b PSMTXMultVec
/* 805746D0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805746D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805746D8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 805746DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805746E0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 805746E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805746E8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805746EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 805746F0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 805746F4  38 A0 00 00 */	li r5, 0
/* 805746F8  48 00 19 45 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 805746FC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80574700  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80574704  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80574708  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8057470C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80574710  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80574714  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80574718  38 81 00 10 */	addi r4, r1, 0x10
/* 8057471C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80574720  38 C0 00 00 */	li r6, 0
/* 80574724  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80574728  38 E0 00 00 */	li r7, 0
/* 8057472C  48 00 17 F5 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80574730  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80574734  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80574738  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8057473C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80574740  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80574744  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80574748  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8057474C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80574750  EC 01 00 2A */	fadds f0, f1, f0
/* 80574754  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80574758  39 61 00 60 */	addi r11, r1, 0x60
/* 8057475C  4B DE DA C4 */	b _restgpr_27
/* 80574760  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80574764  7C 08 03 A6 */	mtlr r0
/* 80574768  38 21 00 60 */	addi r1, r1, 0x60
/* 8057476C  4E 80 00 20 */	blr 
