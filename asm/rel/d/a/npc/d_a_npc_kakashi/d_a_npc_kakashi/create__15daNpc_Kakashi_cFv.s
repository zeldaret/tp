lbl_8054B4E8:
/* 8054B4E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8054B4EC  7C 08 02 A6 */	mflr r0
/* 8054B4F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8054B4F4  39 61 00 40 */	addi r11, r1, 0x40
/* 8054B4F8  4B E1 6C D0 */	b _savegpr_24
/* 8054B4FC  7C 7D 1B 78 */	mr r29, r3
/* 8054B500  3C 80 80 55 */	lis r4, m__21daNpc_Kakashi_Param_c@ha
/* 8054B504  3B E4 EA C4 */	addi r31, r4, m__21daNpc_Kakashi_Param_c@l
/* 8054B508  3C 80 80 55 */	lis r4, cNullVec__6Z2Calc@ha
/* 8054B50C  3B 44 ED 9C */	addi r26, r4, cNullVec__6Z2Calc@l
/* 8054B510  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8054B514  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8054B518  40 82 00 40 */	bne lbl_8054B558
/* 8054B51C  28 1D 00 00 */	cmplwi r29, 0
/* 8054B520  41 82 00 2C */	beq lbl_8054B54C
/* 8054B524  38 1A 00 E0 */	addi r0, r26, 0xe0
/* 8054B528  90 01 00 08 */	stw r0, 8(r1)
/* 8054B52C  38 9A 01 04 */	addi r4, r26, 0x104
/* 8054B530  38 BA 01 20 */	addi r5, r26, 0x120
/* 8054B534  38 DA 01 3C */	addi r6, r26, 0x13c
/* 8054B538  38 E0 00 04 */	li r7, 4
/* 8054B53C  39 1A 01 4C */	addi r8, r26, 0x14c
/* 8054B540  39 20 00 04 */	li r9, 4
/* 8054B544  39 5A 00 38 */	addi r10, r26, 0x38
/* 8054B548  48 00 32 BD */	bl __ct__15daNpc_Kakashi_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_8054B54C:
/* 8054B54C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8054B550  60 00 00 08 */	ori r0, r0, 8
/* 8054B554  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8054B558:
/* 8054B558  7F A3 EB 78 */	mr r3, r29
/* 8054B55C  48 00 06 51 */	bl getType__15daNpc_Kakashi_cFv
/* 8054B560  98 7D 13 48 */	stb r3, 0x1348(r29)
/* 8054B564  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8054B568  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8054B56C  28 03 FF FF */	cmplwi r3, 0xffff
/* 8054B570  38 00 FF FF */	li r0, -1
/* 8054B574  41 82 00 08 */	beq lbl_8054B57C
/* 8054B578  7C 60 1B 78 */	mr r0, r3
lbl_8054B57C:
/* 8054B57C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8054B580  38 00 00 00 */	li r0, 0
/* 8054B584  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 8054B588  7F A3 EB 78 */	mr r3, r29
/* 8054B58C  88 1D 13 48 */	lbz r0, 0x1348(r29)
/* 8054B590  54 00 10 3A */	slwi r0, r0, 2
/* 8054B594  38 9A 00 EC */	addi r4, r26, 0xec
/* 8054B598  7C 84 00 2E */	lwzx r4, r4, r0
/* 8054B59C  38 BA 00 E0 */	addi r5, r26, 0xe0
/* 8054B5A0  4B BF CE 58 */	b loadRes__8daNpcT_cFPCScPPCc
/* 8054B5A4  7C 7E 1B 78 */	mr r30, r3
/* 8054B5A8  2C 1E 00 04 */	cmpwi r30, 4
/* 8054B5AC  40 82 02 10 */	bne lbl_8054B7BC
/* 8054B5B0  7F A3 EB 78 */	mr r3, r29
/* 8054B5B4  48 00 06 5D */	bl isDelete__15daNpc_Kakashi_cFv
/* 8054B5B8  2C 03 00 00 */	cmpwi r3, 0
/* 8054B5BC  41 82 00 0C */	beq lbl_8054B5C8
/* 8054B5C0  38 60 00 05 */	li r3, 5
/* 8054B5C4  48 00 01 FC */	b lbl_8054B7C0
lbl_8054B5C8:
/* 8054B5C8  7F A3 EB 78 */	mr r3, r29
/* 8054B5CC  3C 80 80 55 */	lis r4, createHeapCallBack__15daNpc_Kakashi_cFP10fopAc_ac_c@ha
/* 8054B5D0  38 84 BB 34 */	addi r4, r4, createHeapCallBack__15daNpc_Kakashi_cFP10fopAc_ac_c@l
/* 8054B5D4  38 A0 0D A0 */	li r5, 0xda0
/* 8054B5D8  4B AC EE D8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8054B5DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8054B5E0  40 82 00 0C */	bne lbl_8054B5EC
/* 8054B5E4  38 60 00 05 */	li r3, 5
/* 8054B5E8  48 00 01 D8 */	b lbl_8054B7C0
lbl_8054B5EC:
/* 8054B5EC  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8054B5F0  80 63 00 04 */	lwz r3, 4(r3)
/* 8054B5F4  38 03 00 24 */	addi r0, r3, 0x24
/* 8054B5F8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8054B5FC  7F A3 EB 78 */	mr r3, r29
/* 8054B600  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8054B604  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8054B608  FC 60 08 90 */	fmr f3, f1
/* 8054B60C  C0 9F 00 A0 */	lfs f4, 0xa0(r31)
/* 8054B610  C0 BF 00 A4 */	lfs f5, 0xa4(r31)
/* 8054B614  FC C0 20 90 */	fmr f6, f4
/* 8054B618  4B AC EF 30 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8054B61C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8054B620  64 00 08 00 */	oris r0, r0, 0x800
/* 8054B624  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8054B628  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 8054B62C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8054B630  38 A0 00 03 */	li r5, 3
/* 8054B634  81 9D 0E 54 */	lwz r12, 0xe54(r29)
/* 8054B638  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8054B63C  7D 89 03 A6 */	mtctr r12
/* 8054B640  4E 80 04 21 */	bctrl 
/* 8054B644  7F A3 EB 78 */	mr r3, r29
/* 8054B648  48 00 06 51 */	bl reset__15daNpc_Kakashi_cFv
/* 8054B64C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8054B650  90 01 00 08 */	stw r0, 8(r1)
/* 8054B654  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8054B658  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8054B65C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8054B660  7F A6 EB 78 */	mr r6, r29
/* 8054B664  38 E0 00 01 */	li r7, 1
/* 8054B668  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 8054B66C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8054B670  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 8054B674  4B B2 AB D4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8054B678  38 7D 08 64 */	addi r3, r29, 0x864
/* 8054B67C  38 9F 00 00 */	addi r4, r31, 0
/* 8054B680  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8054B684  FC 00 00 1E */	fctiwz f0, f0
/* 8054B688  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8054B68C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8054B690  38 A0 00 00 */	li r5, 0
/* 8054B694  7F A6 EB 78 */	mr r6, r29
/* 8054B698  4B B3 81 C8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8054B69C  3B 00 00 00 */	li r24, 0
/* 8054B6A0  3B 80 00 00 */	li r28, 0
/* 8054B6A4  3C 60 80 3B */	lis r3, mCcDSph__8daNpcT_c@ha
/* 8054B6A8  3B 43 37 1C */	addi r26, r3, mCcDSph__8daNpcT_c@l
/* 8054B6AC  3B 7D 08 64 */	addi r27, r29, 0x864
lbl_8054B6B0:
/* 8054B6B0  7F 3D E2 14 */	add r25, r29, r28
/* 8054B6B4  38 79 0F A0 */	addi r3, r25, 0xfa0
/* 8054B6B8  7F 44 D3 78 */	mr r4, r26
/* 8054B6BC  4B B3 93 78 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8054B6C0  93 79 0F E4 */	stw r27, 0xfe4(r25)
/* 8054B6C4  3B 18 00 01 */	addi r24, r24, 1
/* 8054B6C8  2C 18 00 03 */	cmpwi r24, 3
/* 8054B6CC  3B 9C 01 38 */	addi r28, r28, 0x138
/* 8054B6D0  41 80 FF E0 */	blt lbl_8054B6B0
/* 8054B6D4  38 7D 0E 64 */	addi r3, r29, 0xe64
/* 8054B6D8  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 8054B6DC  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 8054B6E0  4B B3 91 D4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8054B6E4  38 1D 08 64 */	addi r0, r29, 0x864
/* 8054B6E8  90 1D 0E A8 */	stw r0, 0xea8(r29)
/* 8054B6EC  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 8054B6F0  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 8054B6F4  90 1D 0F 08 */	stw r0, 0xf08(r29)
/* 8054B6F8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8054B6FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8054B700  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8054B704  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8054B708  4B B2 B3 A4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8054B70C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 8054B710  90 1D 09 30 */	stw r0, 0x930(r29)
/* 8054B714  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 8054B718  90 1D 09 34 */	stw r0, 0x934(r29)
/* 8054B71C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 8054B720  90 1D 09 38 */	stw r0, 0x938(r29)
/* 8054B724  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 8054B728  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 8054B72C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 8054B730  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 8054B734  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 8054B738  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 8054B73C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 8054B740  90 1D 09 48 */	stw r0, 0x948(r29)
/* 8054B744  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8054B748  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 8054B74C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 8054B750  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 8054B754  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 8054B758  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 8054B75C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 8054B760  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 8054B764  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 8054B768  90 1D 09 60 */	stw r0, 0x960(r29)
/* 8054B76C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 8054B770  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 8054B774  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 8054B778  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8054B77C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 8054B780  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8054B784  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8054B788  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8054B78C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8054B790  41 82 00 14 */	beq lbl_8054B7A4
/* 8054B794  7F A3 EB 78 */	mr r3, r29
/* 8054B798  4B BF D4 D8 */	b setEnvTevColor__8daNpcT_cFv
/* 8054B79C  7F A3 EB 78 */	mr r3, r29
/* 8054B7A0  4B BF D5 2C */	b setRoomNo__8daNpcT_cFv
lbl_8054B7A4:
/* 8054B7A4  38 00 00 01 */	li r0, 1
/* 8054B7A8  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 8054B7AC  7F A3 EB 78 */	mr r3, r29
/* 8054B7B0  48 00 01 8D */	bl Execute__15daNpc_Kakashi_cFv
/* 8054B7B4  38 00 00 00 */	li r0, 0
/* 8054B7B8  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_8054B7BC:
/* 8054B7BC  7F C3 F3 78 */	mr r3, r30
lbl_8054B7C0:
/* 8054B7C0  39 61 00 40 */	addi r11, r1, 0x40
/* 8054B7C4  4B E1 6A 50 */	b _restgpr_24
/* 8054B7C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8054B7CC  7C 08 03 A6 */	mtlr r0
/* 8054B7D0  38 21 00 40 */	addi r1, r1, 0x40
/* 8054B7D4  4E 80 00 20 */	blr 
