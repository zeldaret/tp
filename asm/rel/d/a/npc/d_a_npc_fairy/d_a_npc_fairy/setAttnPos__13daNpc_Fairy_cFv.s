lbl_809B3C64:
/* 809B3C64  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809B3C68  7C 08 02 A6 */	mflr r0
/* 809B3C6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 809B3C70  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809B3C74  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809B3C78  39 61 00 60 */	addi r11, r1, 0x60
/* 809B3C7C  4B 9A E5 59 */	bl _savegpr_27
/* 809B3C80  7C 7E 1B 78 */	mr r30, r3
/* 809B3C84  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B3C88  3B E3 92 E4 */	addi r31, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B3C8C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B3C90  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 809B3C94  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 809B3C98  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809B3C9C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 809B3CA0  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809B3CA4  38 80 00 00 */	li r4, 0
/* 809B3CA8  4B 79 41 95 */	bl calc__19daNpcT_DmgStagger_cFi
/* 809B3CAC  C0 5F 01 4C */	lfs f2, 0x14c(r31)
/* 809B3CB0  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 809B3CB4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809B3CB8  7C 03 00 50 */	subf r0, r3, r0
/* 809B3CBC  7C 00 07 34 */	extsh r0, r0
/* 809B3CC0  C8 3F 01 58 */	lfd f1, 0x158(r31)
/* 809B3CC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809B3CC8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809B3CCC  3C 00 43 30 */	lis r0, 0x4330
/* 809B3CD0  90 01 00 38 */	stw r0, 0x38(r1)
/* 809B3CD4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809B3CD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 809B3CDC  EF E2 00 32 */	fmuls f31, f2, f0
/* 809B3CE0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809B3CE4  83 63 00 04 */	lwz r27, 4(r3)
/* 809B3CE8  7F C3 F3 78 */	mr r3, r30
/* 809B3CEC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809B3CF0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809B3CF4  7D 89 03 A6 */	mtctr r12
/* 809B3CF8  4E 80 04 21 */	bctrl 
/* 809B3CFC  7C 7C 1B 78 */	mr r28, r3
/* 809B3D00  7F C3 F3 78 */	mr r3, r30
/* 809B3D04  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809B3D08  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809B3D0C  7D 89 03 A6 */	mtctr r12
/* 809B3D10  4E 80 04 21 */	bctrl 
/* 809B3D14  7C 7D 1B 78 */	mr r29, r3
/* 809B3D18  7F C3 F3 78 */	mr r3, r30
/* 809B3D1C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809B3D20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809B3D24  7D 89 03 A6 */	mtctr r12
/* 809B3D28  4E 80 04 21 */	bctrl 
/* 809B3D2C  7C 67 1B 78 */	mr r7, r3
/* 809B3D30  39 5F 00 00 */	addi r10, r31, 0
/* 809B3D34  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809B3D38  D0 01 00 08 */	stfs f0, 8(r1)
/* 809B3D3C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 809B3D40  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809B3D44  7F C4 F3 78 */	mr r4, r30
/* 809B3D48  7F 65 DB 78 */	mr r5, r27
/* 809B3D4C  38 C1 00 28 */	addi r6, r1, 0x28
/* 809B3D50  7F A8 EB 78 */	mr r8, r29
/* 809B3D54  7F 89 E3 78 */	mr r9, r28
/* 809B3D58  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809B3D5C  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809B3D60  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809B3D64  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809B3D68  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809B3D6C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809B3D70  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809B3D74  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809B3D78  39 40 00 00 */	li r10, 0
/* 809B3D7C  4B 79 2F 5D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809B3D80  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809B3D84  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 809B3D88  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 809B3D8C  FC 60 F8 90 */	fmr f3, f31
/* 809B3D90  4B 79 3E A9 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 809B3D94  7F C3 F3 78 */	mr r3, r30
/* 809B3D98  4B 79 53 F9 */	bl setMtx__8daNpcT_cFv
/* 809B3D9C  7F C3 F3 78 */	mr r3, r30
/* 809B3DA0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809B3DA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809B3DA8  7D 89 03 A6 */	mtctr r12
/* 809B3DAC  4E 80 04 21 */	bctrl 
/* 809B3DB0  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 809B3DB4  80 84 00 04 */	lwz r4, 4(r4)
/* 809B3DB8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809B3DBC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 809B3DC0  1C 03 00 30 */	mulli r0, r3, 0x30
/* 809B3DC4  7C 64 02 14 */	add r3, r4, r0
/* 809B3DC8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B3DCC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B3DD0  4B 99 26 E1 */	bl PSMTXCopy
/* 809B3DD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B3DD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B3DDC  38 81 00 28 */	addi r4, r1, 0x28
/* 809B3DE0  38 BE 05 38 */	addi r5, r30, 0x538
/* 809B3DE4  4B 99 2F 89 */	bl PSMTXMultVec
/* 809B3DE8  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 809B3DEC  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 809B3DF0  EC 01 00 2A */	fadds f0, f1, f0
/* 809B3DF4  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 809B3DF8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809B3DFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809B3E00  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809B3E04  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809B3E08  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809B3E0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809B3E10  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809B3E14  38 81 00 1C */	addi r4, r1, 0x1c
/* 809B3E18  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809B3E1C  38 A0 00 00 */	li r5, 0
/* 809B3E20  48 00 4D 9D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809B3E24  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809B3E28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B3E2C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809B3E30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B3E34  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809B3E38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809B3E3C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809B3E40  38 81 00 10 */	addi r4, r1, 0x10
/* 809B3E44  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809B3E48  38 C0 00 01 */	li r6, 1
/* 809B3E4C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809B3E50  38 E0 00 00 */	li r7, 0
/* 809B3E54  48 00 4C 4D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809B3E58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809B3E5C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 809B3E60  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809B3E64  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809B3E68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809B3E6C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 809B3E70  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 809B3E74  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809B3E78  EC 01 00 2A */	fadds f0, f1, f0
/* 809B3E7C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809B3E80  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809B3E84  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809B3E88  39 61 00 60 */	addi r11, r1, 0x60
/* 809B3E8C  4B 9A E3 95 */	bl _restgpr_27
/* 809B3E90  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809B3E94  7C 08 03 A6 */	mtlr r0
/* 809B3E98  38 21 00 70 */	addi r1, r1, 0x70
/* 809B3E9C  4E 80 00 20 */	blr 
