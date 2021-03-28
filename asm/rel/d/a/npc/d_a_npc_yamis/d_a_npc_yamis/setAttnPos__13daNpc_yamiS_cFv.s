lbl_80B47750:
/* 80B47750  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B47754  7C 08 02 A6 */	mflr r0
/* 80B47758  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B4775C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B47760  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B47764  39 61 00 60 */	addi r11, r1, 0x60
/* 80B47768  4B 81 AA 6C */	b _savegpr_27
/* 80B4776C  7C 7E 1B 78 */	mr r30, r3
/* 80B47770  3C 60 80 B5 */	lis r3, m__19daNpc_yamiS_Param_c@ha
/* 80B47774  3B E3 96 B0 */	addi r31, r3, m__19daNpc_yamiS_Param_c@l
/* 80B47778  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B4777C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B47780  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B47784  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B47788  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B4778C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B47790  38 80 00 00 */	li r4, 0
/* 80B47794  4B 60 06 A8 */	b calc__19daNpcT_DmgStagger_cFi
/* 80B47798  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80B4779C  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B477A0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B477A4  7C 03 00 50 */	subf r0, r3, r0
/* 80B477A8  7C 00 07 34 */	extsh r0, r0
/* 80B477AC  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80B477B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B477B4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B477B8  3C 00 43 30 */	lis r0, 0x4330
/* 80B477BC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B477C0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B477C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B477C8  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B477CC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B477D0  83 63 00 04 */	lwz r27, 4(r3)
/* 80B477D4  7F C3 F3 78 */	mr r3, r30
/* 80B477D8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B477DC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B477E0  7D 89 03 A6 */	mtctr r12
/* 80B477E4  4E 80 04 21 */	bctrl 
/* 80B477E8  7C 7C 1B 78 */	mr r28, r3
/* 80B477EC  7F C3 F3 78 */	mr r3, r30
/* 80B477F0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B477F4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B477F8  7D 89 03 A6 */	mtctr r12
/* 80B477FC  4E 80 04 21 */	bctrl 
/* 80B47800  7C 7D 1B 78 */	mr r29, r3
/* 80B47804  7F C3 F3 78 */	mr r3, r30
/* 80B47808  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4780C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B47810  7D 89 03 A6 */	mtctr r12
/* 80B47814  4E 80 04 21 */	bctrl 
/* 80B47818  7C 67 1B 78 */	mr r7, r3
/* 80B4781C  39 5F 00 00 */	addi r10, r31, 0
/* 80B47820  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B47824  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B47828  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B4782C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B47830  7F C4 F3 78 */	mr r4, r30
/* 80B47834  7F 65 DB 78 */	mr r5, r27
/* 80B47838  38 C1 00 28 */	addi r6, r1, 0x28
/* 80B4783C  7F A8 EB 78 */	mr r8, r29
/* 80B47840  7F 89 E3 78 */	mr r9, r28
/* 80B47844  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B47848  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B4784C  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B47850  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B47854  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B47858  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B4785C  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B47860  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B47864  39 40 00 00 */	li r10, 0
/* 80B47868  4B 5F F4 70 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B4786C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B47870  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B47874  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80B47878  FC 60 F8 90 */	fmr f3, f31
/* 80B4787C  4B 60 03 BC */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B47880  7F C3 F3 78 */	mr r3, r30
/* 80B47884  4B 60 19 0C */	b setMtx__8daNpcT_cFv
/* 80B47888  7F C3 F3 78 */	mr r3, r30
/* 80B4788C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B47890  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B47894  7D 89 03 A6 */	mtctr r12
/* 80B47898  4E 80 04 21 */	bctrl 
/* 80B4789C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B478A0  80 84 00 04 */	lwz r4, 4(r4)
/* 80B478A4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B478A8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B478AC  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B478B0  7C 64 02 14 */	add r3, r4, r0
/* 80B478B4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B478B8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B478BC  4B 7F EB F4 */	b PSMTXCopy
/* 80B478C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B478C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B478C8  38 81 00 28 */	addi r4, r1, 0x28
/* 80B478CC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B478D0  4B 7F F4 9C */	b PSMTXMultVec
/* 80B478D4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B478D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B478DC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B478E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B478E4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B478E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B478EC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B478F0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B478F4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B478F8  38 A0 00 00 */	li r5, 0
/* 80B478FC  48 00 18 79 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B47900  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B47904  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B47908  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B4790C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B47910  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B47914  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B47918  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4791C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B47920  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B47924  38 C0 00 01 */	li r6, 1
/* 80B47928  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B4792C  38 E0 00 00 */	li r7, 0
/* 80B47930  48 00 17 29 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B47934  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B47938  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B4793C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B47940  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B47944  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B47948  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B4794C  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80B47950  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B47954  EC 01 00 2A */	fadds f0, f1, f0
/* 80B47958  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B4795C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B47960  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B47964  39 61 00 60 */	addi r11, r1, 0x60
/* 80B47968  4B 81 A8 B8 */	b _restgpr_27
/* 80B4796C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B47970  7C 08 03 A6 */	mtlr r0
/* 80B47974  38 21 00 70 */	addi r1, r1, 0x70
/* 80B47978  4E 80 00 20 */	blr 
