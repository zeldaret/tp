lbl_80B268F8:
/* 80B268F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B268FC  7C 08 02 A6 */	mflr r0
/* 80B26900  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B26904  39 61 00 30 */	addi r11, r1, 0x30
/* 80B26908  4B 83 B8 D5 */	bl _savegpr_29
/* 80B2690C  7C 7D 1B 78 */	mr r29, r3
/* 80B26910  3C 80 80 B3 */	lis r4, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B26914  3B E4 CE 14 */	addi r31, r4, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B26918  3C 80 80 B3 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B2D048@ha */
/* 80B2691C  3B C4 D0 48 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B2D048@l */
/* 80B26920  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B26924  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B26928  40 82 00 40 */	bne lbl_80B26968
/* 80B2692C  28 1D 00 00 */	cmplwi r29, 0
/* 80B26930  41 82 00 2C */	beq lbl_80B2695C
/* 80B26934  38 1E 00 88 */	addi r0, r30, 0x88
/* 80B26938  90 01 00 08 */	stw r0, 8(r1)
/* 80B2693C  38 9E 00 DC */	addi r4, r30, 0xdc
/* 80B26940  38 BE 02 F0 */	addi r5, r30, 0x2f0
/* 80B26944  38 DE 06 A8 */	addi r6, r30, 0x6a8
/* 80B26948  38 E0 00 04 */	li r7, 4
/* 80B2694C  39 1E 07 C8 */	addi r8, r30, 0x7c8
/* 80B26950  39 20 00 04 */	li r9, 4
/* 80B26954  39 5E 00 30 */	addi r10, r30, 0x30
/* 80B26958  48 00 63 0D */	bl __ct__11daNpc_Uri_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B2695C:
/* 80B2695C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B26960  60 00 00 08 */	ori r0, r0, 8
/* 80B26964  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B26968:
/* 80B26968  7F A3 EB 78 */	mr r3, r29
/* 80B2696C  48 00 08 81 */	bl getType__11daNpc_Uri_cFv
/* 80B26970  98 7D 0F 84 */	stb r3, 0xf84(r29)
/* 80B26974  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B26978  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80B2697C  28 03 FF FF */	cmplwi r3, 0xffff
/* 80B26980  38 00 FF FF */	li r0, -1
/* 80B26984  41 82 00 08 */	beq lbl_80B2698C
/* 80B26988  7C 60 1B 78 */	mr r0, r3
lbl_80B2698C:
/* 80B2698C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B26990  38 00 00 00 */	li r0, 0
/* 80B26994  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B26998  7F A3 EB 78 */	mr r3, r29
/* 80B2699C  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B269A0  54 00 10 3A */	slwi r0, r0, 2
/* 80B269A4  38 9E 00 C0 */	addi r4, r30, 0xc0
/* 80B269A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B269AC  38 BE 00 88 */	addi r5, r30, 0x88
/* 80B269B0  4B 62 1A 49 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80B269B4  7C 7E 1B 78 */	mr r30, r3
/* 80B269B8  2C 1E 00 04 */	cmpwi r30, 4
/* 80B269BC  40 82 02 0C */	bne lbl_80B26BC8
/* 80B269C0  7F A3 EB 78 */	mr r3, r29
/* 80B269C4  48 00 08 9D */	bl isDelete__11daNpc_Uri_cFv
/* 80B269C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B269CC  41 82 00 0C */	beq lbl_80B269D8
/* 80B269D0  38 60 00 05 */	li r3, 5
/* 80B269D4  48 00 01 F8 */	b lbl_80B26BCC
lbl_80B269D8:
/* 80B269D8  7F A3 EB 78 */	mr r3, r29
/* 80B269DC  3C 80 80 B2 */	lis r4, createHeapCallBack__11daNpc_Uri_cFP10fopAc_ac_c@ha /* 0x80B27174@ha */
/* 80B269E0  38 84 71 74 */	addi r4, r4, createHeapCallBack__11daNpc_Uri_cFP10fopAc_ac_c@l /* 0x80B27174@l */
/* 80B269E4  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B269E8  54 00 10 3A */	slwi r0, r0, 2
/* 80B269EC  38 BF 00 AC */	addi r5, r31, 0xac
/* 80B269F0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B269F4  4B 4F 3A BD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B269F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B269FC  40 82 00 0C */	bne lbl_80B26A08
/* 80B26A00  38 60 00 05 */	li r3, 5
/* 80B26A04  48 00 01 C8 */	b lbl_80B26BCC
lbl_80B26A08:
/* 80B26A08  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B26A0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B26A10  38 03 00 24 */	addi r0, r3, 0x24
/* 80B26A14  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B26A18  7F A3 EB 78 */	mr r3, r29
/* 80B26A1C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80B26A20  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80B26A24  FC 60 08 90 */	fmr f3, f1
/* 80B26A28  C0 9F 00 D0 */	lfs f4, 0xd0(r31)
/* 80B26A2C  C0 BF 00 D4 */	lfs f5, 0xd4(r31)
/* 80B26A30  FC C0 20 90 */	fmr f6, f4
/* 80B26A34  4B 4F 3B 15 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B26A38  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B26A3C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B26A40  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B26A44  38 C0 00 03 */	li r6, 3
/* 80B26A48  38 E0 00 01 */	li r7, 1
/* 80B26A4C  4B 79 9A E5 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80B26A50  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80B26A54  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80B26A58  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80B26A5C  FC 40 08 90 */	fmr f2, f1
/* 80B26A60  4B 52 A2 3D */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 80B26A64  7F A3 EB 78 */	mr r3, r29
/* 80B26A68  48 00 08 89 */	bl reset__11daNpc_Uri_cFv
/* 80B26A6C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B26A70  90 01 00 08 */	stw r0, 8(r1)
/* 80B26A74  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B26A78  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B26A7C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B26A80  7F A6 EB 78 */	mr r6, r29
/* 80B26A84  38 E0 00 01 */	li r7, 1
/* 80B26A88  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B26A8C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B26A90  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B26A94  4B 54 F7 B5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B26A98  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B26A9C  38 9F 00 00 */	addi r4, r31, 0
/* 80B26AA0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B26AA4  FC 00 00 1E */	fctiwz f0, f0
/* 80B26AA8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B26AAC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B26AB0  38 A0 00 00 */	li r5, 0
/* 80B26AB4  7F A6 EB 78 */	mr r6, r29
/* 80B26AB8  4B 55 CD A9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B26ABC  38 7D 0E 48 */	addi r3, r29, 0xe48
/* 80B26AC0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80B26AC4  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80B26AC8  4B 55 DD ED */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B26ACC  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B26AD0  90 1D 0E 8C */	stw r0, 0xe8c(r29)
/* 80B26AD4  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80B26AD8  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80B26ADC  90 1D 0E EC */	stw r0, 0xeec(r29)
/* 80B26AE0  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B26AE4  28 00 00 04 */	cmplwi r0, 4
/* 80B26AE8  40 82 00 1C */	bne lbl_80B26B04
/* 80B26AEC  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80B26AF0  60 00 00 02 */	ori r0, r0, 2
/* 80B26AF4  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80B26AF8  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80B26AFC  60 00 00 04 */	ori r0, r0, 4
/* 80B26B00  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_80B26B04:
/* 80B26B04  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B26B08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B26B0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B26B10  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B26B14  4B 54 FF 99 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B26B18  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B26B1C  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B26B20  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B26B24  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B26B28  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B26B2C  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B26B30  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B26B34  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B26B38  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B26B3C  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B26B40  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B26B44  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B26B48  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B26B4C  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B26B50  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B26B54  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B26B58  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B26B5C  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B26B60  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B26B64  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B26B68  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B26B6C  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B26B70  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B26B74  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B26B78  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B26B7C  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B26B80  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B26B84  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B26B88  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B26B8C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B26B90  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80B26B94  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B26B98  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B26B9C  41 82 00 14 */	beq lbl_80B26BB0
/* 80B26BA0  7F A3 EB 78 */	mr r3, r29
/* 80B26BA4  4B 62 20 CD */	bl setEnvTevColor__8daNpcT_cFv
/* 80B26BA8  7F A3 EB 78 */	mr r3, r29
/* 80B26BAC  4B 62 21 21 */	bl setRoomNo__8daNpcT_cFv
lbl_80B26BB0:
/* 80B26BB0  38 00 00 01 */	li r0, 1
/* 80B26BB4  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B26BB8  7F A3 EB 78 */	mr r3, r29
/* 80B26BBC  48 00 05 05 */	bl Execute__11daNpc_Uri_cFv
/* 80B26BC0  38 00 00 00 */	li r0, 0
/* 80B26BC4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B26BC8:
/* 80B26BC8  7F C3 F3 78 */	mr r3, r30
lbl_80B26BCC:
/* 80B26BCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B26BD0  4B 83 B6 59 */	bl _restgpr_29
/* 80B26BD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B26BD8  7C 08 03 A6 */	mtlr r0
/* 80B26BDC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B26BE0  4E 80 00 20 */	blr 
