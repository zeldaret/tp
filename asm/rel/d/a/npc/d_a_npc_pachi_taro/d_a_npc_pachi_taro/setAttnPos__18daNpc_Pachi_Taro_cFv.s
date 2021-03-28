lbl_80A9D8B8:
/* 80A9D8B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A9D8BC  7C 08 02 A6 */	mflr r0
/* 80A9D8C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A9D8C4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A9D8C8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A9D8CC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A9D8D0  4B 8C 49 04 */	b _savegpr_27
/* 80A9D8D4  7C 7E 1B 78 */	mr r30, r3
/* 80A9D8D8  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Taro_Param_c@ha
/* 80A9D8DC  3B E3 16 04 */	addi r31, r3, m__24daNpc_Pachi_Taro_Param_c@l
/* 80A9D8E0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80A9D8E4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A9D8E8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A9D8EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A9D8F0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A9D8F4  3B 60 00 00 */	li r27, 0
/* 80A9D8F8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A9D8FC  2C 00 00 21 */	cmpwi r0, 0x21
/* 80A9D900  40 82 00 18 */	bne lbl_80A9D918
/* 80A9D904  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A9D908  4B 6A 81 1C */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A9D90C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D910  40 82 00 08 */	bne lbl_80A9D918
/* 80A9D914  3B 60 00 01 */	li r27, 1
lbl_80A9D918:
/* 80A9D918  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A9D91C  7F 64 DB 78 */	mr r4, r27
/* 80A9D920  4B 6A A5 1C */	b calc__19daNpcT_DmgStagger_cFi
/* 80A9D924  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 80A9D928  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A9D92C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A9D930  7C 03 00 50 */	subf r0, r3, r0
/* 80A9D934  7C 00 07 34 */	extsh r0, r0
/* 80A9D938  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 80A9D93C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A9D940  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A9D944  3C 00 43 30 */	lis r0, 0x4330
/* 80A9D948  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A9D94C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A9D950  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A9D954  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A9D958  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A9D95C  83 63 00 04 */	lwz r27, 4(r3)
/* 80A9D960  7F C3 F3 78 */	mr r3, r30
/* 80A9D964  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9D968  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A9D96C  7D 89 03 A6 */	mtctr r12
/* 80A9D970  4E 80 04 21 */	bctrl 
/* 80A9D974  7C 7C 1B 78 */	mr r28, r3
/* 80A9D978  7F C3 F3 78 */	mr r3, r30
/* 80A9D97C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9D980  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A9D984  7D 89 03 A6 */	mtctr r12
/* 80A9D988  4E 80 04 21 */	bctrl 
/* 80A9D98C  7C 7D 1B 78 */	mr r29, r3
/* 80A9D990  7F C3 F3 78 */	mr r3, r30
/* 80A9D994  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9D998  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A9D99C  7D 89 03 A6 */	mtctr r12
/* 80A9D9A0  4E 80 04 21 */	bctrl 
/* 80A9D9A4  7C 67 1B 78 */	mr r7, r3
/* 80A9D9A8  39 5F 00 00 */	addi r10, r31, 0
/* 80A9D9AC  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A9D9B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A9D9B4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A9D9B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A9D9BC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9D9C0  7F C4 F3 78 */	mr r4, r30
/* 80A9D9C4  7F 65 DB 78 */	mr r5, r27
/* 80A9D9C8  38 C1 00 28 */	addi r6, r1, 0x28
/* 80A9D9CC  7F A8 EB 78 */	mr r8, r29
/* 80A9D9D0  7F 89 E3 78 */	mr r9, r28
/* 80A9D9D4  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A9D9D8  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A9D9DC  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A9D9E0  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A9D9E4  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A9D9E8  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A9D9EC  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A9D9F0  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A9D9F4  39 40 00 00 */	li r10, 0
/* 80A9D9F8  4B 6A 92 E0 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A9D9FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9DA00  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80A9DA04  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80A9DA08  FC 60 F8 90 */	fmr f3, f31
/* 80A9DA0C  4B 6A A2 2C */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A9DA10  7F C3 F3 78 */	mr r3, r30
/* 80A9DA14  4B 6A B7 7C */	b setMtx__8daNpcT_cFv
/* 80A9DA18  7F C3 F3 78 */	mr r3, r30
/* 80A9DA1C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9DA20  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A9DA24  7D 89 03 A6 */	mtctr r12
/* 80A9DA28  4E 80 04 21 */	bctrl 
/* 80A9DA2C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A9DA30  80 84 00 04 */	lwz r4, 4(r4)
/* 80A9DA34  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A9DA38  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A9DA3C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A9DA40  7C 64 02 14 */	add r3, r4, r0
/* 80A9DA44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A9DA48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A9DA4C  4B 8A 8A 64 */	b PSMTXCopy
/* 80A9DA50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A9DA54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9DA58  38 81 00 28 */	addi r4, r1, 0x28
/* 80A9DA5C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A9DA60  4B 8A 93 0C */	b PSMTXMultVec
/* 80A9DA64  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A9DA68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A9DA6C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A9DA70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A9DA74  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A9DA78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A9DA7C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9DA80  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A9DA84  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80A9DA88  38 A0 00 00 */	li r5, 0
/* 80A9DA8C  48 00 35 D1 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A9DA90  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A9DA94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A9DA98  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A9DA9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A9DAA0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A9DAA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A9DAA8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9DAAC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A9DAB0  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A9DAB4  38 C0 00 01 */	li r6, 1
/* 80A9DAB8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80A9DABC  38 E0 00 00 */	li r7, 0
/* 80A9DAC0  48 00 34 81 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A9DAC4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A9DAC8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A9DACC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A9DAD0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A9DAD4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A9DAD8  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A9DADC  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80A9DAE0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A9DAE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A9DAE8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A9DAEC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A9DAF0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A9DAF4  39 61 00 60 */	addi r11, r1, 0x60
/* 80A9DAF8  4B 8C 47 28 */	b _restgpr_27
/* 80A9DAFC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A9DB00  7C 08 03 A6 */	mtlr r0
/* 80A9DB04  38 21 00 70 */	addi r1, r1, 0x70
/* 80A9DB08  4E 80 00 20 */	blr 
