lbl_8055B6E0:
/* 8055B6E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8055B6E4  7C 08 02 A6 */	mflr r0
/* 8055B6E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8055B6EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8055B6F0  4B E0 6A EC */	b _savegpr_29
/* 8055B6F4  7C 7D 1B 78 */	mr r29, r3
/* 8055B6F8  3C 80 80 56 */	lis r4, m__18daNpc_Maro_Param_c@ha
/* 8055B6FC  3B E4 4B AC */	addi r31, r4, m__18daNpc_Maro_Param_c@l
/* 8055B700  3C 80 80 56 */	lis r4, cNullVec__6Z2Calc@ha
/* 8055B704  3B C4 4F 90 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 8055B708  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8055B70C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8055B710  40 82 00 40 */	bne lbl_8055B750
/* 8055B714  28 1D 00 00 */	cmplwi r29, 0
/* 8055B718  41 82 00 2C */	beq lbl_8055B744
/* 8055B71C  38 1E 00 B4 */	addi r0, r30, 0xb4
/* 8055B720  90 01 00 08 */	stw r0, 8(r1)
/* 8055B724  38 9E 01 34 */	addi r4, r30, 0x134
/* 8055B728  38 BE 02 4C */	addi r5, r30, 0x24c
/* 8055B72C  38 DE 03 64 */	addi r6, r30, 0x364
/* 8055B730  38 E0 00 04 */	li r7, 4
/* 8055B734  39 1E 04 04 */	addi r8, r30, 0x404
/* 8055B738  39 20 00 04 */	li r9, 4
/* 8055B73C  39 5E 00 3C */	addi r10, r30, 0x3c
/* 8055B740  48 00 91 65 */	bl __ct__12daNpc_Maro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_8055B744:
/* 8055B744  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8055B748  60 00 00 08 */	ori r0, r0, 8
/* 8055B74C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8055B750:
/* 8055B750  7F A3 EB 78 */	mr r3, r29
/* 8055B754  48 00 0B DD */	bl getType__12daNpc_Maro_cFv
/* 8055B758  98 7D 10 C0 */	stb r3, 0x10c0(r29)
/* 8055B75C  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8055B760  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8055B764  28 03 FF FF */	cmplwi r3, 0xffff
/* 8055B768  38 00 FF FF */	li r0, -1
/* 8055B76C  41 82 00 08 */	beq lbl_8055B774
/* 8055B770  7C 60 1B 78 */	mr r0, r3
lbl_8055B774:
/* 8055B774  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8055B778  4B C5 0E 04 */	b dKy_darkworld_check__Fv
/* 8055B77C  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 8055B780  88 1D 10 C0 */	lbz r0, 0x10c0(r29)
/* 8055B784  28 00 00 09 */	cmplwi r0, 9
/* 8055B788  40 82 00 0C */	bne lbl_8055B794
/* 8055B78C  38 00 00 00 */	li r0, 0
/* 8055B790  98 1D 0A 89 */	stb r0, 0xa89(r29)
lbl_8055B794:
/* 8055B794  7F A3 EB 78 */	mr r3, r29
/* 8055B798  88 1D 10 C0 */	lbz r0, 0x10c0(r29)
/* 8055B79C  54 00 10 3A */	slwi r0, r0, 2
/* 8055B7A0  38 9E 00 F0 */	addi r4, r30, 0xf0
/* 8055B7A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 8055B7A8  38 BE 00 B4 */	addi r5, r30, 0xb4
/* 8055B7AC  4B BE CC 4C */	b loadRes__8daNpcT_cFPCScPPCc
/* 8055B7B0  7C 7E 1B 78 */	mr r30, r3
/* 8055B7B4  2C 1E 00 04 */	cmpwi r30, 4
/* 8055B7B8  40 82 01 D4 */	bne lbl_8055B98C
/* 8055B7BC  7F A3 EB 78 */	mr r3, r29
/* 8055B7C0  48 00 0C 21 */	bl isDelete__12daNpc_Maro_cFv
/* 8055B7C4  2C 03 00 00 */	cmpwi r3, 0
/* 8055B7C8  41 82 00 0C */	beq lbl_8055B7D4
/* 8055B7CC  38 60 00 05 */	li r3, 5
/* 8055B7D0  48 00 01 C0 */	b lbl_8055B990
lbl_8055B7D4:
/* 8055B7D4  7F A3 EB 78 */	mr r3, r29
/* 8055B7D8  3C 80 80 56 */	lis r4, createHeapCallBack__12daNpc_Maro_cFP10fopAc_ac_c@ha
/* 8055B7DC  38 84 BF A0 */	addi r4, r4, createHeapCallBack__12daNpc_Maro_cFP10fopAc_ac_c@l
/* 8055B7E0  88 1D 10 C0 */	lbz r0, 0x10c0(r29)
/* 8055B7E4  54 00 10 3A */	slwi r0, r0, 2
/* 8055B7E8  38 BF 00 90 */	addi r5, r31, 0x90
/* 8055B7EC  7C A5 00 2E */	lwzx r5, r5, r0
/* 8055B7F0  4B AB EC C0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8055B7F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8055B7F8  40 82 00 0C */	bne lbl_8055B804
/* 8055B7FC  38 60 00 05 */	li r3, 5
/* 8055B800  48 00 01 90 */	b lbl_8055B990
lbl_8055B804:
/* 8055B804  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8055B808  80 63 00 04 */	lwz r3, 4(r3)
/* 8055B80C  38 03 00 24 */	addi r0, r3, 0x24
/* 8055B810  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8055B814  7F A3 EB 78 */	mr r3, r29
/* 8055B818  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8055B81C  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 8055B820  FC 60 08 90 */	fmr f3, f1
/* 8055B824  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 8055B828  C0 BF 00 E0 */	lfs f5, 0xe0(r31)
/* 8055B82C  FC C0 20 90 */	fmr f6, f4
/* 8055B830  4B AB ED 18 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8055B834  38 7D 05 80 */	addi r3, r29, 0x580
/* 8055B838  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8055B83C  38 BD 05 38 */	addi r5, r29, 0x538
/* 8055B840  38 C0 00 03 */	li r6, 3
/* 8055B844  38 E0 00 01 */	li r7, 1
/* 8055B848  4B D6 4C E8 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 8055B84C  7F A3 EB 78 */	mr r3, r29
/* 8055B850  48 00 0D C5 */	bl reset__12daNpc_Maro_cFv
/* 8055B854  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8055B858  90 01 00 08 */	stw r0, 8(r1)
/* 8055B85C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8055B860  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8055B864  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8055B868  7F A6 EB 78 */	mr r6, r29
/* 8055B86C  38 E0 00 01 */	li r7, 1
/* 8055B870  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 8055B874  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8055B878  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 8055B87C  4B B1 A9 CC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8055B880  38 7D 08 64 */	addi r3, r29, 0x864
/* 8055B884  38 9F 00 00 */	addi r4, r31, 0
/* 8055B888  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8055B88C  FC 00 00 1E */	fctiwz f0, f0
/* 8055B890  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8055B894  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8055B898  38 A0 00 00 */	li r5, 0
/* 8055B89C  7F A6 EB 78 */	mr r6, r29
/* 8055B8A0  4B B2 7F C0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8055B8A4  38 7D 0F 80 */	addi r3, r29, 0xf80
/* 8055B8A8  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 8055B8AC  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 8055B8B0  4B B2 90 04 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8055B8B4  38 1D 08 64 */	addi r0, r29, 0x864
/* 8055B8B8  90 1D 0F C4 */	stw r0, 0xfc4(r29)
/* 8055B8BC  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 8055B8C0  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 8055B8C4  90 1D 10 24 */	stw r0, 0x1024(r29)
/* 8055B8C8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8055B8CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8055B8D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8055B8D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8055B8D8  4B B1 B1 D4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8055B8DC  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 8055B8E0  90 1D 09 30 */	stw r0, 0x930(r29)
/* 8055B8E4  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 8055B8E8  90 1D 09 34 */	stw r0, 0x934(r29)
/* 8055B8EC  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 8055B8F0  90 1D 09 38 */	stw r0, 0x938(r29)
/* 8055B8F4  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 8055B8F8  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 8055B8FC  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 8055B900  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 8055B904  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 8055B908  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 8055B90C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 8055B910  90 1D 09 48 */	stw r0, 0x948(r29)
/* 8055B914  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8055B918  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 8055B91C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 8055B920  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 8055B924  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 8055B928  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 8055B92C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 8055B930  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 8055B934  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 8055B938  90 1D 09 60 */	stw r0, 0x960(r29)
/* 8055B93C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 8055B940  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 8055B944  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 8055B948  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8055B94C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 8055B950  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8055B954  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8055B958  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8055B95C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8055B960  41 82 00 14 */	beq lbl_8055B974
/* 8055B964  7F A3 EB 78 */	mr r3, r29
/* 8055B968  4B BE D3 08 */	b setEnvTevColor__8daNpcT_cFv
/* 8055B96C  7F A3 EB 78 */	mr r3, r29
/* 8055B970  4B BE D3 5C */	b setRoomNo__8daNpcT_cFv
lbl_8055B974:
/* 8055B974  38 00 00 01 */	li r0, 1
/* 8055B978  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 8055B97C  7F A3 EB 78 */	mr r3, r29
/* 8055B980  48 00 04 9D */	bl Execute__12daNpc_Maro_cFv
/* 8055B984  38 00 00 00 */	li r0, 0
/* 8055B988  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_8055B98C:
/* 8055B98C  7F C3 F3 78 */	mr r3, r30
lbl_8055B990:
/* 8055B990  39 61 00 30 */	addi r11, r1, 0x30
/* 8055B994  4B E0 68 94 */	b _restgpr_29
/* 8055B998  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8055B99C  7C 08 03 A6 */	mtlr r0
/* 8055B9A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8055B9A4  4E 80 00 20 */	blr 
