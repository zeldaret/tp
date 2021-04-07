lbl_80D60560:
/* 80D60560  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D60564  7C 08 02 A6 */	mflr r0
/* 80D60568  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D6056C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D60570  4B 60 1C 69 */	bl _savegpr_28
/* 80D60574  7C 7D 1B 78 */	mr r29, r3
/* 80D60578  3C 60 80 D6 */	lis r3, lit_3650@ha /* 0x80D607B4@ha */
/* 80D6057C  3B E3 07 B4 */	addi r31, r3, lit_3650@l /* 0x80D607B4@l */
/* 80D60580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D60584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D60588  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80D6058C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D60590  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D60594  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D60598  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D6059C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D605A0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D605A4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D605A8  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80D605AC  7C 65 1B 78 */	mr r5, r3
/* 80D605B0  4B 5E 6B 05 */	bl PSVECSubtract
/* 80D605B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D605B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D605BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80D605C0  7C 00 00 D0 */	neg r0, r0
/* 80D605C4  7C 04 07 34 */	extsh r4, r0
/* 80D605C8  4B 2A BE 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D605CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D605D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D605D4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D605D8  7C 85 23 78 */	mr r5, r4
/* 80D605DC  4B 5E 67 91 */	bl PSMTXMultVec
/* 80D605E0  C0 1D 05 6C */	lfs f0, 0x56c(r29)
/* 80D605E4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80D605E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D605EC  40 80 01 34 */	bge lbl_80D60720
/* 80D605F0  C0 1D 05 74 */	lfs f0, 0x574(r29)
/* 80D605F4  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80D605F8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D605FC  40 80 01 24 */	bge lbl_80D60720
/* 80D60600  C0 1D 05 84 */	lfs f0, 0x584(r29)
/* 80D60604  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D60608  40 81 01 18 */	ble lbl_80D60720
/* 80D6060C  C0 1D 05 8C */	lfs f0, 0x58c(r29)
/* 80D60610  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D60614  40 81 01 0C */	ble lbl_80D60720
/* 80D60618  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80D6061C  38 63 0D 64 */	addi r3, r3, struct_80450D64+0x0@l /* 0x80450D64@l */
/* 80D60620  88 63 00 00 */	lbz r3, 0(r3)
/* 80D60624  7C 63 07 74 */	extsb r3, r3
/* 80D60628  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80D6062C  7C 00 07 74 */	extsb r0, r0
/* 80D60630  7C 03 00 00 */	cmpw r3, r0
/* 80D60634  41 82 00 EC */	beq lbl_80D60720
/* 80D60638  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D6063C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D60640  7C 03 00 00 */	cmpw r3, r0
/* 80D60644  40 82 00 20 */	bne lbl_80D60664
/* 80D60648  AB 9D 04 B6 */	lha r28, 0x4b6(r29)
/* 80D6064C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D60650  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D60654  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D60658  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D6065C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D60660  48 00 00 28 */	b lbl_80D60688
lbl_80D60664:
/* 80D60664  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 80D60668  3C 63 00 01 */	addis r3, r3, 1
/* 80D6066C  38 03 80 00 */	addi r0, r3, -32768
/* 80D60670  7C 1C 07 34 */	extsh r28, r0
/* 80D60674  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D60678  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D6067C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D60680  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D60684  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80D60688:
/* 80D60688  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80D6068C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80D60690  EC 01 00 2A */	fadds f0, f1, f0
/* 80D60694  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D60698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D6069C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D606A0  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80D606A4  4B 2A BD 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 80D606A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D606AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D606B0  38 81 00 20 */	addi r4, r1, 0x20
/* 80D606B4  7C 85 23 78 */	mr r5, r4
/* 80D606B8  4B 5E 66 B5 */	bl PSMTXMultVec
/* 80D606BC  38 61 00 08 */	addi r3, r1, 8
/* 80D606C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D606C4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80D606C8  4B 50 64 1D */	bl __pl__4cXyzCFRC3Vec
/* 80D606CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D606D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D606D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D606D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D606DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D606E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D606E4  38 61 00 14 */	addi r3, r1, 0x14
/* 80D606E8  4B 2B D5 D5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80D606EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D606F0  41 82 00 10 */	beq lbl_80D60700
/* 80D606F4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80D606F8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80D606FC  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80D60700:
/* 80D60700  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D60704  7C 06 07 74 */	extsb r6, r0
/* 80D60708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D6070C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D60710  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 80D60714  38 81 00 14 */	addi r4, r1, 0x14
/* 80D60718  7F 85 E3 78 */	mr r5, r28
/* 80D6071C  4B 2D 48 65 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
lbl_80D60720:
/* 80D60720  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D60724  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D60728  38 60 00 01 */	li r3, 1
/* 80D6072C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D60730  4B 60 1A F5 */	bl _restgpr_28
/* 80D60734  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D60738  7C 08 03 A6 */	mtlr r0
/* 80D6073C  38 21 00 50 */	addi r1, r1, 0x50
/* 80D60740  4E 80 00 20 */	blr 
