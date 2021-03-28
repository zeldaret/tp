lbl_809518C4:
/* 809518C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809518C8  7C 08 02 A6 */	mflr r0
/* 809518CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809518D0  39 61 00 30 */	addi r11, r1, 0x30
/* 809518D4  4B A1 09 08 */	b _savegpr_29
/* 809518D8  7C 7D 1B 78 */	mr r29, r3
/* 809518DC  3C 80 80 95 */	lis r4, m__17daNpc_Aru_Param_c@ha
/* 809518E0  3B E4 76 D0 */	addi r31, r4, m__17daNpc_Aru_Param_c@l
/* 809518E4  3C 80 80 95 */	lis r4, cNullVec__6Z2Calc@ha
/* 809518E8  3B C4 78 E8 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 809518EC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809518F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809518F4  40 82 00 40 */	bne lbl_80951934
/* 809518F8  28 1D 00 00 */	cmplwi r29, 0
/* 809518FC  41 82 00 2C */	beq lbl_80951928
/* 80951900  38 1E 00 88 */	addi r0, r30, 0x88
/* 80951904  90 01 00 08 */	stw r0, 8(r1)
/* 80951908  38 9E 00 B4 */	addi r4, r30, 0xb4
/* 8095190C  38 BE 02 20 */	addi r5, r30, 0x220
/* 80951910  38 DE 03 8C */	addi r6, r30, 0x38c
/* 80951914  38 E0 00 04 */	li r7, 4
/* 80951918  39 1E 04 5C */	addi r8, r30, 0x45c
/* 8095191C  39 20 00 04 */	li r9, 4
/* 80951920  39 5E 00 28 */	addi r10, r30, 0x28
/* 80951924  48 00 5B C5 */	bl __ct__11daNpc_Aru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80951928:
/* 80951928  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8095192C  60 00 00 08 */	ori r0, r0, 8
/* 80951930  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80951934:
/* 80951934  7F A3 EB 78 */	mr r3, r29
/* 80951938  48 00 0D A5 */	bl getType__11daNpc_Aru_cFv
/* 8095193C  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80951940  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80951944  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80951948  28 03 FF FF */	cmplwi r3, 0xffff
/* 8095194C  38 00 FF FF */	li r0, -1
/* 80951950  41 82 00 08 */	beq lbl_80951958
/* 80951954  7C 60 1B 78 */	mr r0, r3
lbl_80951958:
/* 80951958  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8095195C  38 00 00 00 */	li r0, 0
/* 80951960  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80951964  7F A3 EB 78 */	mr r3, r29
/* 80951968  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 8095196C  54 00 10 3A */	slwi r0, r0, 2
/* 80951970  38 9E 00 9C */	addi r4, r30, 0x9c
/* 80951974  7C 84 00 2E */	lwzx r4, r4, r0
/* 80951978  38 BE 00 88 */	addi r5, r30, 0x88
/* 8095197C  4B 7F 6A 7C */	b loadRes__8daNpcT_cFPCScPPCc
/* 80951980  7C 7E 1B 78 */	mr r30, r3
/* 80951984  2C 1E 00 04 */	cmpwi r30, 4
/* 80951988  40 82 02 0C */	bne lbl_80951B94
/* 8095198C  7F A3 EB 78 */	mr r3, r29
/* 80951990  48 00 0D B1 */	bl isDelete__11daNpc_Aru_cFv
/* 80951994  2C 03 00 00 */	cmpwi r3, 0
/* 80951998  41 82 00 0C */	beq lbl_809519A4
/* 8095199C  38 60 00 05 */	li r3, 5
/* 809519A0  48 00 01 F8 */	b lbl_80951B98
lbl_809519A4:
/* 809519A4  7F A3 EB 78 */	mr r3, r29
/* 809519A8  3C 80 80 95 */	lis r4, createHeapCallBack__11daNpc_Aru_cFP10fopAc_ac_c@ha
/* 809519AC  38 84 20 C4 */	addi r4, r4, createHeapCallBack__11daNpc_Aru_cFP10fopAc_ac_c@l
/* 809519B0  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 809519B4  54 00 10 3A */	slwi r0, r0, 2
/* 809519B8  38 BF 00 A0 */	addi r5, r31, 0xa0
/* 809519BC  7C A5 00 2E */	lwzx r5, r5, r0
/* 809519C0  4B 6C 8A F0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809519C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809519C8  40 82 00 0C */	bne lbl_809519D4
/* 809519CC  38 60 00 05 */	li r3, 5
/* 809519D0  48 00 01 C8 */	b lbl_80951B98
lbl_809519D4:
/* 809519D4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809519D8  80 63 00 04 */	lwz r3, 4(r3)
/* 809519DC  38 03 00 24 */	addi r0, r3, 0x24
/* 809519E0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809519E4  7F A3 EB 78 */	mr r3, r29
/* 809519E8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 809519EC  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 809519F0  FC 60 08 90 */	fmr f3, f1
/* 809519F4  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 809519F8  C0 BF 00 C4 */	lfs f5, 0xc4(r31)
/* 809519FC  FC C0 20 90 */	fmr f6, f4
/* 80951A00  4B 6C 8B 48 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80951A04  38 7D 05 80 */	addi r3, r29, 0x580
/* 80951A08  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80951A0C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80951A10  38 C0 00 03 */	li r6, 3
/* 80951A14  38 E0 00 01 */	li r7, 1
/* 80951A18  4B 96 EB 18 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80951A1C  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80951A20  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80951A24  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80951A28  FC 40 08 90 */	fmr f2, f1
/* 80951A2C  4B 6F F2 70 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80951A30  7F A3 EB 78 */	mr r3, r29
/* 80951A34  48 00 0D 99 */	bl reset__11daNpc_Aru_cFv
/* 80951A38  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80951A3C  90 01 00 08 */	stw r0, 8(r1)
/* 80951A40  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80951A44  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80951A48  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80951A4C  7F A6 EB 78 */	mr r6, r29
/* 80951A50  38 E0 00 01 */	li r7, 1
/* 80951A54  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80951A58  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80951A5C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80951A60  4B 72 47 E8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80951A64  38 7D 08 64 */	addi r3, r29, 0x864
/* 80951A68  38 9F 00 00 */	addi r4, r31, 0
/* 80951A6C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80951A70  FC 00 00 1E */	fctiwz f0, f0
/* 80951A74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80951A78  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80951A7C  38 A0 00 00 */	li r5, 0
/* 80951A80  7F A6 EB 78 */	mr r6, r29
/* 80951A84  4B 73 1D DC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80951A88  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80951A8C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80951A90  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80951A94  4B 73 2E 20 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80951A98  38 1D 08 64 */	addi r0, r29, 0x864
/* 80951A9C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80951AA0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80951AA4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80951AA8  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80951AAC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80951AB0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80951AB4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80951AB8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80951ABC  4B 72 4F F0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80951AC0  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80951AC4  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80951AC8  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80951ACC  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80951AD0  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80951AD4  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80951AD8  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80951ADC  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80951AE0  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80951AE4  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80951AE8  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80951AEC  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80951AF0  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80951AF4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80951AF8  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80951AFC  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80951B00  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80951B04  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80951B08  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80951B0C  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80951B10  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80951B14  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80951B18  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80951B1C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80951B20  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80951B24  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80951B28  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80951B2C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80951B30  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80951B34  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80951B38  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80951B3C  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80951B40  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80951B44  41 82 00 14 */	beq lbl_80951B58
/* 80951B48  7F A3 EB 78 */	mr r3, r29
/* 80951B4C  4B 7F 71 24 */	b setEnvTevColor__8daNpcT_cFv
/* 80951B50  7F A3 EB 78 */	mr r3, r29
/* 80951B54  4B 7F 71 78 */	b setRoomNo__8daNpcT_cFv
lbl_80951B58:
/* 80951B58  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80951B5C  28 00 00 03 */	cmplwi r0, 3
/* 80951B60  40 82 00 1C */	bne lbl_80951B7C
/* 80951B64  38 60 02 3D */	li r3, 0x23d
/* 80951B68  4B 7F AF 44 */	b daNpcT_chkEvtBit__FUl
/* 80951B6C  2C 03 00 00 */	cmpwi r3, 0
/* 80951B70  41 82 00 0C */	beq lbl_80951B7C
/* 80951B74  38 60 00 05 */	li r3, 5
/* 80951B78  48 00 00 20 */	b lbl_80951B98
lbl_80951B7C:
/* 80951B7C  38 00 00 01 */	li r0, 1
/* 80951B80  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80951B84  7F A3 EB 78 */	mr r3, r29
/* 80951B88  48 00 04 89 */	bl Execute__11daNpc_Aru_cFv
/* 80951B8C  38 00 00 00 */	li r0, 0
/* 80951B90  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80951B94:
/* 80951B94  7F C3 F3 78 */	mr r3, r30
lbl_80951B98:
/* 80951B98  39 61 00 30 */	addi r11, r1, 0x30
/* 80951B9C  4B A1 06 8C */	b _restgpr_29
/* 80951BA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80951BA4  7C 08 03 A6 */	mtlr r0
/* 80951BA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80951BAC  4E 80 00 20 */	blr 
