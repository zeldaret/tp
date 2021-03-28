lbl_8096E8A4:
/* 8096E8A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8096E8A8  7C 08 02 A6 */	mflr r0
/* 8096E8AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8096E8B0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8096E8B4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8096E8B8  39 61 00 60 */	addi r11, r1, 0x60
/* 8096E8BC  4B 9F 39 18 */	b _savegpr_27
/* 8096E8C0  7C 7E 1B 78 */	mr r30, r3
/* 8096E8C4  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha
/* 8096E8C8  3B E3 28 60 */	addi r31, r3, m__17daNpc_Bou_Param_c@l
/* 8096E8CC  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8096E8D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8096E8D4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8096E8D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8096E8DC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096E8E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8096E8E4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8096E8E8  38 80 00 00 */	li r4, 0
/* 8096E8EC  4B 7D 95 50 */	b calc__19daNpcT_DmgStagger_cFi
/* 8096E8F0  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 8096E8F4  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 8096E8F8  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8096E8FC  7C 03 00 50 */	subf r0, r3, r0
/* 8096E900  7C 00 07 34 */	extsh r0, r0
/* 8096E904  C8 3F 01 10 */	lfd f1, 0x110(r31)
/* 8096E908  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8096E90C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8096E910  3C 00 43 30 */	lis r0, 0x4330
/* 8096E914  90 01 00 40 */	stw r0, 0x40(r1)
/* 8096E918  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8096E91C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8096E920  EF E2 00 32 */	fmuls f31, f2, f0
/* 8096E924  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8096E928  83 63 00 04 */	lwz r27, 4(r3)
/* 8096E92C  7F C3 F3 78 */	mr r3, r30
/* 8096E930  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8096E934  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8096E938  7D 89 03 A6 */	mtctr r12
/* 8096E93C  4E 80 04 21 */	bctrl 
/* 8096E940  7C 7C 1B 78 */	mr r28, r3
/* 8096E944  7F C3 F3 78 */	mr r3, r30
/* 8096E948  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8096E94C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8096E950  7D 89 03 A6 */	mtctr r12
/* 8096E954  4E 80 04 21 */	bctrl 
/* 8096E958  7C 7D 1B 78 */	mr r29, r3
/* 8096E95C  7F C3 F3 78 */	mr r3, r30
/* 8096E960  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8096E964  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8096E968  7D 89 03 A6 */	mtctr r12
/* 8096E96C  4E 80 04 21 */	bctrl 
/* 8096E970  7C 67 1B 78 */	mr r7, r3
/* 8096E974  39 5F 00 00 */	addi r10, r31, 0
/* 8096E978  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 8096E97C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8096E980  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 8096E984  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096E988  7F C4 F3 78 */	mr r4, r30
/* 8096E98C  7F 65 DB 78 */	mr r5, r27
/* 8096E990  38 C1 00 34 */	addi r6, r1, 0x34
/* 8096E994  7F A8 EB 78 */	mr r8, r29
/* 8096E998  7F 89 E3 78 */	mr r9, r28
/* 8096E99C  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 8096E9A0  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 8096E9A4  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 8096E9A8  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 8096E9AC  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 8096E9B0  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 8096E9B4  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 8096E9B8  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 8096E9BC  39 40 00 00 */	li r10, 0
/* 8096E9C0  4B 7D 83 18 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 8096E9C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096E9C8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8096E9CC  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 8096E9D0  FC 60 F8 90 */	fmr f3, f31
/* 8096E9D4  4B 7D 92 64 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 8096E9D8  7F C3 F3 78 */	mr r3, r30
/* 8096E9DC  4B 7D A7 B4 */	b setMtx__8daNpcT_cFv
/* 8096E9E0  7F C3 F3 78 */	mr r3, r30
/* 8096E9E4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8096E9E8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8096E9EC  7D 89 03 A6 */	mtctr r12
/* 8096E9F0  4E 80 04 21 */	bctrl 
/* 8096E9F4  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8096E9F8  80 84 00 04 */	lwz r4, 4(r4)
/* 8096E9FC  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8096EA00  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8096EA04  1C 03 00 30 */	mulli r0, r3, 0x30
/* 8096EA08  7C 64 02 14 */	add r3, r4, r0
/* 8096EA0C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8096EA10  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8096EA14  4B 9D 7A 9C */	b PSMTXCopy
/* 8096EA18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8096EA1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8096EA20  38 81 00 34 */	addi r4, r1, 0x34
/* 8096EA24  38 BE 05 38 */	addi r5, r30, 0x538
/* 8096EA28  4B 9D 83 44 */	b PSMTXMultVec
/* 8096EA2C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8096EA30  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8096EA34  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8096EA38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8096EA3C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8096EA40  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8096EA44  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096EA48  38 81 00 28 */	addi r4, r1, 0x28
/* 8096EA4C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8096EA50  38 A0 00 00 */	li r5, 0
/* 8096EA54  48 00 38 65 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 8096EA58  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8096EA5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8096EA60  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8096EA64  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8096EA68  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8096EA6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8096EA70  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8096EA74  38 81 00 1C */	addi r4, r1, 0x1c
/* 8096EA78  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 8096EA7C  38 C0 00 01 */	li r6, 1
/* 8096EA80  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8096EA84  38 E0 00 00 */	li r7, 0
/* 8096EA88  48 00 37 15 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 8096EA8C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8096EA90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8096EA94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8096EA98  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8096EA9C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8096EAA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8096EAA4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8096EAA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8096EAAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8096EAB0  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 8096EAB4  4B 69 D9 28 */	b mDoMtx_YrotS__FPA4_fs
/* 8096EAB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8096EABC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8096EAC0  38 81 00 34 */	addi r4, r1, 0x34
/* 8096EAC4  7C 85 23 78 */	mr r5, r4
/* 8096EAC8  4B 9D 82 A4 */	b PSMTXMultVec
/* 8096EACC  38 61 00 10 */	addi r3, r1, 0x10
/* 8096EAD0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8096EAD4  38 A1 00 34 */	addi r5, r1, 0x34
/* 8096EAD8  4B 8F 80 0C */	b __pl__4cXyzCFRC3Vec
/* 8096EADC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8096EAE0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8096EAE4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8096EAE8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8096EAEC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8096EAF0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8096EAF4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8096EAF8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8096EAFC  39 61 00 60 */	addi r11, r1, 0x60
/* 8096EB00  4B 9F 37 20 */	b _restgpr_27
/* 8096EB04  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8096EB08  7C 08 03 A6 */	mtlr r0
/* 8096EB0C  38 21 00 70 */	addi r1, r1, 0x70
/* 8096EB10  4E 80 00 20 */	blr 
