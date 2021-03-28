lbl_80A74150:
/* 80A74150  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A74154  7C 08 02 A6 */	mflr r0
/* 80A74158  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A7415C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A74160  4B 8E E0 64 */	b _savegpr_23
/* 80A74164  7C 7D 1B 78 */	mr r29, r3
/* 80A74168  3C 80 80 A8 */	lis r4, m__17daNpc_Moi_Param_c@ha
/* 80A7416C  3B E4 AE F0 */	addi r31, r4, m__17daNpc_Moi_Param_c@l
/* 80A74170  3C 80 80 A8 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A74174  3B 24 B1 5C */	addi r25, r4, cNullVec__6Z2Calc@l
/* 80A74178  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A7417C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A74180  40 82 00 40 */	bne lbl_80A741C0
/* 80A74184  28 1D 00 00 */	cmplwi r29, 0
/* 80A74188  41 82 00 2C */	beq lbl_80A741B4
/* 80A7418C  38 19 00 80 */	addi r0, r25, 0x80
/* 80A74190  90 01 00 08 */	stw r0, 8(r1)
/* 80A74194  38 99 00 CC */	addi r4, r25, 0xcc
/* 80A74198  38 B9 02 FC */	addi r5, r25, 0x2fc
/* 80A7419C  38 D9 06 D0 */	addi r6, r25, 0x6d0
/* 80A741A0  38 E0 00 04 */	li r7, 4
/* 80A741A4  39 19 08 30 */	addi r8, r25, 0x830
/* 80A741A8  39 20 00 04 */	li r9, 4
/* 80A741AC  39 59 00 60 */	addi r10, r25, 0x60
/* 80A741B0  48 00 6A D9 */	bl __ct__11daNpc_Moi_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A741B4:
/* 80A741B4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A741B8  60 00 00 08 */	ori r0, r0, 8
/* 80A741BC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A741C0:
/* 80A741C0  7F A3 EB 78 */	mr r3, r29
/* 80A741C4  48 00 0A 35 */	bl getType__11daNpc_Moi_cFv
/* 80A741C8  98 7D 15 C4 */	stb r3, 0x15c4(r29)
/* 80A741CC  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A741D0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A741D4  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A741D8  38 00 FF FF */	li r0, -1
/* 80A741DC  41 82 00 08 */	beq lbl_80A741E4
/* 80A741E0  7C 60 1B 78 */	mr r0, r3
lbl_80A741E4:
/* 80A741E4  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A741E8  38 00 00 00 */	li r0, 0
/* 80A741EC  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A741F0  7F A3 EB 78 */	mr r3, r29
/* 80A741F4  88 1D 15 C4 */	lbz r0, 0x15c4(r29)
/* 80A741F8  54 00 10 3A */	slwi r0, r0, 2
/* 80A741FC  38 99 00 B0 */	addi r4, r25, 0xb0
/* 80A74200  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A74204  38 B9 00 80 */	addi r5, r25, 0x80
/* 80A74208  4B 6D 41 F0 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80A7420C  7C 7E 1B 78 */	mr r30, r3
/* 80A74210  2C 1E 00 04 */	cmpwi r30, 4
/* 80A74214  40 82 02 44 */	bne lbl_80A74458
/* 80A74218  7F A3 EB 78 */	mr r3, r29
/* 80A7421C  48 00 0A 51 */	bl isDelete__11daNpc_Moi_cFv
/* 80A74220  2C 03 00 00 */	cmpwi r3, 0
/* 80A74224  41 82 00 0C */	beq lbl_80A74230
/* 80A74228  38 60 00 05 */	li r3, 5
/* 80A7422C  48 00 02 30 */	b lbl_80A7445C
lbl_80A74230:
/* 80A74230  7F A3 EB 78 */	mr r3, r29
/* 80A74234  3C 80 80 A7 */	lis r4, createHeapCallBack__11daNpc_Moi_cFP10fopAc_ac_c@ha
/* 80A74238  38 84 4B 80 */	addi r4, r4, createHeapCallBack__11daNpc_Moi_cFP10fopAc_ac_c@l
/* 80A7423C  88 1D 15 C4 */	lbz r0, 0x15c4(r29)
/* 80A74240  54 00 10 3A */	slwi r0, r0, 2
/* 80A74244  38 BF 00 BC */	addi r5, r31, 0xbc
/* 80A74248  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A7424C  4B 5A 62 64 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A74250  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A74254  40 82 00 0C */	bne lbl_80A74260
/* 80A74258  38 60 00 05 */	li r3, 5
/* 80A7425C  48 00 02 00 */	b lbl_80A7445C
lbl_80A74260:
/* 80A74260  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A74264  80 63 00 04 */	lwz r3, 4(r3)
/* 80A74268  38 03 00 24 */	addi r0, r3, 0x24
/* 80A7426C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A74270  7F A3 EB 78 */	mr r3, r29
/* 80A74274  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 80A74278  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80A7427C  FC 60 08 90 */	fmr f3, f1
/* 80A74280  C0 9F 00 E0 */	lfs f4, 0xe0(r31)
/* 80A74284  C0 BF 00 E4 */	lfs f5, 0xe4(r31)
/* 80A74288  FC C0 20 90 */	fmr f6, f4
/* 80A7428C  4B 5A 62 BC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A74290  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A74294  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A74298  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A7429C  38 C0 00 03 */	li r6, 3
/* 80A742A0  38 E0 00 01 */	li r7, 1
/* 80A742A4  4B 84 C2 8C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A742A8  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80A742AC  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80A742B0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80A742B4  FC 40 08 90 */	fmr f2, f1
/* 80A742B8  4B 5D C9 E4 */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80A742BC  7F A3 EB 78 */	mr r3, r29
/* 80A742C0  48 00 0A CD */	bl reset__11daNpc_Moi_cFv
/* 80A742C4  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A742C8  90 01 00 08 */	stw r0, 8(r1)
/* 80A742CC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A742D0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A742D4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A742D8  7F A6 EB 78 */	mr r6, r29
/* 80A742DC  38 E0 00 01 */	li r7, 1
/* 80A742E0  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A742E4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A742E8  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A742EC  4B 60 1F 5C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A742F0  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A742F4  38 9F 00 00 */	addi r4, r31, 0
/* 80A742F8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A742FC  FC 00 00 1E */	fctiwz f0, f0
/* 80A74300  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A74304  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A74308  38 A0 00 00 */	li r5, 0
/* 80A7430C  7F A6 EB 78 */	mr r6, r29
/* 80A74310  4B 60 F5 50 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A74314  3A E0 00 00 */	li r23, 0
/* 80A74318  3B 80 00 00 */	li r28, 0
/* 80A7431C  3C 60 80 3B */	lis r3, mCcDCyl__8daNpcT_c@ha
/* 80A74320  3B 23 36 D8 */	addi r25, r3, mCcDCyl__8daNpcT_c@l
/* 80A74324  3B 5D 08 64 */	addi r26, r29, 0x864
/* 80A74328  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A7432C  3B 63 7F A4 */	addi r27, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
lbl_80A74330:
/* 80A74330  7F 1D E2 14 */	add r24, r29, r28
/* 80A74334  38 78 0E 5C */	addi r3, r24, 0xe5c
/* 80A74338  7F 24 CB 78 */	mr r4, r25
/* 80A7433C  4B 61 05 78 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A74340  93 58 0E A0 */	stw r26, 0xea0(r24)
/* 80A74344  93 78 0F 00 */	stw r27, 0xf00(r24)
/* 80A74348  3A F7 00 01 */	addi r23, r23, 1
/* 80A7434C  2C 17 00 04 */	cmpwi r23, 4
/* 80A74350  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 80A74354  41 80 FF DC */	blt lbl_80A74330
/* 80A74358  38 7D 14 88 */	addi r3, r29, 0x1488
/* 80A7435C  3C 80 80 3B */	lis r4, mCcDSph__8daNpcT_c@ha
/* 80A74360  38 84 37 1C */	addi r4, r4, mCcDSph__8daNpcT_c@l
/* 80A74364  4B 61 06 D0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80A74368  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A7436C  90 1D 14 CC */	stw r0, 0x14cc(r29)
/* 80A74370  88 1D 15 C4 */	lbz r0, 0x15c4(r29)
/* 80A74374  28 00 00 03 */	cmplwi r0, 3
/* 80A74378  40 82 00 1C */	bne lbl_80A74394
/* 80A7437C  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80A74380  60 00 00 02 */	ori r0, r0, 2
/* 80A74384  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80A74388  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80A7438C  60 00 00 04 */	ori r0, r0, 4
/* 80A74390  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_80A74394:
/* 80A74394  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A74398  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7439C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A743A0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A743A4  4B 60 27 08 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A743A8  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A743AC  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A743B0  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A743B4  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A743B8  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A743BC  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A743C0  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A743C4  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A743C8  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A743CC  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A743D0  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A743D4  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A743D8  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A743DC  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A743E0  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A743E4  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A743E8  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A743EC  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A743F0  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A743F4  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A743F8  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A743FC  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A74400  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A74404  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A74408  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A7440C  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A74410  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A74414  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A74418  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A7441C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A74420  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80A74424  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A74428  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A7442C  41 82 00 14 */	beq lbl_80A74440
/* 80A74430  7F A3 EB 78 */	mr r3, r29
/* 80A74434  4B 6D 48 3C */	b setEnvTevColor__8daNpcT_cFv
/* 80A74438  7F A3 EB 78 */	mr r3, r29
/* 80A7443C  4B 6D 48 90 */	b setRoomNo__8daNpcT_cFv
lbl_80A74440:
/* 80A74440  38 00 00 01 */	li r0, 1
/* 80A74444  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A74448  7F A3 EB 78 */	mr r3, r29
/* 80A7444C  48 00 05 E1 */	bl Execute__11daNpc_Moi_cFv
/* 80A74450  38 00 00 00 */	li r0, 0
/* 80A74454  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A74458:
/* 80A74458  7F C3 F3 78 */	mr r3, r30
lbl_80A7445C:
/* 80A7445C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A74460  4B 8E DD B0 */	b _restgpr_23
/* 80A74464  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A74468  7C 08 03 A6 */	mtlr r0
/* 80A7446C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A74470  4E 80 00 20 */	blr 
