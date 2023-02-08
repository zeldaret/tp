lbl_80B4AEB0:
/* 80B4AEB0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B4AEB4  7C 08 02 A6 */	mflr r0
/* 80B4AEB8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B4AEBC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B4AEC0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B4AEC4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B4AEC8  4B 81 73 0D */	bl _savegpr_27
/* 80B4AECC  7C 7E 1B 78 */	mr r30, r3
/* 80B4AED0  3C 60 80 B5 */	lis r3, m__19daNpc_yamiT_Param_c@ha /* 0x80B4CDA4@ha */
/* 80B4AED4  3B E3 CD A4 */	addi r31, r3, m__19daNpc_yamiT_Param_c@l /* 0x80B4CDA4@l */
/* 80B4AED8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B4AEDC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B4AEE0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B4AEE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B4AEE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B4AEEC  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B4AEF0  38 80 00 00 */	li r4, 0
/* 80B4AEF4  4B 5F CF 49 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B4AEF8  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80B4AEFC  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B4AF00  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B4AF04  7C 03 00 50 */	subf r0, r3, r0
/* 80B4AF08  7C 00 07 34 */	extsh r0, r0
/* 80B4AF0C  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80B4AF10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4AF14  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B4AF18  3C 00 43 30 */	lis r0, 0x4330
/* 80B4AF1C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B4AF20  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B4AF24  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B4AF28  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B4AF2C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B4AF30  83 63 00 04 */	lwz r27, 4(r3)
/* 80B4AF34  7F C3 F3 78 */	mr r3, r30
/* 80B4AF38  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4AF3C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4AF40  7D 89 03 A6 */	mtctr r12
/* 80B4AF44  4E 80 04 21 */	bctrl 
/* 80B4AF48  7C 7C 1B 78 */	mr r28, r3
/* 80B4AF4C  7F C3 F3 78 */	mr r3, r30
/* 80B4AF50  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4AF54  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B4AF58  7D 89 03 A6 */	mtctr r12
/* 80B4AF5C  4E 80 04 21 */	bctrl 
/* 80B4AF60  7C 7D 1B 78 */	mr r29, r3
/* 80B4AF64  7F C3 F3 78 */	mr r3, r30
/* 80B4AF68  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4AF6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B4AF70  7D 89 03 A6 */	mtctr r12
/* 80B4AF74  4E 80 04 21 */	bctrl 
/* 80B4AF78  7C 67 1B 78 */	mr r7, r3
/* 80B4AF7C  39 5F 00 00 */	addi r10, r31, 0
/* 80B4AF80  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B4AF84  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B4AF88  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B4AF8C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4AF90  7F C4 F3 78 */	mr r4, r30
/* 80B4AF94  7F 65 DB 78 */	mr r5, r27
/* 80B4AF98  38 C1 00 28 */	addi r6, r1, 0x28
/* 80B4AF9C  7F A8 EB 78 */	mr r8, r29
/* 80B4AFA0  7F 89 E3 78 */	mr r9, r28
/* 80B4AFA4  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B4AFA8  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B4AFAC  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B4AFB0  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B4AFB4  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B4AFB8  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B4AFBC  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B4AFC0  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B4AFC4  39 40 00 00 */	li r10, 0
/* 80B4AFC8  4B 5F BD 11 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B4AFCC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4AFD0  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80B4AFD4  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80B4AFD8  FC 60 F8 90 */	fmr f3, f31
/* 80B4AFDC  4B 5F CC 5D */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B4AFE0  7F C3 F3 78 */	mr r3, r30
/* 80B4AFE4  4B 5F E1 AD */	bl setMtx__8daNpcT_cFv
/* 80B4AFE8  7F C3 F3 78 */	mr r3, r30
/* 80B4AFEC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B4AFF0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4AFF4  7D 89 03 A6 */	mtctr r12
/* 80B4AFF8  4E 80 04 21 */	bctrl 
/* 80B4AFFC  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B4B000  80 84 00 04 */	lwz r4, 4(r4)
/* 80B4B004  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B4B008  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B4B00C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B4B010  7C 64 02 14 */	add r3, r4, r0
/* 80B4B014  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4B018  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4B01C  4B 7F B4 95 */	bl PSMTXCopy
/* 80B4B020  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B4B024  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B4B028  38 81 00 28 */	addi r4, r1, 0x28
/* 80B4B02C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B4B030  4B 7F BD 3D */	bl PSMTXMultVec
/* 80B4B034  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B4B038  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B4B03C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B4B040  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B4B044  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B4B048  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B4B04C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4B050  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B4B054  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B4B058  38 A0 00 00 */	li r5, 0
/* 80B4B05C  48 00 18 79 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B4B060  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B4B064  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B4B068  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B4B06C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B4B070  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B4B074  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B4B078  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B4B07C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B4B080  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B4B084  38 C0 00 01 */	li r6, 1
/* 80B4B088  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B4B08C  38 E0 00 00 */	li r7, 0
/* 80B4B090  48 00 17 29 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B4B094  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B4B098  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B4B09C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B4B0A0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B4B0A4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B4B0A8  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B4B0AC  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80B4B0B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B4B0B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B4B0B8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B4B0BC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B4B0C0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B4B0C4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B4B0C8  4B 81 71 59 */	bl _restgpr_27
/* 80B4B0CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B4B0D0  7C 08 03 A6 */	mtlr r0
/* 80B4B0D4  38 21 00 70 */	addi r1, r1, 0x70
/* 80B4B0D8  4E 80 00 20 */	blr 
