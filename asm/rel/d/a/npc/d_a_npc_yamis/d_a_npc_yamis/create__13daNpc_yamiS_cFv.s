lbl_80B466A4:
/* 80B466A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B466A8  7C 08 02 A6 */	mflr r0
/* 80B466AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B466B0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B466B4  4B 81 BB 28 */	b _savegpr_29
/* 80B466B8  7C 7D 1B 78 */	mr r29, r3
/* 80B466BC  3C 80 80 B5 */	lis r4, m__19daNpc_yamiS_Param_c@ha
/* 80B466C0  3B E4 96 B0 */	addi r31, r4, m__19daNpc_yamiS_Param_c@l
/* 80B466C4  3C 80 80 B5 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B466C8  3B C4 97 A8 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B466CC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B466D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B466D4  40 82 00 40 */	bne lbl_80B46714
/* 80B466D8  28 1D 00 00 */	cmplwi r29, 0
/* 80B466DC  41 82 00 2C */	beq lbl_80B46708
/* 80B466E0  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B466E4  90 01 00 08 */	stw r0, 8(r1)
/* 80B466E8  38 9E 00 50 */	addi r4, r30, 0x50
/* 80B466EC  38 BE 00 88 */	addi r5, r30, 0x88
/* 80B466F0  38 DE 00 C0 */	addi r6, r30, 0xc0
/* 80B466F4  38 E0 00 04 */	li r7, 4
/* 80B466F8  39 1E 00 E0 */	addi r8, r30, 0xe0
/* 80B466FC  39 20 00 04 */	li r9, 4
/* 80B46700  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B46704  48 00 2D D5 */	bl __ct__13daNpc_yamiS_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B46708:
/* 80B46708  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B4670C  60 00 00 08 */	ori r0, r0, 8
/* 80B46710  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B46714:
/* 80B46714  7F A3 EB 78 */	mr r3, r29
/* 80B46718  48 00 08 05 */	bl getType__13daNpc_yamiS_cFv
/* 80B4671C  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B46720  7F A3 EB 78 */	mr r3, r29
/* 80B46724  48 00 08 31 */	bl getFlowNodeNo__13daNpc_yamiS_cFv
/* 80B46728  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80B4672C  38 00 00 00 */	li r0, 0
/* 80B46730  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B46734  7F A3 EB 78 */	mr r3, r29
/* 80B46738  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B4673C  54 00 10 3A */	slwi r0, r0, 2
/* 80B46740  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B46744  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B46748  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B4674C  4B 60 1C AC */	b loadRes__8daNpcT_cFPCScPPCc
/* 80B46750  7C 7E 1B 78 */	mr r30, r3
/* 80B46754  2C 1E 00 04 */	cmpwi r30, 4
/* 80B46758  40 82 01 E4 */	bne lbl_80B4693C
/* 80B4675C  7F A3 EB 78 */	mr r3, r29
/* 80B46760  3C 80 80 B4 */	lis r4, createHeapCallBack__13daNpc_yamiS_cFP10fopAc_ac_c@ha
/* 80B46764  38 84 6E A4 */	addi r4, r4, createHeapCallBack__13daNpc_yamiS_cFP10fopAc_ac_c@l
/* 80B46768  38 A0 35 40 */	li r5, 0x3540
/* 80B4676C  4B 4D 3D 44 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B46770  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B46774  40 82 00 0C */	bne lbl_80B46780
/* 80B46778  38 60 00 05 */	li r3, 5
/* 80B4677C  48 00 01 C4 */	b lbl_80B46940
lbl_80B46780:
/* 80B46780  7F A3 EB 78 */	mr r3, r29
/* 80B46784  48 00 08 35 */	bl isDelete__13daNpc_yamiS_cFv
/* 80B46788  2C 03 00 00 */	cmpwi r3, 0
/* 80B4678C  41 82 00 0C */	beq lbl_80B46798
/* 80B46790  38 60 00 05 */	li r3, 5
/* 80B46794  48 00 01 AC */	b lbl_80B46940
lbl_80B46798:
/* 80B46798  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B4679C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B467A0  38 03 00 24 */	addi r0, r3, 0x24
/* 80B467A4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B467A8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80B467AC  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 80B467B0  7F A3 EB 78 */	mr r3, r29
/* 80B467B4  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80B467B8  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80B467BC  FC 60 08 90 */	fmr f3, f1
/* 80B467C0  C0 9F 00 98 */	lfs f4, 0x98(r31)
/* 80B467C4  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 80B467C8  FC C0 20 90 */	fmr f6, f4
/* 80B467CC  4B 4D 3D 7C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B467D0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B467D4  64 00 08 00 */	oris r0, r0, 0x800
/* 80B467D8  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B467DC  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B467E0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B467E4  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B467E8  38 C0 00 03 */	li r6, 3
/* 80B467EC  38 E0 00 01 */	li r7, 1
/* 80B467F0  4B 77 9D 40 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B467F4  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B467F8  90 01 00 08 */	stw r0, 8(r1)
/* 80B467FC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B46800  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B46804  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B46808  7F A6 EB 78 */	mr r6, r29
/* 80B4680C  38 E0 00 01 */	li r7, 1
/* 80B46810  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B46814  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B46818  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B4681C  4B 52 FA 2C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B46820  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B46824  38 9F 00 00 */	addi r4, r31, 0
/* 80B46828  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B4682C  FC 00 00 1E */	fctiwz f0, f0
/* 80B46830  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B46834  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B46838  38 A0 00 00 */	li r5, 0
/* 80B4683C  7F A6 EB 78 */	mr r6, r29
/* 80B46840  4B 53 D0 20 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B46844  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B46848  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80B4684C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80B46850  4B 53 E0 64 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B46854  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B46858  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B4685C  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B46860  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B46864  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B46868  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B4686C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B46870  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B46874  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B46878  4B 53 02 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B4687C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B46880  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B46884  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B46888  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B4688C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B46890  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B46894  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B46898  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B4689C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B468A0  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B468A4  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B468A8  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B468AC  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B468B0  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B468B4  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B468B8  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B468BC  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B468C0  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B468C4  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B468C8  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B468CC  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B468D0  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B468D4  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B468D8  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B468DC  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B468E0  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B468E4  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B468E8  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B468EC  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B468F0  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B468F4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80B468F8  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B468FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B46900  41 82 00 14 */	beq lbl_80B46914
/* 80B46904  7F A3 EB 78 */	mr r3, r29
/* 80B46908  4B 60 23 68 */	b setEnvTevColor__8daNpcT_cFv
/* 80B4690C  7F A3 EB 78 */	mr r3, r29
/* 80B46910  4B 60 23 BC */	b setRoomNo__8daNpcT_cFv
lbl_80B46914:
/* 80B46914  38 00 00 00 */	li r0, 0
/* 80B46918  90 1D 0F C8 */	stw r0, 0xfc8(r29)
/* 80B4691C  7F A3 EB 78 */	mr r3, r29
/* 80B46920  48 00 07 21 */	bl reset__13daNpc_yamiS_cFv
/* 80B46924  38 00 00 01 */	li r0, 1
/* 80B46928  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B4692C  7F A3 EB 78 */	mr r3, r29
/* 80B46930  48 00 04 AD */	bl Execute__13daNpc_yamiS_cFv
/* 80B46934  38 00 00 00 */	li r0, 0
/* 80B46938  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B4693C:
/* 80B4693C  7F C3 F3 78 */	mr r3, r30
lbl_80B46940:
/* 80B46940  39 61 00 30 */	addi r11, r1, 0x30
/* 80B46944  4B 81 B8 E4 */	b _restgpr_29
/* 80B46948  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4694C  7C 08 03 A6 */	mtlr r0
/* 80B46950  38 21 00 30 */	addi r1, r1, 0x30
/* 80B46954  4E 80 00 20 */	blr 
