lbl_80A92EA4:
/* 80A92EA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A92EA8  7C 08 02 A6 */	mflr r0
/* 80A92EAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A92EB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A92EB4  4B 8C F3 28 */	b _savegpr_29
/* 80A92EB8  7C 7D 1B 78 */	mr r29, r3
/* 80A92EBC  3C 80 80 A9 */	lis r4, m__24daNpc_Pachi_Besu_Param_c@ha
/* 80A92EC0  3B E4 6A 6C */	addi r31, r4, m__24daNpc_Pachi_Besu_Param_c@l
/* 80A92EC4  3C 80 80 A9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A92EC8  3B C4 6C 40 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A92ECC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A92ED0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A92ED4  40 82 00 40 */	bne lbl_80A92F14
/* 80A92ED8  28 1D 00 00 */	cmplwi r29, 0
/* 80A92EDC  41 82 00 2C */	beq lbl_80A92F08
/* 80A92EE0  38 1E 00 60 */	addi r0, r30, 0x60
/* 80A92EE4  90 01 00 08 */	stw r0, 8(r1)
/* 80A92EE8  38 9E 00 A4 */	addi r4, r30, 0xa4
/* 80A92EEC  38 BE 03 EC */	addi r5, r30, 0x3ec
/* 80A92EF0  38 DE 07 88 */	addi r6, r30, 0x788
/* 80A92EF4  38 E0 00 04 */	li r7, 4
/* 80A92EF8  39 1E 09 58 */	addi r8, r30, 0x958
/* 80A92EFC  39 20 00 04 */	li r9, 4
/* 80A92F00  39 5E 00 50 */	addi r10, r30, 0x50
/* 80A92F04  48 00 39 F1 */	bl __ct__18daNpc_Pachi_Besu_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A92F08:
/* 80A92F08  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A92F0C  60 00 00 08 */	ori r0, r0, 8
/* 80A92F10  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A92F14:
/* 80A92F14  7F A3 EB 78 */	mr r3, r29
/* 80A92F18  48 00 08 51 */	bl getType__18daNpc_Pachi_Besu_cFv
/* 80A92F1C  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80A92F20  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A92F24  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A92F28  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A92F2C  38 00 FF FF */	li r0, -1
/* 80A92F30  41 82 00 08 */	beq lbl_80A92F38
/* 80A92F34  7C 60 1B 78 */	mr r0, r3
lbl_80A92F38:
/* 80A92F38  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A92F3C  38 00 00 00 */	li r0, 0
/* 80A92F40  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A92F44  7F A3 EB 78 */	mr r3, r29
/* 80A92F48  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A92F4C  54 00 10 3A */	slwi r0, r0, 2
/* 80A92F50  38 9E 00 9C */	addi r4, r30, 0x9c
/* 80A92F54  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A92F58  38 BE 00 60 */	addi r5, r30, 0x60
/* 80A92F5C  4B 6B 54 9C */	b loadRes__8daNpcT_cFPCScPPCc
/* 80A92F60  7C 7E 1B 78 */	mr r30, r3
/* 80A92F64  2C 1E 00 04 */	cmpwi r30, 4
/* 80A92F68  40 82 01 F8 */	bne lbl_80A93160
/* 80A92F6C  7F A3 EB 78 */	mr r3, r29
/* 80A92F70  3C 80 80 A9 */	lis r4, createHeapCallBack__18daNpc_Pachi_Besu_cFP10fopAc_ac_c@ha
/* 80A92F74  38 84 36 F0 */	addi r4, r4, createHeapCallBack__18daNpc_Pachi_Besu_cFP10fopAc_ac_c@l
/* 80A92F78  38 A0 35 B0 */	li r5, 0x35b0
/* 80A92F7C  4B 58 75 34 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A92F80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A92F84  40 82 00 0C */	bne lbl_80A92F90
/* 80A92F88  38 60 00 05 */	li r3, 5
/* 80A92F8C  48 00 01 D8 */	b lbl_80A93164
lbl_80A92F90:
/* 80A92F90  7F A3 EB 78 */	mr r3, r29
/* 80A92F94  48 00 07 F5 */	bl isDelete__18daNpc_Pachi_Besu_cFv
/* 80A92F98  2C 03 00 00 */	cmpwi r3, 0
/* 80A92F9C  41 82 00 0C */	beq lbl_80A92FA8
/* 80A92FA0  38 60 00 05 */	li r3, 5
/* 80A92FA4  48 00 01 C0 */	b lbl_80A93164
lbl_80A92FA8:
/* 80A92FA8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A92FAC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A92FB0  38 03 00 24 */	addi r0, r3, 0x24
/* 80A92FB4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A92FB8  7F A3 EB 78 */	mr r3, r29
/* 80A92FBC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A92FC0  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80A92FC4  FC 60 08 90 */	fmr f3, f1
/* 80A92FC8  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80A92FCC  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80A92FD0  FC C0 20 90 */	fmr f6, f4
/* 80A92FD4  4B 58 75 74 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A92FD8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A92FDC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A92FE0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A92FE4  38 C0 00 03 */	li r6, 3
/* 80A92FE8  38 E0 00 01 */	li r7, 1
/* 80A92FEC  4B 82 D5 44 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A92FF0  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A92FF4  90 01 00 08 */	stw r0, 8(r1)
/* 80A92FF8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A92FFC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A93000  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A93004  7F A6 EB 78 */	mr r6, r29
/* 80A93008  38 E0 00 01 */	li r7, 1
/* 80A9300C  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A93010  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A93014  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A93018  4B 5E 32 30 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A9301C  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A93020  38 9F 00 00 */	addi r4, r31, 0
/* 80A93024  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A93028  FC 00 00 1E */	fctiwz f0, f0
/* 80A9302C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A93030  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A93034  38 A0 00 00 */	li r5, 0
/* 80A93038  7F A6 EB 78 */	mr r6, r29
/* 80A9303C  4B 5F 08 24 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A93040  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80A93044  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80A93048  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80A9304C  4B 5F 18 68 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A93050  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A93054  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80A93058  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A9305C  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A93060  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80A93064  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A93068  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A9306C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A93070  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A93074  4B 5E 3A 38 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A93078  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A9307C  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A93080  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A93084  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A93088  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A9308C  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A93090  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A93094  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A93098  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A9309C  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A930A0  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A930A4  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A930A8  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A930AC  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A930B0  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A930B4  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A930B8  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A930BC  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A930C0  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A930C4  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A930C8  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A930CC  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A930D0  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A930D4  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A930D8  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A930DC  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A930E0  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A930E4  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A930E8  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A930EC  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A930F0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A930F4  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A930F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A930FC  41 82 00 14 */	beq lbl_80A93110
/* 80A93100  7F A3 EB 78 */	mr r3, r29
/* 80A93104  4B 6B 5B 6C */	b setEnvTevColor__8daNpcT_cFv
/* 80A93108  7F A3 EB 78 */	mr r3, r29
/* 80A9310C  4B 6B 5B C0 */	b setRoomNo__8daNpcT_cFv
lbl_80A93110:
/* 80A93110  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80A93114  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A93118  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80A9311C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A93120  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80A93124  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A93128  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A9312C  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80A93130  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A93134  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80A93138  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A9313C  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80A93140  7F A3 EB 78 */	mr r3, r29
/* 80A93144  48 00 06 65 */	bl reset__18daNpc_Pachi_Besu_cFv
/* 80A93148  38 00 00 01 */	li r0, 1
/* 80A9314C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A93150  7F A3 EB 78 */	mr r3, r29
/* 80A93154  48 00 04 E9 */	bl Execute__18daNpc_Pachi_Besu_cFv
/* 80A93158  38 00 00 00 */	li r0, 0
/* 80A9315C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A93160:
/* 80A93160  7F C3 F3 78 */	mr r3, r30
lbl_80A93164:
/* 80A93164  39 61 00 30 */	addi r11, r1, 0x30
/* 80A93168  4B 8C F0 C0 */	b _restgpr_29
/* 80A9316C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A93170  7C 08 03 A6 */	mtlr r0
/* 80A93174  38 21 00 30 */	addi r1, r1, 0x30
/* 80A93178  4E 80 00 20 */	blr 
