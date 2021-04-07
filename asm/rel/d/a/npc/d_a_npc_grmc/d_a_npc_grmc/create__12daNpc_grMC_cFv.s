lbl_809D7534:
/* 809D7534  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D7538  7C 08 02 A6 */	mflr r0
/* 809D753C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D7540  39 61 00 30 */	addi r11, r1, 0x30
/* 809D7544  4B 98 AC 99 */	bl _savegpr_29
/* 809D7548  7C 7D 1B 78 */	mr r29, r3
/* 809D754C  3C 80 80 9E */	lis r4, m__18daNpc_grMC_Param_c@ha /* 0x809D9D70@ha */
/* 809D7550  3B E4 9D 70 */	addi r31, r4, m__18daNpc_grMC_Param_c@l /* 0x809D9D70@l */
/* 809D7554  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha /* 0x809D9E8C@ha */
/* 809D7558  3B C4 9E 8C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x809D9E8C@l */
/* 809D755C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809D7560  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809D7564  40 82 00 40 */	bne lbl_809D75A4
/* 809D7568  28 1D 00 00 */	cmplwi r29, 0
/* 809D756C  41 82 00 2C */	beq lbl_809D7598
/* 809D7570  38 1E 00 38 */	addi r0, r30, 0x38
/* 809D7574  90 01 00 08 */	stw r0, 8(r1)
/* 809D7578  38 9E 00 4C */	addi r4, r30, 0x4c
/* 809D757C  38 BE 01 48 */	addi r5, r30, 0x148
/* 809D7580  38 DE 02 44 */	addi r6, r30, 0x244
/* 809D7584  38 E0 00 04 */	li r7, 4
/* 809D7588  39 1E 03 24 */	addi r8, r30, 0x324
/* 809D758C  39 20 00 04 */	li r9, 4
/* 809D7590  39 5E 00 28 */	addi r10, r30, 0x28
/* 809D7594  48 00 18 C9 */	bl __ct__12daNpc_grMC_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_809D7598:
/* 809D7598  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809D759C  60 00 00 08 */	ori r0, r0, 8
/* 809D75A0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_809D75A4:
/* 809D75A4  7F A3 EB 78 */	mr r3, r29
/* 809D75A8  48 00 05 E9 */	bl getType__12daNpc_grMC_cFv
/* 809D75AC  98 7D 10 BC */	stb r3, 0x10bc(r29)
/* 809D75B0  7F A3 EB 78 */	mr r3, r29
/* 809D75B4  48 00 05 E5 */	bl getFlowNodeNo__12daNpc_grMC_cFv
/* 809D75B8  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 809D75BC  38 00 00 00 */	li r0, 0
/* 809D75C0  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 809D75C4  7F A3 EB 78 */	mr r3, r29
/* 809D75C8  88 1D 10 BC */	lbz r0, 0x10bc(r29)
/* 809D75CC  54 00 10 3A */	slwi r0, r0, 2
/* 809D75D0  38 9E 00 48 */	addi r4, r30, 0x48
/* 809D75D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D75D8  38 BE 00 38 */	addi r5, r30, 0x38
/* 809D75DC  4B 77 0E 1D */	bl loadRes__8daNpcT_cFPCScPPCc
/* 809D75E0  7C 7E 1B 78 */	mr r30, r3
/* 809D75E4  2C 1E 00 04 */	cmpwi r30, 4
/* 809D75E8  40 82 01 B8 */	bne lbl_809D77A0
/* 809D75EC  7F A3 EB 78 */	mr r3, r29
/* 809D75F0  3C 80 80 9D */	lis r4, createHeapCallBack__12daNpc_grMC_cFP10fopAc_ac_c@ha /* 0x809D7B18@ha */
/* 809D75F4  38 84 7B 18 */	addi r4, r4, createHeapCallBack__12daNpc_grMC_cFP10fopAc_ac_c@l /* 0x809D7B18@l */
/* 809D75F8  38 A0 35 D0 */	li r5, 0x35d0
/* 809D75FC  4B 64 2E B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809D7600  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D7604  40 82 00 0C */	bne lbl_809D7610
/* 809D7608  38 60 00 05 */	li r3, 5
/* 809D760C  48 00 01 98 */	b lbl_809D77A4
lbl_809D7610:
/* 809D7610  7F A3 EB 78 */	mr r3, r29
/* 809D7614  48 00 05 AD */	bl isDelete__12daNpc_grMC_cFv
/* 809D7618  2C 03 00 00 */	cmpwi r3, 0
/* 809D761C  41 82 00 0C */	beq lbl_809D7628
/* 809D7620  38 60 00 05 */	li r3, 5
/* 809D7624  48 00 01 80 */	b lbl_809D77A4
lbl_809D7628:
/* 809D7628  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809D762C  80 63 00 04 */	lwz r3, 4(r3)
/* 809D7630  38 03 00 24 */	addi r0, r3, 0x24
/* 809D7634  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809D7638  7F A3 EB 78 */	mr r3, r29
/* 809D763C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 809D7640  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 809D7644  FC 60 08 90 */	fmr f3, f1
/* 809D7648  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 809D764C  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 809D7650  FC C0 20 90 */	fmr f6, f4
/* 809D7654  4B 64 2E F5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809D7658  38 7D 05 80 */	addi r3, r29, 0x580
/* 809D765C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809D7660  38 BD 05 38 */	addi r5, r29, 0x538
/* 809D7664  38 C0 00 03 */	li r6, 3
/* 809D7668  38 E0 00 01 */	li r7, 1
/* 809D766C  4B 8E 8E C5 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809D7670  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809D7674  90 01 00 08 */	stw r0, 8(r1)
/* 809D7678  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809D767C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809D7680  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809D7684  7F A6 EB 78 */	mr r6, r29
/* 809D7688  38 E0 00 01 */	li r7, 1
/* 809D768C  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 809D7690  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809D7694  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809D7698  4B 69 EB B1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809D769C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809D76A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D76A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D76A8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809D76AC  4B 69 F4 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809D76B0  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 809D76B4  90 1D 09 30 */	stw r0, 0x930(r29)
/* 809D76B8  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 809D76BC  90 1D 09 34 */	stw r0, 0x934(r29)
/* 809D76C0  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 809D76C4  90 1D 09 38 */	stw r0, 0x938(r29)
/* 809D76C8  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 809D76CC  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 809D76D0  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 809D76D4  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 809D76D8  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 809D76DC  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 809D76E0  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 809D76E4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 809D76E8  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 809D76EC  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 809D76F0  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 809D76F4  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 809D76F8  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 809D76FC  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 809D7700  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 809D7704  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 809D7708  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 809D770C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809D7710  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 809D7714  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 809D7718  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 809D771C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 809D7720  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 809D7724  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 809D7728  7F A3 EB 78 */	mr r3, r29
/* 809D772C  4B 77 15 45 */	bl setEnvTevColor__8daNpcT_cFv
/* 809D7730  7F A3 EB 78 */	mr r3, r29
/* 809D7734  4B 77 15 99 */	bl setRoomNo__8daNpcT_cFv
/* 809D7738  38 7D 08 64 */	addi r3, r29, 0x864
/* 809D773C  38 9F 00 00 */	addi r4, r31, 0
/* 809D7740  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809D7744  FC 00 00 1E */	fctiwz f0, f0
/* 809D7748  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809D774C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809D7750  38 A0 00 00 */	li r5, 0
/* 809D7754  7F A6 EB 78 */	mr r6, r29
/* 809D7758  4B 6A C1 09 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809D775C  38 7D 0F 80 */	addi r3, r29, 0xf80
/* 809D7760  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 809D7764  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 809D7768  4B 6A D1 4D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809D776C  38 1D 08 64 */	addi r0, r29, 0x864
/* 809D7770  90 1D 0F C4 */	stw r0, 0xfc4(r29)
/* 809D7774  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 809D7778  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 809D777C  90 1D 10 24 */	stw r0, 0x1024(r29)
/* 809D7780  7F A3 EB 78 */	mr r3, r29
/* 809D7784  48 00 04 B1 */	bl reset__12daNpc_grMC_cFv
/* 809D7788  38 00 00 01 */	li r0, 1
/* 809D778C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 809D7790  7F A3 EB 78 */	mr r3, r29
/* 809D7794  48 00 02 5D */	bl Execute__12daNpc_grMC_cFv
/* 809D7798  38 00 00 00 */	li r0, 0
/* 809D779C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_809D77A0:
/* 809D77A0  7F C3 F3 78 */	mr r3, r30
lbl_809D77A4:
/* 809D77A4  39 61 00 30 */	addi r11, r1, 0x30
/* 809D77A8  4B 98 AA 81 */	bl _restgpr_29
/* 809D77AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D77B0  7C 08 03 A6 */	mtlr r0
/* 809D77B4  38 21 00 30 */	addi r1, r1, 0x30
/* 809D77B8  4E 80 00 20 */	blr 
