lbl_80AE4044:
/* 80AE4044  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80AE4048  7C 08 02 A6 */	mflr r0
/* 80AE404C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80AE4050  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80AE4054  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80AE4058  39 61 00 80 */	addi r11, r1, 0x80
/* 80AE405C  4B 87 E1 79 */	bl _savegpr_27
/* 80AE4060  7C 7E 1B 78 */	mr r30, r3
/* 80AE4064  3C 60 80 AE */	lis r3, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE4068  3B E3 6B C8 */	addi r31, r3, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE406C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80AE4070  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80AE4074  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AE4078  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80AE407C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80AE4080  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80AE4084  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AE4088  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80AE408C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80AE4090  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AE4094  38 80 00 00 */	li r4, 0
/* 80AE4098  4B 66 3D A5 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80AE409C  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80AE40A0  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80AE40A4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AE40A8  7C 03 00 50 */	subf r0, r3, r0
/* 80AE40AC  7C 00 07 34 */	extsh r0, r0
/* 80AE40B0  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80AE40B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AE40B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AE40BC  3C 00 43 30 */	lis r0, 0x4330
/* 80AE40C0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80AE40C4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 80AE40C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AE40CC  EF E2 00 32 */	fmuls f31, f2, f0
/* 80AE40D0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AE40D4  83 63 00 04 */	lwz r27, 4(r3)
/* 80AE40D8  7F C3 F3 78 */	mr r3, r30
/* 80AE40DC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AE40E0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AE40E4  7D 89 03 A6 */	mtctr r12
/* 80AE40E8  4E 80 04 21 */	bctrl 
/* 80AE40EC  7C 7C 1B 78 */	mr r28, r3
/* 80AE40F0  7F C3 F3 78 */	mr r3, r30
/* 80AE40F4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AE40F8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80AE40FC  7D 89 03 A6 */	mtctr r12
/* 80AE4100  4E 80 04 21 */	bctrl 
/* 80AE4104  7C 7D 1B 78 */	mr r29, r3
/* 80AE4108  7F C3 F3 78 */	mr r3, r30
/* 80AE410C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AE4110  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AE4114  7D 89 03 A6 */	mtctr r12
/* 80AE4118  4E 80 04 21 */	bctrl 
/* 80AE411C  7C 67 1B 78 */	mr r7, r3
/* 80AE4120  39 5F 00 00 */	addi r10, r31, 0
/* 80AE4124  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80AE4128  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AE412C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80AE4130  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AE4134  7F C4 F3 78 */	mr r4, r30
/* 80AE4138  7F 65 DB 78 */	mr r5, r27
/* 80AE413C  38 C1 00 50 */	addi r6, r1, 0x50
/* 80AE4140  7F A8 EB 78 */	mr r8, r29
/* 80AE4144  7F 89 E3 78 */	mr r9, r28
/* 80AE4148  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80AE414C  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80AE4150  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80AE4154  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80AE4158  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80AE415C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80AE4160  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80AE4164  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80AE4168  39 41 00 44 */	addi r10, r1, 0x44
/* 80AE416C  4B 66 2B 6D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80AE4170  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AE4174  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AE4178  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80AE417C  FC 60 F8 90 */	fmr f3, f31
/* 80AE4180  4B 66 3A B9 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80AE4184  7F C3 F3 78 */	mr r3, r30
/* 80AE4188  4B 66 50 09 */	bl setMtx__8daNpcT_cFv
/* 80AE418C  7F C3 F3 78 */	mr r3, r30
/* 80AE4190  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AE4194  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AE4198  7D 89 03 A6 */	mtctr r12
/* 80AE419C  4E 80 04 21 */	bctrl 
/* 80AE41A0  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80AE41A4  80 84 00 04 */	lwz r4, 4(r4)
/* 80AE41A8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80AE41AC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80AE41B0  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80AE41B4  7C 64 02 14 */	add r3, r4, r0
/* 80AE41B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE41BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE41C0  4B 86 22 F1 */	bl PSMTXCopy
/* 80AE41C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE41C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE41CC  38 81 00 50 */	addi r4, r1, 0x50
/* 80AE41D0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AE41D4  4B 86 2B 99 */	bl PSMTXMultVec
/* 80AE41D8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AE41DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AE41E0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AE41E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AE41E8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AE41EC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AE41F0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AE41F4  38 81 00 38 */	addi r4, r1, 0x38
/* 80AE41F8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80AE41FC  38 A0 00 00 */	li r5, 0
/* 80AE4200  48 00 1F 59 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80AE4204  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AE4208  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AE420C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AE4210  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AE4214  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AE4218  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AE421C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AE4220  38 81 00 2C */	addi r4, r1, 0x2c
/* 80AE4224  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80AE4228  38 C0 00 01 */	li r6, 1
/* 80AE422C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80AE4230  38 E0 00 00 */	li r7, 0
/* 80AE4234  48 00 1E 09 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80AE4238  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80AE423C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80AE4240  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80AE4244  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80AE4248  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AE424C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80AE4250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE4254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE4258  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80AE425C  4B 52 81 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 80AE4260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE4264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE4268  38 81 00 50 */	addi r4, r1, 0x50
/* 80AE426C  7C 85 23 78 */	mr r5, r4
/* 80AE4270  4B 86 2A FD */	bl PSMTXMultVec
/* 80AE4274  38 61 00 20 */	addi r3, r1, 0x20
/* 80AE4278  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AE427C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80AE4280  4B 78 28 65 */	bl __pl__4cXyzCFRC3Vec
/* 80AE4284  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80AE4288  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AE428C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80AE4290  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AE4294  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80AE4298  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AE429C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80AE42A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AE42A4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80AE42A8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80AE42AC  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80AE42B0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80AE42B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE42B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE42BC  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80AE42C0  4B 52 81 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 80AE42C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE42C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE42CC  38 81 00 44 */	addi r4, r1, 0x44
/* 80AE42D0  7C 85 23 78 */	mr r5, r4
/* 80AE42D4  4B 86 2A 99 */	bl PSMTXMultVec
/* 80AE42D8  38 61 00 14 */	addi r3, r1, 0x14
/* 80AE42DC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AE42E0  38 A1 00 44 */	addi r5, r1, 0x44
/* 80AE42E4  4B 78 28 01 */	bl __pl__4cXyzCFRC3Vec
/* 80AE42E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80AE42EC  D0 1E 0D 6C */	stfs f0, 0xd6c(r30)
/* 80AE42F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AE42F4  D0 1E 0D 70 */	stfs f0, 0xd70(r30)
/* 80AE42F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AE42FC  D0 1E 0D 74 */	stfs f0, 0xd74(r30)
/* 80AE4300  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080268@ha */
/* 80AE4304  38 03 02 68 */	addi r0, r3, 0x0268 /* 0x00080268@l */
/* 80AE4308  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE430C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80AE4310  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80AE4314  80 63 00 00 */	lwz r3, 0(r3)
/* 80AE4318  38 81 00 10 */	addi r4, r1, 0x10
/* 80AE431C  38 BE 0D 6C */	addi r5, r30, 0xd6c
/* 80AE4320  38 C0 00 00 */	li r6, 0
/* 80AE4324  38 E0 00 00 */	li r7, 0
/* 80AE4328  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80AE432C  FC 40 08 90 */	fmr f2, f1
/* 80AE4330  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 80AE4334  FC 80 18 90 */	fmr f4, f3
/* 80AE4338  39 00 00 00 */	li r8, 0
/* 80AE433C  4B 7C 81 D1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80AE4340  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80AE4344  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80AE4348  39 61 00 80 */	addi r11, r1, 0x80
/* 80AE434C  4B 87 DE D5 */	bl _restgpr_27
/* 80AE4350  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80AE4354  7C 08 03 A6 */	mtlr r0
/* 80AE4358  38 21 00 90 */	addi r1, r1, 0x90
/* 80AE435C  4E 80 00 20 */	blr 
