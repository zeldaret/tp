lbl_809D8410:
/* 809D8410  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809D8414  7C 08 02 A6 */	mflr r0
/* 809D8418  90 01 00 64 */	stw r0, 0x64(r1)
/* 809D841C  39 61 00 60 */	addi r11, r1, 0x60
/* 809D8420  4B 98 9D B5 */	bl _savegpr_27
/* 809D8424  7C 7E 1B 78 */	mr r30, r3
/* 809D8428  3C 60 80 9E */	lis r3, m__18daNpc_grMC_Param_c@ha /* 0x809D9D70@ha */
/* 809D842C  3B E3 9D 70 */	addi r31, r3, m__18daNpc_grMC_Param_c@l /* 0x809D9D70@l */
/* 809D8430  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 809D8434  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809D8438  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 809D843C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809D8440  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809D8444  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809D8448  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 809D844C  38 80 00 00 */	li r4, 0
/* 809D8450  4B 76 F9 ED */	bl calc__19daNpcT_DmgStagger_cFi
/* 809D8454  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D8458  83 63 00 04 */	lwz r27, 4(r3)
/* 809D845C  7F C3 F3 78 */	mr r3, r30
/* 809D8460  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D8464  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809D8468  7D 89 03 A6 */	mtctr r12
/* 809D846C  4E 80 04 21 */	bctrl 
/* 809D8470  7C 7C 1B 78 */	mr r28, r3
/* 809D8474  7F C3 F3 78 */	mr r3, r30
/* 809D8478  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D847C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809D8480  7D 89 03 A6 */	mtctr r12
/* 809D8484  4E 80 04 21 */	bctrl 
/* 809D8488  7C 7D 1B 78 */	mr r29, r3
/* 809D848C  7F C3 F3 78 */	mr r3, r30
/* 809D8490  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D8494  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809D8498  7D 89 03 A6 */	mtctr r12
/* 809D849C  4E 80 04 21 */	bctrl 
/* 809D84A0  7C 67 1B 78 */	mr r7, r3
/* 809D84A4  39 5F 00 00 */	addi r10, r31, 0
/* 809D84A8  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809D84AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 809D84B0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809D84B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809D84B8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D84BC  7F C4 F3 78 */	mr r4, r30
/* 809D84C0  7F 65 DB 78 */	mr r5, r27
/* 809D84C4  38 C1 00 28 */	addi r6, r1, 0x28
/* 809D84C8  7F A8 EB 78 */	mr r8, r29
/* 809D84CC  7F 89 E3 78 */	mr r9, r28
/* 809D84D0  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809D84D4  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809D84D8  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809D84DC  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809D84E0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809D84E4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809D84E8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809D84EC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809D84F0  39 40 00 00 */	li r10, 0
/* 809D84F4  4B 76 E7 E5 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809D84F8  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 809D84FC  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 809D8500  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809D8504  7C 03 00 50 */	subf r0, r3, r0
/* 809D8508  7C 00 07 34 */	extsh r0, r0
/* 809D850C  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 809D8510  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D8514  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809D8518  3C 00 43 30 */	lis r0, 0x4330
/* 809D851C  90 01 00 38 */	stw r0, 0x38(r1)
/* 809D8520  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809D8524  EC 00 08 28 */	fsubs f0, f0, f1
/* 809D8528  EC 62 00 32 */	fmuls f3, f2, f0
/* 809D852C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D8530  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 809D8534  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 809D8538  4B 76 F7 01 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 809D853C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D8540  80 63 00 04 */	lwz r3, 4(r3)
/* 809D8544  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D8548  38 C0 00 00 */	li r6, 0
/* 809D854C  3C 60 80 9D */	lis r3, ctrlJointCallBack__12daNpc_grMC_cFP8J3DJointi@ha /* 0x809D7B38@ha */
/* 809D8550  38 83 7B 38 */	addi r4, r3, ctrlJointCallBack__12daNpc_grMC_cFP8J3DJointi@l /* 0x809D7B38@l */
/* 809D8554  48 00 00 18 */	b lbl_809D856C
lbl_809D8558:
/* 809D8558  80 65 00 28 */	lwz r3, 0x28(r5)
/* 809D855C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809D8560  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D8564  90 83 00 04 */	stw r4, 4(r3)
/* 809D8568  38 C6 00 01 */	addi r6, r6, 1
lbl_809D856C:
/* 809D856C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809D8570  A0 05 00 2C */	lhz r0, 0x2c(r5)
/* 809D8574  7C 03 00 40 */	cmplw r3, r0
/* 809D8578  41 80 FF E0 */	blt lbl_809D8558
/* 809D857C  7F C3 F3 78 */	mr r3, r30
/* 809D8580  4B 77 0C 11 */	bl setMtx__8daNpcT_cFv
/* 809D8584  7F C3 F3 78 */	mr r3, r30
/* 809D8588  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D858C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809D8590  7D 89 03 A6 */	mtctr r12
/* 809D8594  4E 80 04 21 */	bctrl 
/* 809D8598  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 809D859C  80 84 00 04 */	lwz r4, 4(r4)
/* 809D85A0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809D85A4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 809D85A8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 809D85AC  7C 64 02 14 */	add r3, r4, r0
/* 809D85B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D85B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D85B8  4B 96 DE F9 */	bl PSMTXCopy
/* 809D85BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D85C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D85C4  38 81 00 28 */	addi r4, r1, 0x28
/* 809D85C8  38 BE 05 38 */	addi r5, r30, 0x538
/* 809D85CC  4B 96 E7 A1 */	bl PSMTXMultVec
/* 809D85D0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809D85D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809D85D8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809D85DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809D85E0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809D85E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809D85E8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D85EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 809D85F0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809D85F4  38 A0 00 00 */	li r5, 0
/* 809D85F8  48 00 14 19 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809D85FC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 809D8600  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D8604  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 809D8608  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809D860C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 809D8610  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809D8614  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D8618  38 81 00 10 */	addi r4, r1, 0x10
/* 809D861C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809D8620  38 C0 00 00 */	li r6, 0
/* 809D8624  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809D8628  38 E0 00 00 */	li r7, 0
/* 809D862C  48 00 12 C9 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809D8630  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809D8634  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 809D8638  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809D863C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809D8640  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809D8644  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 809D8648  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 809D864C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809D8650  EC 01 00 2A */	fadds f0, f1, f0
/* 809D8654  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809D8658  39 61 00 60 */	addi r11, r1, 0x60
/* 809D865C  4B 98 9B C5 */	bl _restgpr_27
/* 809D8660  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809D8664  7C 08 03 A6 */	mtlr r0
/* 809D8668  38 21 00 60 */	addi r1, r1, 0x60
/* 809D866C  4E 80 00 20 */	blr 
