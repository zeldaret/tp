lbl_80AED7D0:
/* 80AED7D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AED7D4  7C 08 02 A6 */	mflr r0
/* 80AED7D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AED7DC  39 61 00 60 */	addi r11, r1, 0x60
/* 80AED7E0  4B 87 49 F5 */	bl _savegpr_27
/* 80AED7E4  7C 7E 1B 78 */	mr r30, r3
/* 80AED7E8  3C 80 80 AF */	lis r4, m__18daNpc_solA_Param_c@ha /* 0x80AEF100@ha */
/* 80AED7EC  3B E4 F1 00 */	addi r31, r4, m__18daNpc_solA_Param_c@l /* 0x80AEF100@l */
/* 80AED7F0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80AED7F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AED7F8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AED7FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AED800  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AED804  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80AED808  83 64 00 04 */	lwz r27, 4(r4)
/* 80AED80C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AED810  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AED814  7D 89 03 A6 */	mtctr r12
/* 80AED818  4E 80 04 21 */	bctrl 
/* 80AED81C  7C 7C 1B 78 */	mr r28, r3
/* 80AED820  7F C3 F3 78 */	mr r3, r30
/* 80AED824  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AED828  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80AED82C  7D 89 03 A6 */	mtctr r12
/* 80AED830  4E 80 04 21 */	bctrl 
/* 80AED834  7C 7D 1B 78 */	mr r29, r3
/* 80AED838  7F C3 F3 78 */	mr r3, r30
/* 80AED83C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AED840  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AED844  7D 89 03 A6 */	mtctr r12
/* 80AED848  4E 80 04 21 */	bctrl 
/* 80AED84C  7C 67 1B 78 */	mr r7, r3
/* 80AED850  39 5F 00 00 */	addi r10, r31, 0
/* 80AED854  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80AED858  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AED85C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AED860  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AED864  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AED868  7F C4 F3 78 */	mr r4, r30
/* 80AED86C  7F 65 DB 78 */	mr r5, r27
/* 80AED870  38 C1 00 28 */	addi r6, r1, 0x28
/* 80AED874  7F A8 EB 78 */	mr r8, r29
/* 80AED878  7F 89 E3 78 */	mr r9, r28
/* 80AED87C  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80AED880  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80AED884  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80AED888  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80AED88C  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80AED890  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80AED894  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80AED898  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80AED89C  39 40 00 00 */	li r10, 0
/* 80AED8A0  4B 65 94 39 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80AED8A4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80AED8A8  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80AED8AC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AED8B0  7C 03 00 50 */	subf r0, r3, r0
/* 80AED8B4  7C 00 07 34 */	extsh r0, r0
/* 80AED8B8  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80AED8BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AED8C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80AED8C4  3C 00 43 30 */	lis r0, 0x4330
/* 80AED8C8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80AED8CC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80AED8D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AED8D4  EC 62 00 32 */	fmuls f3, f2, f0
/* 80AED8D8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AED8DC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80AED8E0  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80AED8E4  4B 65 A3 55 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80AED8E8  7F C3 F3 78 */	mr r3, r30
/* 80AED8EC  4B 65 B8 A5 */	bl setMtx__8daNpcT_cFv
/* 80AED8F0  7F C3 F3 78 */	mr r3, r30
/* 80AED8F4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AED8F8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AED8FC  7D 89 03 A6 */	mtctr r12
/* 80AED900  4E 80 04 21 */	bctrl 
/* 80AED904  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80AED908  80 84 00 04 */	lwz r4, 4(r4)
/* 80AED90C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80AED910  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80AED914  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80AED918  7C 64 02 14 */	add r3, r4, r0
/* 80AED91C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AED920  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AED924  4B 85 8B 8D */	bl PSMTXCopy
/* 80AED928  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AED92C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AED930  38 81 00 28 */	addi r4, r1, 0x28
/* 80AED934  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AED938  4B 85 94 35 */	bl PSMTXMultVec
/* 80AED93C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AED940  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AED944  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AED948  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AED94C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AED950  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AED954  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AED958  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AED95C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80AED960  38 A0 00 00 */	li r5, 0
/* 80AED964  48 00 12 7D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80AED968  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AED96C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AED970  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AED974  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AED978  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AED97C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AED980  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AED984  38 81 00 10 */	addi r4, r1, 0x10
/* 80AED988  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80AED98C  38 C0 00 00 */	li r6, 0
/* 80AED990  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80AED994  38 E0 00 00 */	li r7, 0
/* 80AED998  48 00 11 2D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80AED99C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AED9A0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AED9A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AED9A8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AED9AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AED9B0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AED9B4  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80AED9B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AED9BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80AED9C0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AED9C4  39 61 00 60 */	addi r11, r1, 0x60
/* 80AED9C8  4B 87 48 59 */	bl _restgpr_27
/* 80AED9CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AED9D0  7C 08 03 A6 */	mtlr r0
/* 80AED9D4  38 21 00 60 */	addi r1, r1, 0x60
/* 80AED9D8  4E 80 00 20 */	blr 
