lbl_809BC7D8:
/* 809BC7D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809BC7DC  7C 08 02 A6 */	mflr r0
/* 809BC7E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 809BC7E4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809BC7E8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809BC7EC  39 61 00 60 */	addi r11, r1, 0x60
/* 809BC7F0  4B 9A 59 E4 */	b _savegpr_27
/* 809BC7F4  7C 7E 1B 78 */	mr r30, r3
/* 809BC7F8  3C 60 80 9C */	lis r3, m__17daNpc_Gnd_Param_c@ha
/* 809BC7FC  3B E3 E4 A0 */	addi r31, r3, m__17daNpc_Gnd_Param_c@l
/* 809BC800  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 809BC804  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 809BC808  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 809BC80C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809BC810  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 809BC814  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809BC818  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 809BC81C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809BC820  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809BC824  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809BC828  38 80 00 00 */	li r4, 0
/* 809BC82C  4B 78 B6 10 */	b calc__19daNpcT_DmgStagger_cFi
/* 809BC830  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 809BC834  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 809BC838  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809BC83C  7C 03 00 50 */	subf r0, r3, r0
/* 809BC840  7C 00 07 34 */	extsh r0, r0
/* 809BC844  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 809BC848  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809BC84C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809BC850  3C 00 43 30 */	lis r0, 0x4330
/* 809BC854  90 01 00 40 */	stw r0, 0x40(r1)
/* 809BC858  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 809BC85C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809BC860  EF E2 00 32 */	fmuls f31, f2, f0
/* 809BC864  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809BC868  83 63 00 04 */	lwz r27, 4(r3)
/* 809BC86C  7F C3 F3 78 */	mr r3, r30
/* 809BC870  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809BC874  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809BC878  7D 89 03 A6 */	mtctr r12
/* 809BC87C  4E 80 04 21 */	bctrl 
/* 809BC880  7C 7C 1B 78 */	mr r28, r3
/* 809BC884  7F C3 F3 78 */	mr r3, r30
/* 809BC888  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809BC88C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809BC890  7D 89 03 A6 */	mtctr r12
/* 809BC894  4E 80 04 21 */	bctrl 
/* 809BC898  7C 7D 1B 78 */	mr r29, r3
/* 809BC89C  7F C3 F3 78 */	mr r3, r30
/* 809BC8A0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809BC8A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809BC8A8  7D 89 03 A6 */	mtctr r12
/* 809BC8AC  4E 80 04 21 */	bctrl 
/* 809BC8B0  7C 67 1B 78 */	mr r7, r3
/* 809BC8B4  39 5F 00 00 */	addi r10, r31, 0
/* 809BC8B8  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809BC8BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809BC8C0  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 809BC8C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809BC8C8  7F C4 F3 78 */	mr r4, r30
/* 809BC8CC  7F 65 DB 78 */	mr r5, r27
/* 809BC8D0  38 C1 00 34 */	addi r6, r1, 0x34
/* 809BC8D4  7F A8 EB 78 */	mr r8, r29
/* 809BC8D8  7F 89 E3 78 */	mr r9, r28
/* 809BC8DC  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809BC8E0  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809BC8E4  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809BC8E8  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809BC8EC  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809BC8F0  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809BC8F4  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809BC8F8  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809BC8FC  39 41 00 28 */	addi r10, r1, 0x28
/* 809BC900  4B 78 A3 D8 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809BC904  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809BC908  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 809BC90C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 809BC910  FC 60 F8 90 */	fmr f3, f31
/* 809BC914  4B 78 B3 24 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 809BC918  7F C3 F3 78 */	mr r3, r30
/* 809BC91C  4B 78 C8 74 */	b setMtx__8daNpcT_cFv
/* 809BC920  7F C3 F3 78 */	mr r3, r30
/* 809BC924  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809BC928  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809BC92C  7D 89 03 A6 */	mtctr r12
/* 809BC930  4E 80 04 21 */	bctrl 
/* 809BC934  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 809BC938  80 84 00 04 */	lwz r4, 4(r4)
/* 809BC93C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809BC940  80 84 00 0C */	lwz r4, 0xc(r4)
/* 809BC944  1C 03 00 30 */	mulli r0, r3, 0x30
/* 809BC948  7C 64 02 14 */	add r3, r4, r0
/* 809BC94C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809BC950  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809BC954  4B 98 9B 5C */	b PSMTXCopy
/* 809BC958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809BC95C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809BC960  38 81 00 34 */	addi r4, r1, 0x34
/* 809BC964  38 BE 05 38 */	addi r5, r30, 0x538
/* 809BC968  4B 98 A4 04 */	b PSMTXMultVec
/* 809BC96C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809BC970  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809BC974  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809BC978  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809BC97C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809BC980  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809BC984  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809BC988  38 81 00 1C */	addi r4, r1, 0x1c
/* 809BC98C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 809BC990  38 A0 00 00 */	li r5, 0
/* 809BC994  48 00 15 ED */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809BC998  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809BC99C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809BC9A0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809BC9A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809BC9A8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809BC9AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809BC9B0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809BC9B4  38 81 00 10 */	addi r4, r1, 0x10
/* 809BC9B8  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809BC9BC  38 C0 00 00 */	li r6, 0
/* 809BC9C0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 809BC9C4  38 E0 00 00 */	li r7, 0
/* 809BC9C8  48 00 14 9D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809BC9CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809BC9D0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 809BC9D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809BC9D8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809BC9DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809BC9E0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 809BC9E4  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 809BC9E8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809BC9EC  EC 01 00 2A */	fadds f0, f1, f0
/* 809BC9F0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809BC9F4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809BC9F8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809BC9FC  39 61 00 60 */	addi r11, r1, 0x60
/* 809BCA00  4B 9A 58 20 */	b _restgpr_27
/* 809BCA04  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809BCA08  7C 08 03 A6 */	mtlr r0
/* 809BCA0C  38 21 00 70 */	addi r1, r1, 0x70
/* 809BCA10  4E 80 00 20 */	blr 
