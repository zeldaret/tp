lbl_80A01658:
/* 80A01658  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A0165C  7C 08 02 A6 */	mflr r0
/* 80A01660  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A01664  39 61 00 30 */	addi r11, r1, 0x30
/* 80A01668  4B 96 0B 75 */	bl _savegpr_29
/* 80A0166C  7C 7D 1B 78 */	mr r29, r3
/* 80A01670  3C 80 80 A0 */	lis r4, m__17daNpc_Hoz_Param_c@ha /* 0x80A06650@ha */
/* 80A01674  3B E4 66 50 */	addi r31, r4, m__17daNpc_Hoz_Param_c@l /* 0x80A06650@l */
/* 80A01678  3C 80 80 A0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A06804@ha */
/* 80A0167C  3B C4 68 04 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A06804@l */
/* 80A01680  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A01684  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A01688  40 82 00 40 */	bne lbl_80A016C8
/* 80A0168C  28 1D 00 00 */	cmplwi r29, 0
/* 80A01690  41 82 00 2C */	beq lbl_80A016BC
/* 80A01694  38 1E 00 78 */	addi r0, r30, 0x78
/* 80A01698  90 01 00 08 */	stw r0, 8(r1)
/* 80A0169C  38 9E 00 C4 */	addi r4, r30, 0xc4
/* 80A016A0  38 BE 05 08 */	addi r5, r30, 0x508
/* 80A016A4  38 DE 09 4C */	addi r6, r30, 0x94c
/* 80A016A8  38 E0 00 04 */	li r7, 4
/* 80A016AC  39 1E 0B 7C */	addi r8, r30, 0xb7c
/* 80A016B0  39 20 00 04 */	li r9, 4
/* 80A016B4  39 5E 00 30 */	addi r10, r30, 0x30
/* 80A016B8  48 00 4E 2D */	bl __ct__11daNpc_Hoz_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A016BC:
/* 80A016BC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A016C0  60 00 00 08 */	ori r0, r0, 8
/* 80A016C4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A016C8:
/* 80A016C8  7F A3 EB 78 */	mr r3, r29
/* 80A016CC  48 00 08 89 */	bl getType__11daNpc_Hoz_cFv
/* 80A016D0  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80A016D4  7F A3 EB 78 */	mr r3, r29
/* 80A016D8  48 00 08 F1 */	bl getFlowNodeNo__11daNpc_Hoz_cFv
/* 80A016DC  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80A016E0  4B 7A AE 9D */	bl dKy_darkworld_check__Fv
/* 80A016E4  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80A016E8  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A016EC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80A016F0  98 1D 0F 88 */	stb r0, 0xf88(r29)
/* 80A016F4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80A016F8  54 00 46 3E */	srwi r0, r0, 0x18
/* 80A016FC  98 1D 0F 89 */	stb r0, 0xf89(r29)
/* 80A01700  7F A3 EB 78 */	mr r3, r29
/* 80A01704  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A01708  54 00 10 3A */	slwi r0, r0, 2
/* 80A0170C  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A01710  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A01714  38 BE 00 78 */	addi r5, r30, 0x78
/* 80A01718  4B 74 6C E1 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80A0171C  7C 7E 1B 78 */	mr r30, r3
/* 80A01720  2C 1E 00 04 */	cmpwi r30, 4
/* 80A01724  40 82 01 C4 */	bne lbl_80A018E8
/* 80A01728  7F A3 EB 78 */	mr r3, r29
/* 80A0172C  3C 80 80 A0 */	lis r4, createHeapCallBack__11daNpc_Hoz_cFP10fopAc_ac_c@ha /* 0x80A01E44@ha */
/* 80A01730  38 84 1E 44 */	addi r4, r4, createHeapCallBack__11daNpc_Hoz_cFP10fopAc_ac_c@l /* 0x80A01E44@l */
/* 80A01734  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A01738  54 00 10 3A */	slwi r0, r0, 2
/* 80A0173C  38 BF 00 90 */	addi r5, r31, 0x90
/* 80A01740  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A01744  4B 61 8D 6D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A01748  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A0174C  40 82 00 0C */	bne lbl_80A01758
/* 80A01750  38 60 00 05 */	li r3, 5
/* 80A01754  48 00 01 98 */	b lbl_80A018EC
lbl_80A01758:
/* 80A01758  7F A3 EB 78 */	mr r3, r29
/* 80A0175C  48 00 08 89 */	bl isDelete__11daNpc_Hoz_cFv
/* 80A01760  2C 03 00 00 */	cmpwi r3, 0
/* 80A01764  41 82 00 0C */	beq lbl_80A01770
/* 80A01768  38 60 00 05 */	li r3, 5
/* 80A0176C  48 00 01 80 */	b lbl_80A018EC
lbl_80A01770:
/* 80A01770  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A01774  80 63 00 04 */	lwz r3, 4(r3)
/* 80A01778  38 03 00 24 */	addi r0, r3, 0x24
/* 80A0177C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A01780  7F A3 EB 78 */	mr r3, r29
/* 80A01784  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A01788  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80A0178C  FC 60 08 90 */	fmr f3, f1
/* 80A01790  C0 9F 00 B4 */	lfs f4, 0xb4(r31)
/* 80A01794  C0 BF 00 B8 */	lfs f5, 0xb8(r31)
/* 80A01798  FC C0 20 90 */	fmr f6, f4
/* 80A0179C  4B 61 8D AD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A017A0  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A017A4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A017A8  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A017AC  38 C0 00 03 */	li r6, 3
/* 80A017B0  38 E0 00 01 */	li r7, 1
/* 80A017B4  4B 8B ED 7D */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A017B8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A017BC  90 01 00 08 */	stw r0, 8(r1)
/* 80A017C0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A017C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A017C8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A017CC  7F A6 EB 78 */	mr r6, r29
/* 80A017D0  38 E0 00 01 */	li r7, 1
/* 80A017D4  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A017D8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A017DC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A017E0  4B 67 4A 69 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A017E4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A017E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A017EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A017F0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A017F4  4B 67 52 B9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A017F8  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A017FC  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A01800  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A01804  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A01808  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A0180C  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A01810  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A01814  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A01818  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A0181C  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A01820  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A01824  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A01828  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A0182C  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A01830  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A01834  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A01838  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A0183C  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A01840  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A01844  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A01848  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A0184C  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A01850  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A01854  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A01858  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A0185C  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A01860  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A01864  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A01868  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A0186C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A01870  7F A3 EB 78 */	mr r3, r29
/* 80A01874  4B 74 73 FD */	bl setEnvTevColor__8daNpcT_cFv
/* 80A01878  7F A3 EB 78 */	mr r3, r29
/* 80A0187C  4B 74 74 51 */	bl setRoomNo__8daNpcT_cFv
/* 80A01880  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A01884  38 9F 00 00 */	addi r4, r31, 0
/* 80A01888  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A0188C  FC 00 00 1E */	fctiwz f0, f0
/* 80A01890  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A01894  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A01898  38 A0 00 00 */	li r5, 0
/* 80A0189C  7F A6 EB 78 */	mr r6, r29
/* 80A018A0  4B 68 1F C1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A018A4  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80A018A8  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80A018AC  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80A018B0  4B 68 30 05 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A018B4  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A018B8  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80A018BC  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80A018C0  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80A018C4  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80A018C8  7F A3 EB 78 */	mr r3, r29
/* 80A018CC  48 00 07 21 */	bl reset__11daNpc_Hoz_cFv
/* 80A018D0  38 00 00 01 */	li r0, 1
/* 80A018D4  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A018D8  7F A3 EB 78 */	mr r3, r29
/* 80A018DC  48 00 04 AD */	bl Execute__11daNpc_Hoz_cFv
/* 80A018E0  38 00 00 00 */	li r0, 0
/* 80A018E4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A018E8:
/* 80A018E8  7F C3 F3 78 */	mr r3, r30
lbl_80A018EC:
/* 80A018EC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A018F0  4B 96 09 39 */	bl _restgpr_29
/* 80A018F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A018F8  7C 08 03 A6 */	mtlr r0
/* 80A018FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A01900  4E 80 00 20 */	blr 
