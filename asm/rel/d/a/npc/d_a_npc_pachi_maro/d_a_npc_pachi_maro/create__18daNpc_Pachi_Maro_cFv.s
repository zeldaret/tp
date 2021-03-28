lbl_80A97DC4:
/* 80A97DC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A97DC8  7C 08 02 A6 */	mflr r0
/* 80A97DCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A97DD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A97DD4  4B 8C A4 08 */	b _savegpr_29
/* 80A97DD8  7C 7D 1B 78 */	mr r29, r3
/* 80A97DDC  3C 80 80 AA */	lis r4, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A97DE0  3B E4 B8 8C */	addi r31, r4, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A97DE4  3C 80 80 AA */	lis r4, cNullVec__6Z2Calc@ha
/* 80A97DE8  3B C4 BA 78 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A97DEC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A97DF0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A97DF4  40 82 00 40 */	bne lbl_80A97E34
/* 80A97DF8  28 1D 00 00 */	cmplwi r29, 0
/* 80A97DFC  41 82 00 2C */	beq lbl_80A97E28
/* 80A97E00  38 1E 00 40 */	addi r0, r30, 0x40
/* 80A97E04  90 01 00 08 */	stw r0, 8(r1)
/* 80A97E08  38 9E 00 8C */	addi r4, r30, 0x8c
/* 80A97E0C  38 BE 01 A4 */	addi r5, r30, 0x1a4
/* 80A97E10  38 DE 02 BC */	addi r6, r30, 0x2bc
/* 80A97E14  38 E0 00 04 */	li r7, 4
/* 80A97E18  39 1E 03 5C */	addi r8, r30, 0x35c
/* 80A97E1C  39 20 00 04 */	li r9, 4
/* 80A97E20  39 5E 00 30 */	addi r10, r30, 0x30
/* 80A97E24  48 00 38 F1 */	bl __ct__18daNpc_Pachi_Maro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A97E28:
/* 80A97E28  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A97E2C  60 00 00 08 */	ori r0, r0, 8
/* 80A97E30  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A97E34:
/* 80A97E34  7F A3 EB 78 */	mr r3, r29
/* 80A97E38  48 00 08 05 */	bl getType__18daNpc_Pachi_Maro_cFv
/* 80A97E3C  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80A97E40  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A97E44  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A97E48  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A97E4C  38 00 FF FF */	li r0, -1
/* 80A97E50  41 82 00 08 */	beq lbl_80A97E58
/* 80A97E54  7C 60 1B 78 */	mr r0, r3
lbl_80A97E58:
/* 80A97E58  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A97E5C  38 00 00 00 */	li r0, 0
/* 80A97E60  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A97E64  7F A3 EB 78 */	mr r3, r29
/* 80A97E68  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A97E6C  54 00 10 3A */	slwi r0, r0, 2
/* 80A97E70  38 9E 00 84 */	addi r4, r30, 0x84
/* 80A97E74  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A97E78  38 BE 00 40 */	addi r5, r30, 0x40
/* 80A97E7C  4B 6B 05 7C */	b loadRes__8daNpcT_cFPCScPPCc
/* 80A97E80  7C 7E 1B 78 */	mr r30, r3
/* 80A97E84  2C 1E 00 04 */	cmpwi r30, 4
/* 80A97E88  40 82 01 F8 */	bne lbl_80A98080
/* 80A97E8C  7F A3 EB 78 */	mr r3, r29
/* 80A97E90  3C 80 80 AA */	lis r4, createHeapCallBack__18daNpc_Pachi_Maro_cFP10fopAc_ac_c@ha
/* 80A97E94  38 84 85 C4 */	addi r4, r4, createHeapCallBack__18daNpc_Pachi_Maro_cFP10fopAc_ac_c@l
/* 80A97E98  38 A0 33 10 */	li r5, 0x3310
/* 80A97E9C  4B 58 26 14 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A97EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A97EA4  40 82 00 0C */	bne lbl_80A97EB0
/* 80A97EA8  38 60 00 05 */	li r3, 5
/* 80A97EAC  48 00 01 D8 */	b lbl_80A98084
lbl_80A97EB0:
/* 80A97EB0  7F A3 EB 78 */	mr r3, r29
/* 80A97EB4  48 00 07 A9 */	bl isDelete__18daNpc_Pachi_Maro_cFv
/* 80A97EB8  2C 03 00 00 */	cmpwi r3, 0
/* 80A97EBC  41 82 00 0C */	beq lbl_80A97EC8
/* 80A97EC0  38 60 00 05 */	li r3, 5
/* 80A97EC4  48 00 01 C0 */	b lbl_80A98084
lbl_80A97EC8:
/* 80A97EC8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A97ECC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A97ED0  38 03 00 24 */	addi r0, r3, 0x24
/* 80A97ED4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A97ED8  7F A3 EB 78 */	mr r3, r29
/* 80A97EDC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A97EE0  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80A97EE4  FC 60 08 90 */	fmr f3, f1
/* 80A97EE8  C0 9F 00 98 */	lfs f4, 0x98(r31)
/* 80A97EEC  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 80A97EF0  FC C0 20 90 */	fmr f6, f4
/* 80A97EF4  4B 58 26 54 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A97EF8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A97EFC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A97F00  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A97F04  38 C0 00 03 */	li r6, 3
/* 80A97F08  38 E0 00 01 */	li r7, 1
/* 80A97F0C  4B 82 86 24 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A97F10  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A97F14  90 01 00 08 */	stw r0, 8(r1)
/* 80A97F18  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A97F1C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A97F20  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A97F24  7F A6 EB 78 */	mr r6, r29
/* 80A97F28  38 E0 00 01 */	li r7, 1
/* 80A97F2C  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A97F30  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A97F34  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A97F38  4B 5D E3 10 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A97F3C  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A97F40  38 9F 00 00 */	addi r4, r31, 0
/* 80A97F44  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A97F48  FC 00 00 1E */	fctiwz f0, f0
/* 80A97F4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A97F50  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A97F54  38 A0 00 00 */	li r5, 0
/* 80A97F58  7F A6 EB 78 */	mr r6, r29
/* 80A97F5C  4B 5E B9 04 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A97F60  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80A97F64  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80A97F68  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80A97F6C  4B 5E C9 48 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A97F70  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A97F74  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80A97F78  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A97F7C  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A97F80  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80A97F84  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A97F88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A97F8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A97F90  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A97F94  4B 5D EB 18 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A97F98  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A97F9C  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A97FA0  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A97FA4  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A97FA8  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A97FAC  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A97FB0  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A97FB4  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A97FB8  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A97FBC  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A97FC0  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A97FC4  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A97FC8  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A97FCC  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A97FD0  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A97FD4  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A97FD8  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A97FDC  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A97FE0  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A97FE4  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A97FE8  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A97FEC  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A97FF0  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A97FF4  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A97FF8  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A97FFC  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A98000  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A98004  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A98008  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A9800C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A98010  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80A98014  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A98018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A9801C  41 82 00 14 */	beq lbl_80A98030
/* 80A98020  7F A3 EB 78 */	mr r3, r29
/* 80A98024  4B 6B 0C 4C */	b setEnvTevColor__8daNpcT_cFv
/* 80A98028  7F A3 EB 78 */	mr r3, r29
/* 80A9802C  4B 6B 0C A0 */	b setRoomNo__8daNpcT_cFv
lbl_80A98030:
/* 80A98030  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80A98034  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A98038  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80A9803C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A98040  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80A98044  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A98048  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A9804C  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80A98050  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A98054  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80A98058  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A9805C  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80A98060  7F A3 EB 78 */	mr r3, r29
/* 80A98064  48 00 06 19 */	bl reset__18daNpc_Pachi_Maro_cFv
/* 80A98068  38 00 00 01 */	li r0, 1
/* 80A9806C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A98070  7F A3 EB 78 */	mr r3, r29
/* 80A98074  48 00 04 9D */	bl Execute__18daNpc_Pachi_Maro_cFv
/* 80A98078  38 00 00 00 */	li r0, 0
/* 80A9807C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A98080:
/* 80A98080  7F C3 F3 78 */	mr r3, r30
lbl_80A98084:
/* 80A98084  39 61 00 30 */	addi r11, r1, 0x30
/* 80A98088  4B 8C A1 A0 */	b _restgpr_29
/* 80A9808C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A98090  7C 08 03 A6 */	mtlr r0
/* 80A98094  38 21 00 30 */	addi r1, r1, 0x30
/* 80A98098  4E 80 00 20 */	blr 
