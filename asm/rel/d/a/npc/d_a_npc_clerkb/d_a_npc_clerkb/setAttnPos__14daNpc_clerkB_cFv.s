lbl_809977C4:
/* 809977C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809977C8  7C 08 02 A6 */	mflr r0
/* 809977CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 809977D0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809977D4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809977D8  39 61 00 60 */	addi r11, r1, 0x60
/* 809977DC  4B 9C A9 F9 */	bl _savegpr_27
/* 809977E0  7C 7E 1B 78 */	mr r30, r3
/* 809977E4  3C 60 80 9A */	lis r3, m__20daNpc_clerkB_Param_c@ha /* 0x80999978@ha */
/* 809977E8  3B E3 99 78 */	addi r31, r3, m__20daNpc_clerkB_Param_c@l /* 0x80999978@l */
/* 809977EC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809977F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809977F4  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 809977F8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 809977FC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80997800  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80997804  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80997808  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8099780C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80997810  A8 7E 10 FA */	lha r3, 0x10fa(r30)
/* 80997814  38 03 04 44 */	addi r0, r3, 0x444
/* 80997818  B0 1E 10 FA */	sth r0, 0x10fa(r30)
/* 8099781C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80997820  38 80 00 00 */	li r4, 0
/* 80997824  4B 7B 06 19 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80997828  38 7E 0F 7C */	addi r3, r30, 0xf7c
/* 8099782C  4B 67 5B FD */	bl play__14mDoExt_baseAnmFv
/* 80997830  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80997834  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80997838  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8099783C  7C 03 00 50 */	subf r0, r3, r0
/* 80997840  7C 00 07 34 */	extsh r0, r0
/* 80997844  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80997848  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099784C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80997850  3C 00 43 30 */	lis r0, 0x4330
/* 80997854  90 01 00 40 */	stw r0, 0x40(r1)
/* 80997858  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8099785C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80997860  EF E2 00 32 */	fmuls f31, f2, f0
/* 80997864  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80997868  83 63 00 04 */	lwz r27, 4(r3)
/* 8099786C  7F C3 F3 78 */	mr r3, r30
/* 80997870  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80997874  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80997878  7D 89 03 A6 */	mtctr r12
/* 8099787C  4E 80 04 21 */	bctrl 
/* 80997880  7C 7C 1B 78 */	mr r28, r3
/* 80997884  7F C3 F3 78 */	mr r3, r30
/* 80997888  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8099788C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80997890  7D 89 03 A6 */	mtctr r12
/* 80997894  4E 80 04 21 */	bctrl 
/* 80997898  7C 7D 1B 78 */	mr r29, r3
/* 8099789C  7F C3 F3 78 */	mr r3, r30
/* 809978A0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809978A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809978A8  7D 89 03 A6 */	mtctr r12
/* 809978AC  4E 80 04 21 */	bctrl 
/* 809978B0  7C 67 1B 78 */	mr r7, r3
/* 809978B4  39 5F 00 00 */	addi r10, r31, 0
/* 809978B8  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809978BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809978C0  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 809978C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809978C8  7F C4 F3 78 */	mr r4, r30
/* 809978CC  7F 65 DB 78 */	mr r5, r27
/* 809978D0  38 C1 00 34 */	addi r6, r1, 0x34
/* 809978D4  7F A8 EB 78 */	mr r8, r29
/* 809978D8  7F 89 E3 78 */	mr r9, r28
/* 809978DC  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809978E0  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809978E4  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809978E8  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809978EC  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809978F0  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809978F4  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809978F8  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809978FC  39 41 00 28 */	addi r10, r1, 0x28
/* 80997900  4B 7A F3 D9 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80997904  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80997908  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8099790C  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80997910  FC 60 F8 90 */	fmr f3, f31
/* 80997914  4B 7B 03 25 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80997918  7F C3 F3 78 */	mr r3, r30
/* 8099791C  4B 7B 18 75 */	bl setMtx__8daNpcT_cFv
/* 80997920  7F C3 F3 78 */	mr r3, r30
/* 80997924  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80997928  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8099792C  7D 89 03 A6 */	mtctr r12
/* 80997930  4E 80 04 21 */	bctrl 
/* 80997934  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80997938  80 84 00 04 */	lwz r4, 4(r4)
/* 8099793C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80997940  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80997944  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80997948  7C 64 02 14 */	add r3, r4, r0
/* 8099794C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80997950  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80997954  4B 9A EB 5D */	bl PSMTXCopy
/* 80997958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8099795C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80997960  38 81 00 34 */	addi r4, r1, 0x34
/* 80997964  38 BE 05 38 */	addi r5, r30, 0x538
/* 80997968  4B 9A F4 05 */	bl PSMTXMultVec
/* 8099796C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80997970  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80997974  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80997978  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8099797C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80997980  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80997984  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80997988  38 81 00 1C */	addi r4, r1, 0x1c
/* 8099798C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80997990  38 A0 00 00 */	li r5, 0
/* 80997994  48 00 19 89 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80997998  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8099799C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809979A0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809979A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809979A8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809979AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809979B0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809979B4  38 81 00 10 */	addi r4, r1, 0x10
/* 809979B8  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809979BC  38 C0 00 01 */	li r6, 1
/* 809979C0  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 809979C4  38 E0 00 00 */	li r7, 0
/* 809979C8  48 00 18 39 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809979CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809979D0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 809979D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809979D8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809979DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809979E0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 809979E4  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 809979E8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809979EC  EC 01 00 2A */	fadds f0, f1, f0
/* 809979F0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809979F4  7F C3 F3 78 */	mr r3, r30
/* 809979F8  48 00 03 9D */	bl setSe__14daNpc_clerkB_cFv
/* 809979FC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80997A00  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80997A04  39 61 00 60 */	addi r11, r1, 0x60
/* 80997A08  4B 9C A8 19 */	bl _restgpr_27
/* 80997A0C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80997A10  7C 08 03 A6 */	mtlr r0
/* 80997A14  38 21 00 70 */	addi r1, r1, 0x70
/* 80997A18  4E 80 00 20 */	blr 
