lbl_80AA8DE8:
/* 80AA8DE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AA8DEC  7C 08 02 A6 */	mflr r0
/* 80AA8DF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AA8DF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA8DF8  4B 8B 93 E4 */	b _savegpr_29
/* 80AA8DFC  7C 7D 1B 78 */	mr r29, r3
/* 80AA8E00  3C 80 80 AB */	lis r4, m__18daNpc_Post_Param_c@ha
/* 80AA8E04  3B E4 D1 EC */	addi r31, r4, m__18daNpc_Post_Param_c@l
/* 80AA8E08  3C 80 80 AB */	lis r4, cNullVec__6Z2Calc@ha
/* 80AA8E0C  3B C4 D3 AC */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80AA8E10  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AA8E14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AA8E18  40 82 00 40 */	bne lbl_80AA8E58
/* 80AA8E1C  28 1D 00 00 */	cmplwi r29, 0
/* 80AA8E20  41 82 00 2C */	beq lbl_80AA8E4C
/* 80AA8E24  38 1E 00 68 */	addi r0, r30, 0x68
/* 80AA8E28  90 01 00 08 */	stw r0, 8(r1)
/* 80AA8E2C  38 9E 00 94 */	addi r4, r30, 0x94
/* 80AA8E30  38 BE 02 38 */	addi r5, r30, 0x238
/* 80AA8E34  38 DE 03 A4 */	addi r6, r30, 0x3a4
/* 80AA8E38  38 E0 00 04 */	li r7, 4
/* 80AA8E3C  39 1E 04 94 */	addi r8, r30, 0x494
/* 80AA8E40  39 20 00 04 */	li r9, 4
/* 80AA8E44  39 5E 00 40 */	addi r10, r30, 0x40
/* 80AA8E48  48 00 41 A9 */	bl __ct__12daNpc_Post_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AA8E4C:
/* 80AA8E4C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AA8E50  60 00 00 08 */	ori r0, r0, 8
/* 80AA8E54  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AA8E58:
/* 80AA8E58  7F A3 EB 78 */	mr r3, r29
/* 80AA8E5C  48 00 09 39 */	bl getType__12daNpc_Post_cFv
/* 80AA8E60  98 7D 0F 8C */	stb r3, 0xf8c(r29)
/* 80AA8E64  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80AA8E68  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80AA8E6C  28 03 FF FF */	cmplwi r3, 0xffff
/* 80AA8E70  38 00 FF FF */	li r0, -1
/* 80AA8E74  41 82 00 08 */	beq lbl_80AA8E7C
/* 80AA8E78  7C 60 1B 78 */	mr r0, r3
lbl_80AA8E7C:
/* 80AA8E7C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80AA8E80  4B 70 36 FC */	b dKy_darkworld_check__Fv
/* 80AA8E84  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80AA8E88  7F A3 EB 78 */	mr r3, r29
/* 80AA8E8C  88 1D 0F 8C */	lbz r0, 0xf8c(r29)
/* 80AA8E90  54 00 10 3A */	slwi r0, r0, 2
/* 80AA8E94  38 9E 00 84 */	addi r4, r30, 0x84
/* 80AA8E98  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AA8E9C  38 BE 00 68 */	addi r5, r30, 0x68
/* 80AA8EA0  4B 69 F5 58 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80AA8EA4  7C 7E 1B 78 */	mr r30, r3
/* 80AA8EA8  2C 1E 00 04 */	cmpwi r30, 4
/* 80AA8EAC  40 82 01 E8 */	bne lbl_80AA9094
/* 80AA8EB0  7F A3 EB 78 */	mr r3, r29
/* 80AA8EB4  48 00 09 2D */	bl isDelete__12daNpc_Post_cFv
/* 80AA8EB8  2C 03 00 00 */	cmpwi r3, 0
/* 80AA8EBC  41 82 00 0C */	beq lbl_80AA8EC8
/* 80AA8EC0  38 60 00 05 */	li r3, 5
/* 80AA8EC4  48 00 01 D4 */	b lbl_80AA9098
lbl_80AA8EC8:
/* 80AA8EC8  7F A3 EB 78 */	mr r3, r29
/* 80AA8ECC  3C 80 80 AB */	lis r4, createHeapCallBack__12daNpc_Post_cFP10fopAc_ac_c@ha
/* 80AA8ED0  38 84 97 1C */	addi r4, r4, createHeapCallBack__12daNpc_Post_cFP10fopAc_ac_c@l
/* 80AA8ED4  88 1D 0F 8C */	lbz r0, 0xf8c(r29)
/* 80AA8ED8  54 00 10 3A */	slwi r0, r0, 2
/* 80AA8EDC  38 BF 00 94 */	addi r5, r31, 0x94
/* 80AA8EE0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AA8EE4  4B 57 15 CC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AA8EE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA8EEC  40 82 00 0C */	bne lbl_80AA8EF8
/* 80AA8EF0  38 60 00 05 */	li r3, 5
/* 80AA8EF4  48 00 01 A4 */	b lbl_80AA9098
lbl_80AA8EF8:
/* 80AA8EF8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AA8EFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AA8F00  38 03 00 24 */	addi r0, r3, 0x24
/* 80AA8F04  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AA8F08  7F A3 EB 78 */	mr r3, r29
/* 80AA8F0C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80AA8F10  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80AA8F14  FC 60 08 90 */	fmr f3, f1
/* 80AA8F18  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 80AA8F1C  C0 BF 00 B0 */	lfs f5, 0xb0(r31)
/* 80AA8F20  FC C0 20 90 */	fmr f6, f4
/* 80AA8F24  4B 57 16 24 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AA8F28  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AA8F2C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AA8F30  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AA8F34  38 C0 00 03 */	li r6, 3
/* 80AA8F38  38 E0 00 01 */	li r7, 1
/* 80AA8F3C  4B 81 75 F4 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AA8F40  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80AA8F44  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80AA8F48  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80AA8F4C  FC 40 08 90 */	fmr f2, f1
/* 80AA8F50  4B 5A 7D 4C */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80AA8F54  7F A3 EB 78 */	mr r3, r29
/* 80AA8F58  48 00 08 D1 */	bl reset__12daNpc_Post_cFv
/* 80AA8F5C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AA8F60  90 01 00 08 */	stw r0, 8(r1)
/* 80AA8F64  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AA8F68  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AA8F6C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AA8F70  7F A6 EB 78 */	mr r6, r29
/* 80AA8F74  38 E0 00 01 */	li r7, 1
/* 80AA8F78  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80AA8F7C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AA8F80  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AA8F84  4B 5C D2 C4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AA8F88  38 7D 08 64 */	addi r3, r29, 0x864
/* 80AA8F8C  38 9F 00 00 */	addi r4, r31, 0
/* 80AA8F90  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AA8F94  FC 00 00 1E */	fctiwz f0, f0
/* 80AA8F98  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AA8F9C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AA8FA0  38 A0 00 00 */	li r5, 0
/* 80AA8FA4  7F A6 EB 78 */	mr r6, r29
/* 80AA8FA8  4B 5D A8 B8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AA8FAC  38 7D 0E 50 */	addi r3, r29, 0xe50
/* 80AA8FB0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80AA8FB4  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80AA8FB8  4B 5D B8 FC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AA8FBC  38 1D 08 64 */	addi r0, r29, 0x864
/* 80AA8FC0  90 1D 0E 94 */	stw r0, 0xe94(r29)
/* 80AA8FC4  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80AA8FC8  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80AA8FCC  90 1D 0E F4 */	stw r0, 0xef4(r29)
/* 80AA8FD0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AA8FD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AA8FD8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AA8FDC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AA8FE0  4B 5C DA CC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AA8FE4  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80AA8FE8  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80AA8FEC  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80AA8FF0  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80AA8FF4  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80AA8FF8  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AA8FFC  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80AA9000  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80AA9004  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80AA9008  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80AA900C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80AA9010  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80AA9014  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80AA9018  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80AA901C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80AA9020  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80AA9024  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80AA9028  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80AA902C  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80AA9030  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80AA9034  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80AA9038  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80AA903C  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80AA9040  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80AA9044  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80AA9048  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80AA904C  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80AA9050  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80AA9054  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80AA9058  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80AA905C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80AA9060  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80AA9064  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AA9068  41 82 00 14 */	beq lbl_80AA907C
/* 80AA906C  7F A3 EB 78 */	mr r3, r29
/* 80AA9070  4B 69 FC 00 */	b setEnvTevColor__8daNpcT_cFv
/* 80AA9074  7F A3 EB 78 */	mr r3, r29
/* 80AA9078  4B 69 FC 54 */	b setRoomNo__8daNpcT_cFv
lbl_80AA907C:
/* 80AA907C  38 00 00 01 */	li r0, 1
/* 80AA9080  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80AA9084  7F A3 EB 78 */	mr r3, r29
/* 80AA9088  48 00 05 E1 */	bl Execute__12daNpc_Post_cFv
/* 80AA908C  38 00 00 00 */	li r0, 0
/* 80AA9090  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80AA9094:
/* 80AA9094  7F C3 F3 78 */	mr r3, r30
lbl_80AA9098:
/* 80AA9098  39 61 00 30 */	addi r11, r1, 0x30
/* 80AA909C  4B 8B 91 8C */	b _restgpr_29
/* 80AA90A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AA90A4  7C 08 03 A6 */	mtlr r0
/* 80AA90A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AA90AC  4E 80 00 20 */	blr 
