lbl_80A14858:
/* 80A14858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1485C  7C 08 02 A6 */	mflr r0
/* 80A14860  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A14864  39 61 00 30 */	addi r11, r1, 0x30
/* 80A14868  4B 94 D9 74 */	b _savegpr_29
/* 80A1486C  7C 7D 1B 78 */	mr r29, r3
/* 80A14870  3C 80 80 A2 */	lis r4, m__19daNpc_Jagar_Param_c@ha
/* 80A14874  3B E4 A3 30 */	addi r31, r4, m__19daNpc_Jagar_Param_c@l
/* 80A14878  3C 80 80 A2 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A1487C  3B C4 A5 48 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A14880  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A14884  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A14888  40 82 00 40 */	bne lbl_80A148C8
/* 80A1488C  28 1D 00 00 */	cmplwi r29, 0
/* 80A14890  41 82 00 2C */	beq lbl_80A148BC
/* 80A14894  38 1E 00 70 */	addi r0, r30, 0x70
/* 80A14898  90 01 00 08 */	stw r0, 8(r1)
/* 80A1489C  38 9E 00 A4 */	addi r4, r30, 0xa4
/* 80A148A0  38 BE 01 BC */	addi r5, r30, 0x1bc
/* 80A148A4  38 DE 03 B4 */	addi r6, r30, 0x3b4
/* 80A148A8  38 E0 00 04 */	li r7, 4
/* 80A148AC  39 1E 04 44 */	addi r8, r30, 0x444
/* 80A148B0  39 20 00 04 */	li r9, 4
/* 80A148B4  39 5E 00 28 */	addi r10, r30, 0x28
/* 80A148B8  48 00 58 DD */	bl __ct__13daNpc_Jagar_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A148BC:
/* 80A148BC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A148C0  60 00 00 08 */	ori r0, r0, 8
/* 80A148C4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A148C8:
/* 80A148C8  7F A3 EB 78 */	mr r3, r29
/* 80A148CC  48 00 07 E1 */	bl getType__13daNpc_Jagar_cFv
/* 80A148D0  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80A148D4  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A148D8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A148DC  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A148E0  38 00 FF FF */	li r0, -1
/* 80A148E4  41 82 00 08 */	beq lbl_80A148EC
/* 80A148E8  7C 60 1B 78 */	mr r0, r3
lbl_80A148EC:
/* 80A148EC  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A148F0  38 00 00 00 */	li r0, 0
/* 80A148F4  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A148F8  7F A3 EB 78 */	mr r3, r29
/* 80A148FC  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A14900  54 00 10 3A */	slwi r0, r0, 2
/* 80A14904  38 9E 00 94 */	addi r4, r30, 0x94
/* 80A14908  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A1490C  38 BE 00 70 */	addi r5, r30, 0x70
/* 80A14910  4B 73 3A E8 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80A14914  7C 7E 1B 78 */	mr r30, r3
/* 80A14918  2C 1E 00 04 */	cmpwi r30, 4
/* 80A1491C  40 82 01 E8 */	bne lbl_80A14B04
/* 80A14920  7F A3 EB 78 */	mr r3, r29
/* 80A14924  48 00 07 D5 */	bl isDelete__13daNpc_Jagar_cFv
/* 80A14928  2C 03 00 00 */	cmpwi r3, 0
/* 80A1492C  41 82 00 0C */	beq lbl_80A14938
/* 80A14930  38 60 00 05 */	li r3, 5
/* 80A14934  48 00 01 D4 */	b lbl_80A14B08
lbl_80A14938:
/* 80A14938  7F A3 EB 78 */	mr r3, r29
/* 80A1493C  3C 80 80 A1 */	lis r4, createHeapCallBack__13daNpc_Jagar_cFP10fopAc_ac_c@ha
/* 80A14940  38 84 50 34 */	addi r4, r4, createHeapCallBack__13daNpc_Jagar_cFP10fopAc_ac_c@l
/* 80A14944  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A14948  54 00 10 3A */	slwi r0, r0, 2
/* 80A1494C  38 BF 00 A0 */	addi r5, r31, 0xa0
/* 80A14950  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A14954  4B 60 5B 5C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A14958  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A1495C  40 82 00 0C */	bne lbl_80A14968
/* 80A14960  38 60 00 05 */	li r3, 5
/* 80A14964  48 00 01 A4 */	b lbl_80A14B08
lbl_80A14968:
/* 80A14968  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A1496C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A14970  38 03 00 24 */	addi r0, r3, 0x24
/* 80A14974  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A14978  7F A3 EB 78 */	mr r3, r29
/* 80A1497C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80A14980  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80A14984  FC 60 08 90 */	fmr f3, f1
/* 80A14988  C0 9F 00 B8 */	lfs f4, 0xb8(r31)
/* 80A1498C  C0 BF 00 BC */	lfs f5, 0xbc(r31)
/* 80A14990  FC C0 20 90 */	fmr f6, f4
/* 80A14994  4B 60 5B B4 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A14998  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A1499C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A149A0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A149A4  38 C0 00 03 */	li r6, 3
/* 80A149A8  38 E0 00 01 */	li r7, 1
/* 80A149AC  4B 8A BB 84 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A149B0  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80A149B4  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80A149B8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80A149BC  FC 40 08 90 */	fmr f2, f1
/* 80A149C0  4B 63 C2 DC */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80A149C4  7F A3 EB 78 */	mr r3, r29
/* 80A149C8  48 00 07 D1 */	bl reset__13daNpc_Jagar_cFv
/* 80A149CC  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A149D0  90 01 00 08 */	stw r0, 8(r1)
/* 80A149D4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A149D8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A149DC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A149E0  7F A6 EB 78 */	mr r6, r29
/* 80A149E4  38 E0 00 01 */	li r7, 1
/* 80A149E8  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A149EC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A149F0  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A149F4  4B 66 18 54 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A149F8  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A149FC  38 9F 00 00 */	addi r4, r31, 0
/* 80A14A00  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A14A04  FC 00 00 1E */	fctiwz f0, f0
/* 80A14A08  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A14A0C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A14A10  38 A0 00 00 */	li r5, 0
/* 80A14A14  7F A6 EB 78 */	mr r6, r29
/* 80A14A18  4B 66 EE 48 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A14A1C  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80A14A20  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80A14A24  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80A14A28  4B 66 FE 8C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A14A2C  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A14A30  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80A14A34  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A14A38  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A14A3C  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80A14A40  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A14A44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A14A48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A14A4C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A14A50  4B 66 20 5C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A14A54  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A14A58  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A14A5C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A14A60  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A14A64  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A14A68  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A14A6C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A14A70  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A14A74  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A14A78  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A14A7C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A14A80  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A14A84  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A14A88  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A14A8C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A14A90  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A14A94  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A14A98  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A14A9C  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A14AA0  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A14AA4  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A14AA8  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A14AAC  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A14AB0  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A14AB4  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A14AB8  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A14ABC  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A14AC0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A14AC4  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A14AC8  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A14ACC  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80A14AD0  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A14AD4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A14AD8  41 82 00 14 */	beq lbl_80A14AEC
/* 80A14ADC  7F A3 EB 78 */	mr r3, r29
/* 80A14AE0  4B 73 41 90 */	b setEnvTevColor__8daNpcT_cFv
/* 80A14AE4  7F A3 EB 78 */	mr r3, r29
/* 80A14AE8  4B 73 41 E4 */	b setRoomNo__8daNpcT_cFv
lbl_80A14AEC:
/* 80A14AEC  38 00 00 01 */	li r0, 1
/* 80A14AF0  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A14AF4  7F A3 EB 78 */	mr r3, r29
/* 80A14AF8  48 00 04 89 */	bl Execute__13daNpc_Jagar_cFv
/* 80A14AFC  38 00 00 00 */	li r0, 0
/* 80A14B00  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A14B04:
/* 80A14B04  7F C3 F3 78 */	mr r3, r30
lbl_80A14B08:
/* 80A14B08  39 61 00 30 */	addi r11, r1, 0x30
/* 80A14B0C  4B 94 D7 1C */	b _restgpr_29
/* 80A14B10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A14B14  7C 08 03 A6 */	mtlr r0
/* 80A14B18  38 21 00 30 */	addi r1, r1, 0x30
/* 80A14B1C  4E 80 00 20 */	blr 
