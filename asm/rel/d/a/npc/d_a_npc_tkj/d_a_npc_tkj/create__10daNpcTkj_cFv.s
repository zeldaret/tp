lbl_80573850:
/* 80573850  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80573854  7C 08 02 A6 */	mflr r0
/* 80573858  90 01 00 34 */	stw r0, 0x34(r1)
/* 8057385C  39 61 00 30 */	addi r11, r1, 0x30
/* 80573860  4B DE E9 7C */	b _savegpr_29
/* 80573864  7C 7D 1B 78 */	mr r29, r3
/* 80573868  3C 80 80 57 */	lis r4, m__17daNpc_Tkj_Param_c@ha
/* 8057386C  3B E4 65 98 */	addi r31, r4, m__17daNpc_Tkj_Param_c@l
/* 80573870  3C 80 80 57 */	lis r4, cNullVec__6Z2Calc@ha
/* 80573874  3B C4 66 B4 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80573878  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8057387C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80573880  40 82 00 40 */	bne lbl_805738C0
/* 80573884  28 1D 00 00 */	cmplwi r29, 0
/* 80573888  41 82 00 2C */	beq lbl_805738B4
/* 8057388C  38 1E 00 38 */	addi r0, r30, 0x38
/* 80573890  90 01 00 08 */	stw r0, 8(r1)
/* 80573894  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80573898  38 BE 00 84 */	addi r5, r30, 0x84
/* 8057389C  38 DE 00 BC */	addi r6, r30, 0xbc
/* 805738A0  38 E0 00 04 */	li r7, 4
/* 805738A4  39 1E 00 DC */	addi r8, r30, 0xdc
/* 805738A8  39 20 00 04 */	li r9, 4
/* 805738AC  39 5E 00 28 */	addi r10, r30, 0x28
/* 805738B0  48 00 2B 01 */	bl __ct__10daNpcTkj_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_805738B4:
/* 805738B4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805738B8  60 00 00 08 */	ori r0, r0, 8
/* 805738BC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_805738C0:
/* 805738C0  7F A3 EB 78 */	mr r3, r29
/* 805738C4  48 00 08 0D */	bl getType__10daNpcTkj_cFv
/* 805738C8  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 805738CC  7F A3 EB 78 */	mr r3, r29
/* 805738D0  48 00 08 39 */	bl getFlowNodeNo__10daNpcTkj_cFv
/* 805738D4  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 805738D8  38 00 00 00 */	li r0, 0
/* 805738DC  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 805738E0  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 805738E4  28 00 00 01 */	cmplwi r0, 1
/* 805738E8  40 82 00 38 */	bne lbl_80573920
/* 805738EC  38 60 01 0C */	li r3, 0x10c
/* 805738F0  4B BE 1D 44 */	b daNpcF_chkEvtBit__FUl
/* 805738F4  2C 03 00 00 */	cmpwi r3, 0
/* 805738F8  40 82 00 28 */	bne lbl_80573920
/* 805738FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80573900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80573904  38 63 09 58 */	addi r3, r3, 0x958
/* 80573908  38 80 00 06 */	li r4, 6
/* 8057390C  4B AC 10 28 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80573910  2C 03 00 00 */	cmpwi r3, 0
/* 80573914  41 82 00 0C */	beq lbl_80573920
/* 80573918  38 60 00 05 */	li r3, 5
/* 8057391C  48 00 01 E4 */	b lbl_80573B00
lbl_80573920:
/* 80573920  7F A3 EB 78 */	mr r3, r29
/* 80573924  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80573928  54 00 10 3A */	slwi r0, r0, 2
/* 8057392C  38 9E 00 44 */	addi r4, r30, 0x44
/* 80573930  7C 84 00 2E */	lwzx r4, r4, r0
/* 80573934  38 BE 00 38 */	addi r5, r30, 0x38
/* 80573938  4B BD 4A C0 */	b loadRes__8daNpcT_cFPCScPPCc
/* 8057393C  7C 7E 1B 78 */	mr r30, r3
/* 80573940  2C 1E 00 04 */	cmpwi r30, 4
/* 80573944  40 82 01 B8 */	bne lbl_80573AFC
/* 80573948  7F A3 EB 78 */	mr r3, r29
/* 8057394C  3C 80 80 57 */	lis r4, createHeapCallBack__10daNpcTkj_cFP10fopAc_ac_c@ha
/* 80573950  38 84 40 58 */	addi r4, r4, createHeapCallBack__10daNpcTkj_cFP10fopAc_ac_c@l
/* 80573954  38 A0 2F E0 */	li r5, 0x2fe0
/* 80573958  4B AA 6B 58 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8057395C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80573960  40 82 00 0C */	bne lbl_8057396C
/* 80573964  38 60 00 05 */	li r3, 5
/* 80573968  48 00 01 98 */	b lbl_80573B00
lbl_8057396C:
/* 8057396C  7F A3 EB 78 */	mr r3, r29
/* 80573970  48 00 07 B5 */	bl isDelete__10daNpcTkj_cFv
/* 80573974  2C 03 00 00 */	cmpwi r3, 0
/* 80573978  41 82 00 0C */	beq lbl_80573984
/* 8057397C  38 60 00 05 */	li r3, 5
/* 80573980  48 00 01 80 */	b lbl_80573B00
lbl_80573984:
/* 80573984  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80573988  80 63 00 04 */	lwz r3, 4(r3)
/* 8057398C  38 03 00 24 */	addi r0, r3, 0x24
/* 80573990  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80573994  7F A3 EB 78 */	mr r3, r29
/* 80573998  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8057399C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 805739A0  FC 60 08 90 */	fmr f3, f1
/* 805739A4  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 805739A8  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 805739AC  FC C0 20 90 */	fmr f6, f4
/* 805739B0  4B AA 6B 98 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 805739B4  38 7D 05 80 */	addi r3, r29, 0x580
/* 805739B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805739BC  38 BD 05 38 */	addi r5, r29, 0x538
/* 805739C0  38 C0 00 03 */	li r6, 3
/* 805739C4  38 E0 00 01 */	li r7, 1
/* 805739C8  4B D4 CB 68 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 805739CC  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 805739D0  90 01 00 08 */	stw r0, 8(r1)
/* 805739D4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 805739D8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805739DC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805739E0  7F A6 EB 78 */	mr r6, r29
/* 805739E4  38 E0 00 01 */	li r7, 1
/* 805739E8  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 805739EC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 805739F0  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 805739F4  4B B0 28 54 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805739F8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 805739FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80573A00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80573A04  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80573A08  4B B0 30 A4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80573A0C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80573A10  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80573A14  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80573A18  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80573A1C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80573A20  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80573A24  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80573A28  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80573A2C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80573A30  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80573A34  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80573A38  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80573A3C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80573A40  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80573A44  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80573A48  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80573A4C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80573A50  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80573A54  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80573A58  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80573A5C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80573A60  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80573A64  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80573A68  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80573A6C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80573A70  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80573A74  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80573A78  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80573A7C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80573A80  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80573A84  7F A3 EB 78 */	mr r3, r29
/* 80573A88  4B BD 51 E8 */	b setEnvTevColor__8daNpcT_cFv
/* 80573A8C  7F A3 EB 78 */	mr r3, r29
/* 80573A90  4B BD 52 3C */	b setRoomNo__8daNpcT_cFv
/* 80573A94  38 7D 08 64 */	addi r3, r29, 0x864
/* 80573A98  38 9F 00 00 */	addi r4, r31, 0
/* 80573A9C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80573AA0  FC 00 00 1E */	fctiwz f0, f0
/* 80573AA4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80573AA8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80573AAC  38 A0 00 00 */	li r5, 0
/* 80573AB0  7F A6 EB 78 */	mr r6, r29
/* 80573AB4  4B B0 FD AC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80573AB8  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80573ABC  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80573AC0  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80573AC4  4B B1 0D F0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80573AC8  38 1D 08 64 */	addi r0, r29, 0x864
/* 80573ACC  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80573AD0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80573AD4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80573AD8  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80573ADC  7F A3 EB 78 */	mr r3, r29
/* 80573AE0  48 00 06 5D */	bl reset__10daNpcTkj_cFv
/* 80573AE4  38 00 00 01 */	li r0, 1
/* 80573AE8  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80573AEC  7F A3 EB 78 */	mr r3, r29
/* 80573AF0  48 00 04 AD */	bl Execute__10daNpcTkj_cFv
/* 80573AF4  38 00 00 00 */	li r0, 0
/* 80573AF8  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80573AFC:
/* 80573AFC  7F C3 F3 78 */	mr r3, r30
lbl_80573B00:
/* 80573B00  39 61 00 30 */	addi r11, r1, 0x30
/* 80573B04  4B DE E7 24 */	b _restgpr_29
/* 80573B08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80573B0C  7C 08 03 A6 */	mtlr r0
/* 80573B10  38 21 00 30 */	addi r1, r1, 0x30
/* 80573B14  4E 80 00 20 */	blr 
