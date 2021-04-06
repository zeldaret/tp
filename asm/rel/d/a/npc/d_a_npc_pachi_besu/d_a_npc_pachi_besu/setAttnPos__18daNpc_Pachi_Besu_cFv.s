lbl_80A94298:
/* 80A94298  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A9429C  7C 08 02 A6 */	mflr r0
/* 80A942A0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A942A4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A942A8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A942AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A942B0  4B 8C DF 25 */	bl _savegpr_27
/* 80A942B4  7C 7E 1B 78 */	mr r30, r3
/* 80A942B8  3C 60 80 A9 */	lis r3, m__24daNpc_Pachi_Besu_Param_c@ha /* 0x80A96A6C@ha */
/* 80A942BC  3B E3 6A 6C */	addi r31, r3, m__24daNpc_Pachi_Besu_Param_c@l /* 0x80A96A6C@l */
/* 80A942C0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80A942C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A942C8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A942CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A942D0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A942D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A942D8  3B 60 00 00 */	li r27, 0
/* 80A942DC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A942E0  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A942E4  40 82 00 18 */	bne lbl_80A942FC
/* 80A942E8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A942EC  4B 6B 17 39 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80A942F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A942F4  40 82 00 08 */	bne lbl_80A942FC
/* 80A942F8  3B 60 00 01 */	li r27, 1
lbl_80A942FC:
/* 80A942FC  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A94300  7F 64 DB 78 */	mr r4, r27
/* 80A94304  4B 6B 3B 39 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80A94308  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80A9430C  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A94310  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A94314  7C 03 00 50 */	subf r0, r3, r0
/* 80A94318  7C 00 07 34 */	extsh r0, r0
/* 80A9431C  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 80A94320  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A94324  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A94328  3C 00 43 30 */	lis r0, 0x4330
/* 80A9432C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A94330  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A94334  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A94338  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A9433C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A94340  83 63 00 04 */	lwz r27, 4(r3)
/* 80A94344  7F C3 F3 78 */	mr r3, r30
/* 80A94348  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9434C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A94350  7D 89 03 A6 */	mtctr r12
/* 80A94354  4E 80 04 21 */	bctrl 
/* 80A94358  7C 7C 1B 78 */	mr r28, r3
/* 80A9435C  7F C3 F3 78 */	mr r3, r30
/* 80A94360  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A94364  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A94368  7D 89 03 A6 */	mtctr r12
/* 80A9436C  4E 80 04 21 */	bctrl 
/* 80A94370  7C 7D 1B 78 */	mr r29, r3
/* 80A94374  7F C3 F3 78 */	mr r3, r30
/* 80A94378  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9437C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A94380  7D 89 03 A6 */	mtctr r12
/* 80A94384  4E 80 04 21 */	bctrl 
/* 80A94388  7C 67 1B 78 */	mr r7, r3
/* 80A9438C  39 5F 00 00 */	addi r10, r31, 0
/* 80A94390  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A94394  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A94398  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A9439C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A943A0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A943A4  7F C4 F3 78 */	mr r4, r30
/* 80A943A8  7F 65 DB 78 */	mr r5, r27
/* 80A943AC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80A943B0  7F A8 EB 78 */	mr r8, r29
/* 80A943B4  7F 89 E3 78 */	mr r9, r28
/* 80A943B8  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A943BC  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A943C0  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A943C4  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A943C8  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A943CC  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A943D0  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A943D4  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A943D8  39 40 00 00 */	li r10, 0
/* 80A943DC  4B 6B 28 FD */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A943E0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A943E4  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80A943E8  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80A943EC  FC 60 F8 90 */	fmr f3, f31
/* 80A943F0  4B 6B 38 49 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A943F4  7F C3 F3 78 */	mr r3, r30
/* 80A943F8  4B 6B 4D 99 */	bl setMtx__8daNpcT_cFv
/* 80A943FC  7F C3 F3 78 */	mr r3, r30
/* 80A94400  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A94404  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A94408  7D 89 03 A6 */	mtctr r12
/* 80A9440C  4E 80 04 21 */	bctrl 
/* 80A94410  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A94414  80 84 00 04 */	lwz r4, 4(r4)
/* 80A94418  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A9441C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A94420  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A94424  7C 64 02 14 */	add r3, r4, r0
/* 80A94428  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A9442C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A94430  4B 8B 20 81 */	bl PSMTXCopy
/* 80A94434  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A94438  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A9443C  38 81 00 28 */	addi r4, r1, 0x28
/* 80A94440  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A94444  4B 8B 29 29 */	bl PSMTXMultVec
/* 80A94448  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A9444C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A94450  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A94454  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A94458  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A9445C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A94460  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A94464  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A94468  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A9446C  38 A0 00 00 */	li r5, 0
/* 80A94470  48 00 20 4D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A94474  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A94478  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A9447C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A94480  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A94484  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A94488  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A9448C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A94490  38 81 00 10 */	addi r4, r1, 0x10
/* 80A94494  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A94498  38 C0 00 01 */	li r6, 1
/* 80A9449C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A944A0  38 E0 00 00 */	li r7, 0
/* 80A944A4  48 00 1E FD */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A944A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A944AC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A944B0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A944B4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A944B8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A944BC  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A944C0  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80A944C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A944C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A944CC  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A944D0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A944D4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A944D8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A944DC  4B 8C DD 45 */	bl _restgpr_27
/* 80A944E0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A944E4  7C 08 03 A6 */	mtlr r0
/* 80A944E8  38 21 00 70 */	addi r1, r1, 0x70
/* 80A944EC  4E 80 00 20 */	blr 
