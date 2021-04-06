lbl_809D526C:
/* 809D526C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809D5270  7C 08 02 A6 */	mflr r0
/* 809D5274  90 01 00 64 */	stw r0, 0x64(r1)
/* 809D5278  39 61 00 60 */	addi r11, r1, 0x60
/* 809D527C  4B 98 CF 59 */	bl _savegpr_27
/* 809D5280  7C 7E 1B 78 */	mr r30, r3
/* 809D5284  3C 60 80 9D */	lis r3, m__17daNpc_grM_Param_c@ha /* 0x809D6D70@ha */
/* 809D5288  3B E3 6D 70 */	addi r31, r3, m__17daNpc_grM_Param_c@l /* 0x809D6D70@l */
/* 809D528C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 809D5290  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 809D5294  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809D5298  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809D529C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 809D52A0  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809D52A4  38 80 00 00 */	li r4, 0
/* 809D52A8  4B 77 2B 95 */	bl calc__19daNpcT_DmgStagger_cFi
/* 809D52AC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D52B0  83 63 00 04 */	lwz r27, 4(r3)
/* 809D52B4  7F C3 F3 78 */	mr r3, r30
/* 809D52B8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D52BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809D52C0  7D 89 03 A6 */	mtctr r12
/* 809D52C4  4E 80 04 21 */	bctrl 
/* 809D52C8  7C 7C 1B 78 */	mr r28, r3
/* 809D52CC  7F C3 F3 78 */	mr r3, r30
/* 809D52D0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D52D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809D52D8  7D 89 03 A6 */	mtctr r12
/* 809D52DC  4E 80 04 21 */	bctrl 
/* 809D52E0  7C 7D 1B 78 */	mr r29, r3
/* 809D52E4  7F C3 F3 78 */	mr r3, r30
/* 809D52E8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D52EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809D52F0  7D 89 03 A6 */	mtctr r12
/* 809D52F4  4E 80 04 21 */	bctrl 
/* 809D52F8  7C 67 1B 78 */	mr r7, r3
/* 809D52FC  39 5F 00 00 */	addi r10, r31, 0
/* 809D5300  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809D5304  D0 01 00 08 */	stfs f0, 8(r1)
/* 809D5308  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809D530C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809D5310  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D5314  7F C4 F3 78 */	mr r4, r30
/* 809D5318  7F 65 DB 78 */	mr r5, r27
/* 809D531C  38 C1 00 28 */	addi r6, r1, 0x28
/* 809D5320  7F A8 EB 78 */	mr r8, r29
/* 809D5324  7F 89 E3 78 */	mr r9, r28
/* 809D5328  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809D532C  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809D5330  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809D5334  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809D5338  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809D533C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809D5340  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809D5344  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809D5348  39 40 00 00 */	li r10, 0
/* 809D534C  4B 77 19 8D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809D5350  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 809D5354  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 809D5358  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809D535C  7C 03 00 50 */	subf r0, r3, r0
/* 809D5360  7C 00 07 34 */	extsh r0, r0
/* 809D5364  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 809D5368  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D536C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809D5370  3C 00 43 30 */	lis r0, 0x4330
/* 809D5374  90 01 00 38 */	stw r0, 0x38(r1)
/* 809D5378  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809D537C  EC 00 08 28 */	fsubs f0, f0, f1
/* 809D5380  EC 62 00 32 */	fmuls f3, f2, f0
/* 809D5384  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D5388  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 809D538C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 809D5390  4B 77 28 A9 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 809D5394  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D5398  80 63 00 04 */	lwz r3, 4(r3)
/* 809D539C  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D53A0  38 C0 00 00 */	li r6, 0
/* 809D53A4  3C 60 80 9D */	lis r3, ctrlJointCallBack__11daNpc_grM_cFP8J3DJointi@ha /* 0x809D4788@ha */
/* 809D53A8  38 83 47 88 */	addi r4, r3, ctrlJointCallBack__11daNpc_grM_cFP8J3DJointi@l /* 0x809D4788@l */
/* 809D53AC  48 00 00 18 */	b lbl_809D53C4
lbl_809D53B0:
/* 809D53B0  80 65 00 28 */	lwz r3, 0x28(r5)
/* 809D53B4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809D53B8  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D53BC  90 83 00 04 */	stw r4, 4(r3)
/* 809D53C0  38 C6 00 01 */	addi r6, r6, 1
lbl_809D53C4:
/* 809D53C4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809D53C8  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 809D53CC  7C 03 00 40 */	cmplw r3, r0
/* 809D53D0  41 80 FF E0 */	blt lbl_809D53B0
/* 809D53D4  7F C3 F3 78 */	mr r3, r30
/* 809D53D8  4B 77 3D B9 */	bl setMtx__8daNpcT_cFv
/* 809D53DC  7F C3 F3 78 */	mr r3, r30
/* 809D53E0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D53E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809D53E8  7D 89 03 A6 */	mtctr r12
/* 809D53EC  4E 80 04 21 */	bctrl 
/* 809D53F0  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 809D53F4  80 84 00 04 */	lwz r4, 4(r4)
/* 809D53F8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809D53FC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 809D5400  1C 03 00 30 */	mulli r0, r3, 0x30
/* 809D5404  7C 64 02 14 */	add r3, r4, r0
/* 809D5408  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D540C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D5410  4B 97 10 A1 */	bl PSMTXCopy
/* 809D5414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D5418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D541C  38 81 00 28 */	addi r4, r1, 0x28
/* 809D5420  38 BE 05 38 */	addi r5, r30, 0x538
/* 809D5424  4B 97 19 49 */	bl PSMTXMultVec
/* 809D5428  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809D542C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809D5430  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809D5434  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809D5438  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809D543C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809D5440  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D5444  38 81 00 1C */	addi r4, r1, 0x1c
/* 809D5448  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809D544C  38 A0 00 00 */	li r5, 0
/* 809D5450  48 00 15 95 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809D5454  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809D5458  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D545C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809D5460  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809D5464  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809D5468  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809D546C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D5470  38 81 00 10 */	addi r4, r1, 0x10
/* 809D5474  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809D5478  38 C0 00 00 */	li r6, 0
/* 809D547C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809D5480  38 E0 00 00 */	li r7, 0
/* 809D5484  48 00 14 45 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809D5488  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809D548C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 809D5490  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809D5494  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809D5498  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809D549C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 809D54A0  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 809D54A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809D54A8  EC 01 00 2A */	fadds f0, f1, f0
/* 809D54AC  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809D54B0  39 61 00 60 */	addi r11, r1, 0x60
/* 809D54B4  4B 98 CD 6D */	bl _restgpr_27
/* 809D54B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809D54BC  7C 08 03 A6 */	mtlr r0
/* 809D54C0  38 21 00 60 */	addi r1, r1, 0x60
/* 809D54C4  4E 80 00 20 */	blr 
