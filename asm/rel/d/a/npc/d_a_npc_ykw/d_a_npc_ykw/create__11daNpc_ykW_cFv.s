lbl_80B5F084:
/* 80B5F084  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B5F088  7C 08 02 A6 */	mflr r0
/* 80B5F08C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5F090  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5F094  4B 80 31 48 */	b _savegpr_29
/* 80B5F098  7C 7D 1B 78 */	mr r29, r3
/* 80B5F09C  3C 80 80 B6 */	lis r4, m__17daNpc_ykW_Param_c@ha
/* 80B5F0A0  3B E4 7C 38 */	addi r31, r4, m__17daNpc_ykW_Param_c@l
/* 80B5F0A4  3C 80 80 B6 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B5F0A8  3B C4 7F 40 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B5F0AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B5F0B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B5F0B4  40 82 00 40 */	bne lbl_80B5F0F4
/* 80B5F0B8  28 1D 00 00 */	cmplwi r29, 0
/* 80B5F0BC  41 82 00 2C */	beq lbl_80B5F0E8
/* 80B5F0C0  38 1E 00 78 */	addi r0, r30, 0x78
/* 80B5F0C4  90 01 00 08 */	stw r0, 8(r1)
/* 80B5F0C8  38 9E 00 BC */	addi r4, r30, 0xbc
/* 80B5F0CC  38 BE 02 44 */	addi r5, r30, 0x244
/* 80B5F0D0  38 DE 06 18 */	addi r6, r30, 0x618
/* 80B5F0D4  38 E0 00 04 */	li r7, 4
/* 80B5F0D8  39 1E 06 F8 */	addi r8, r30, 0x6f8
/* 80B5F0DC  39 20 00 04 */	li r9, 4
/* 80B5F0E0  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B5F0E4  48 00 89 59 */	bl __ct__11daNpc_ykW_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B5F0E8:
/* 80B5F0E8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B5F0EC  60 00 00 08 */	ori r0, r0, 8
/* 80B5F0F0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B5F0F4:
/* 80B5F0F4  7F A3 EB 78 */	mr r3, r29
/* 80B5F0F8  48 00 0B D1 */	bl getType__11daNpc_ykW_cFv
/* 80B5F0FC  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B5F100  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B5F104  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80B5F108  28 03 FF FF */	cmplwi r3, 0xffff
/* 80B5F10C  38 00 FF FF */	li r0, -1
/* 80B5F110  41 82 00 08 */	beq lbl_80B5F118
/* 80B5F114  7C 60 1B 78 */	mr r0, r3
lbl_80B5F118:
/* 80B5F118  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B5F11C  38 00 00 00 */	li r0, 0
/* 80B5F120  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B5F124  7F A3 EB 78 */	mr r3, r29
/* 80B5F128  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B5F12C  54 00 10 3A */	slwi r0, r0, 2
/* 80B5F130  38 9E 00 9C */	addi r4, r30, 0x9c
/* 80B5F134  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B5F138  38 BE 00 78 */	addi r5, r30, 0x78
/* 80B5F13C  4B 5E 92 BC */	b loadRes__8daNpcT_cFPCScPPCc
/* 80B5F140  7C 7E 1B 78 */	mr r30, r3
/* 80B5F144  2C 1E 00 04 */	cmpwi r30, 4
/* 80B5F148  40 82 01 E8 */	bne lbl_80B5F330
/* 80B5F14C  7F A3 EB 78 */	mr r3, r29
/* 80B5F150  48 00 0B E1 */	bl isDelete__11daNpc_ykW_cFv
/* 80B5F154  2C 03 00 00 */	cmpwi r3, 0
/* 80B5F158  41 82 00 0C */	beq lbl_80B5F164
/* 80B5F15C  38 60 00 05 */	li r3, 5
/* 80B5F160  48 00 01 D4 */	b lbl_80B5F334
lbl_80B5F164:
/* 80B5F164  7F A3 EB 78 */	mr r3, r29
/* 80B5F168  3C 80 80 B6 */	lis r4, createHeapCallBack__11daNpc_ykW_cFP10fopAc_ac_c@ha
/* 80B5F16C  38 84 F8 AC */	addi r4, r4, createHeapCallBack__11daNpc_ykW_cFP10fopAc_ac_c@l
/* 80B5F170  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B5F174  54 00 10 3A */	slwi r0, r0, 2
/* 80B5F178  38 BF 00 B4 */	addi r5, r31, 0xb4
/* 80B5F17C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B5F180  4B 4B B3 30 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B5F184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B5F188  40 82 00 0C */	bne lbl_80B5F194
/* 80B5F18C  38 60 00 05 */	li r3, 5
/* 80B5F190  48 00 01 A4 */	b lbl_80B5F334
lbl_80B5F194:
/* 80B5F194  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B5F198  80 63 00 04 */	lwz r3, 4(r3)
/* 80B5F19C  38 03 00 24 */	addi r0, r3, 0x24
/* 80B5F1A0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B5F1A4  7F A3 EB 78 */	mr r3, r29
/* 80B5F1A8  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80B5F1AC  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 80B5F1B0  FC 60 08 90 */	fmr f3, f1
/* 80B5F1B4  C0 9F 00 DC */	lfs f4, 0xdc(r31)
/* 80B5F1B8  FC A0 20 90 */	fmr f5, f4
/* 80B5F1BC  FC C0 20 90 */	fmr f6, f4
/* 80B5F1C0  4B 4B B3 88 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B5F1C4  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B5F1C8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B5F1CC  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B5F1D0  38 C0 00 03 */	li r6, 3
/* 80B5F1D4  38 E0 00 01 */	li r7, 1
/* 80B5F1D8  4B 76 13 58 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B5F1DC  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80B5F1E0  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80B5F1E4  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80B5F1E8  FC 40 08 90 */	fmr f2, f1
/* 80B5F1EC  4B 4F 1A B0 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80B5F1F0  7F A3 EB 78 */	mr r3, r29
/* 80B5F1F4  48 00 0C 79 */	bl reset__11daNpc_ykW_cFv
/* 80B5F1F8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B5F1FC  90 01 00 08 */	stw r0, 8(r1)
/* 80B5F200  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B5F204  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B5F208  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B5F20C  7F A6 EB 78 */	mr r6, r29
/* 80B5F210  38 E0 00 01 */	li r7, 1
/* 80B5F214  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B5F218  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B5F21C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B5F220  4B 51 70 28 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B5F224  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B5F228  38 9F 00 00 */	addi r4, r31, 0
/* 80B5F22C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B5F230  FC 00 00 1E */	fctiwz f0, f0
/* 80B5F234  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B5F238  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B5F23C  38 A0 00 00 */	li r5, 0
/* 80B5F240  7F A6 EB 78 */	mr r6, r29
/* 80B5F244  4B 52 46 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B5F248  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B5F24C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80B5F250  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80B5F254  4B 52 56 60 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B5F258  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B5F25C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B5F260  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B5F264  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B5F268  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B5F26C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B5F270  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B5F274  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B5F278  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B5F27C  4B 51 78 30 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B5F280  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B5F284  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B5F288  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B5F28C  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B5F290  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B5F294  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B5F298  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B5F29C  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B5F2A0  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B5F2A4  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B5F2A8  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B5F2AC  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B5F2B0  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B5F2B4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B5F2B8  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B5F2BC  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B5F2C0  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B5F2C4  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B5F2C8  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B5F2CC  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B5F2D0  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B5F2D4  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B5F2D8  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B5F2DC  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B5F2E0  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B5F2E4  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B5F2E8  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B5F2EC  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B5F2F0  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B5F2F4  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B5F2F8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80B5F2FC  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B5F300  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B5F304  41 82 00 14 */	beq lbl_80B5F318
/* 80B5F308  7F A3 EB 78 */	mr r3, r29
/* 80B5F30C  4B 5E 99 64 */	b setEnvTevColor__8daNpcT_cFv
/* 80B5F310  7F A3 EB 78 */	mr r3, r29
/* 80B5F314  4B 5E 99 B8 */	b setRoomNo__8daNpcT_cFv
lbl_80B5F318:
/* 80B5F318  38 00 00 01 */	li r0, 1
/* 80B5F31C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B5F320  7F A3 EB 78 */	mr r3, r29
/* 80B5F324  48 00 04 95 */	bl Execute__11daNpc_ykW_cFv
/* 80B5F328  38 00 00 00 */	li r0, 0
/* 80B5F32C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B5F330:
/* 80B5F330  7F C3 F3 78 */	mr r3, r30
lbl_80B5F334:
/* 80B5F334  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5F338  4B 80 2E F0 */	b _restgpr_29
/* 80B5F33C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5F340  7C 08 03 A6 */	mtlr r0
/* 80B5F344  38 21 00 30 */	addi r1, r1, 0x30
/* 80B5F348  4E 80 00 20 */	blr 
