lbl_80A9C3C4:
/* 80A9C3C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9C3C8  7C 08 02 A6 */	mflr r0
/* 80A9C3CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9C3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9C3D4  4B 8C 5E 08 */	b _savegpr_29
/* 80A9C3D8  7C 7D 1B 78 */	mr r29, r3
/* 80A9C3DC  3C 80 80 AA */	lis r4, m__24daNpc_Pachi_Taro_Param_c@ha
/* 80A9C3E0  3B E4 16 04 */	addi r31, r4, m__24daNpc_Pachi_Taro_Param_c@l
/* 80A9C3E4  3C 80 80 AA */	lis r4, cNullVec__6Z2Calc@ha
/* 80A9C3E8  3B C4 19 2C */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80A9C3EC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A9C3F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A9C3F4  40 82 00 40 */	bne lbl_80A9C434
/* 80A9C3F8  28 1D 00 00 */	cmplwi r29, 0
/* 80A9C3FC  41 82 00 2C */	beq lbl_80A9C428
/* 80A9C400  38 1E 00 A0 */	addi r0, r30, 0xa0
/* 80A9C404  90 01 00 08 */	stw r0, 8(r1)
/* 80A9C408  38 9E 00 E8 */	addi r4, r30, 0xe8
/* 80A9C40C  38 BE 04 30 */	addi r5, r30, 0x430
/* 80A9C410  38 DE 08 AC */	addi r6, r30, 0x8ac
/* 80A9C414  38 E0 00 04 */	li r7, 4
/* 80A9C418  39 1E 0A AC */	addi r8, r30, 0xaac
/* 80A9C41C  39 20 00 04 */	li r9, 4
/* 80A9C420  39 5E 00 48 */	addi r10, r30, 0x48
/* 80A9C424  48 00 50 69 */	bl __ct__18daNpc_Pachi_Taro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A9C428:
/* 80A9C428  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A9C42C  60 00 00 08 */	ori r0, r0, 8
/* 80A9C430  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A9C434:
/* 80A9C434  7F A3 EB 78 */	mr r3, r29
/* 80A9C438  48 00 09 01 */	bl getType__18daNpc_Pachi_Taro_cFv
/* 80A9C43C  98 7D 0F 88 */	stb r3, 0xf88(r29)
/* 80A9C440  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A9C444  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A9C448  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A9C44C  38 00 FF FF */	li r0, -1
/* 80A9C450  41 82 00 08 */	beq lbl_80A9C458
/* 80A9C454  7C 60 1B 78 */	mr r0, r3
lbl_80A9C458:
/* 80A9C458  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A9C45C  38 00 00 00 */	li r0, 0
/* 80A9C460  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80A9C464  7F A3 EB 78 */	mr r3, r29
/* 80A9C468  88 1D 0F 88 */	lbz r0, 0xf88(r29)
/* 80A9C46C  54 00 10 3A */	slwi r0, r0, 2
/* 80A9C470  38 9E 00 E0 */	addi r4, r30, 0xe0
/* 80A9C474  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A9C478  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 80A9C47C  4B 6A BF 7C */	b loadRes__8daNpcT_cFPCScPPCc
/* 80A9C480  7C 7E 1B 78 */	mr r30, r3
/* 80A9C484  2C 1E 00 04 */	cmpwi r30, 4
/* 80A9C488  40 82 01 F8 */	bne lbl_80A9C680
/* 80A9C48C  7F A3 EB 78 */	mr r3, r29
/* 80A9C490  3C 80 80 AA */	lis r4, createHeapCallBack__18daNpc_Pachi_Taro_cFP10fopAc_ac_c@ha
/* 80A9C494  38 84 CC C0 */	addi r4, r4, createHeapCallBack__18daNpc_Pachi_Taro_cFP10fopAc_ac_c@l
/* 80A9C498  38 A0 48 E0 */	li r5, 0x48e0
/* 80A9C49C  4B 57 E0 14 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A9C4A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A9C4A4  40 82 00 0C */	bne lbl_80A9C4B0
/* 80A9C4A8  38 60 00 05 */	li r3, 5
/* 80A9C4AC  48 00 01 D8 */	b lbl_80A9C684
lbl_80A9C4B0:
/* 80A9C4B0  7F A3 EB 78 */	mr r3, r29
/* 80A9C4B4  48 00 08 8D */	bl isDelete__18daNpc_Pachi_Taro_cFv
/* 80A9C4B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A9C4BC  41 82 00 0C */	beq lbl_80A9C4C8
/* 80A9C4C0  38 60 00 05 */	li r3, 5
/* 80A9C4C4  48 00 01 C0 */	b lbl_80A9C684
lbl_80A9C4C8:
/* 80A9C4C8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A9C4CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A9C4D0  38 03 00 24 */	addi r0, r3, 0x24
/* 80A9C4D4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A9C4D8  7F A3 EB 78 */	mr r3, r29
/* 80A9C4DC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A9C4E0  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80A9C4E4  FC 60 08 90 */	fmr f3, f1
/* 80A9C4E8  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80A9C4EC  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80A9C4F0  FC C0 20 90 */	fmr f6, f4
/* 80A9C4F4  4B 57 E0 54 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A9C4F8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A9C4FC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A9C500  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A9C504  38 C0 00 03 */	li r6, 3
/* 80A9C508  38 E0 00 01 */	li r7, 1
/* 80A9C50C  4B 82 40 24 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80A9C510  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A9C514  90 01 00 08 */	stw r0, 8(r1)
/* 80A9C518  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A9C51C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A9C520  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A9C524  7F A6 EB 78 */	mr r6, r29
/* 80A9C528  38 E0 00 01 */	li r7, 1
/* 80A9C52C  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A9C530  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A9C534  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A9C538  4B 5D 9D 10 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A9C53C  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A9C540  38 9F 00 00 */	addi r4, r31, 0
/* 80A9C544  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A9C548  FC 00 00 1E */	fctiwz f0, f0
/* 80A9C54C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A9C550  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A9C554  38 A0 00 00 */	li r5, 0
/* 80A9C558  7F A6 EB 78 */	mr r6, r29
/* 80A9C55C  4B 5E 73 04 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A9C560  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 80A9C564  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80A9C568  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80A9C56C  4B 5E 83 48 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A9C570  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A9C574  90 1D 0E 90 */	stw r0, 0xe90(r29)
/* 80A9C578  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80A9C57C  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80A9C580  90 1D 0E F0 */	stw r0, 0xef0(r29)
/* 80A9C584  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A9C588  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A9C58C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A9C590  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A9C594  4B 5D A5 18 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80A9C598  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A9C59C  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A9C5A0  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A9C5A4  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A9C5A8  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A9C5AC  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A9C5B0  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A9C5B4  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A9C5B8  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A9C5BC  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A9C5C0  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A9C5C4  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A9C5C8  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A9C5CC  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A9C5D0  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A9C5D4  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A9C5D8  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A9C5DC  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A9C5E0  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A9C5E4  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A9C5E8  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A9C5EC  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A9C5F0  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A9C5F4  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A9C5F8  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A9C5FC  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A9C600  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A9C604  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A9C608  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A9C60C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A9C610  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80A9C614  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A9C618  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A9C61C  41 82 00 14 */	beq lbl_80A9C630
/* 80A9C620  7F A3 EB 78 */	mr r3, r29
/* 80A9C624  4B 6A C6 4C */	b setEnvTevColor__8daNpcT_cFv
/* 80A9C628  7F A3 EB 78 */	mr r3, r29
/* 80A9C62C  4B 6A C6 A0 */	b setRoomNo__8daNpcT_cFv
lbl_80A9C630:
/* 80A9C630  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80A9C634  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80A9C638  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80A9C63C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80A9C640  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80A9C644  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80A9C648  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A9C64C  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80A9C650  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A9C654  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80A9C658  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A9C65C  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80A9C660  7F A3 EB 78 */	mr r3, r29
/* 80A9C664  48 00 06 FD */	bl reset__18daNpc_Pachi_Taro_cFv
/* 80A9C668  38 00 00 01 */	li r0, 1
/* 80A9C66C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A9C670  7F A3 EB 78 */	mr r3, r29
/* 80A9C674  48 00 05 99 */	bl Execute__18daNpc_Pachi_Taro_cFv
/* 80A9C678  38 00 00 00 */	li r0, 0
/* 80A9C67C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A9C680:
/* 80A9C680  7F C3 F3 78 */	mr r3, r30
lbl_80A9C684:
/* 80A9C684  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9C688  4B 8C 5B A0 */	b _restgpr_29
/* 80A9C68C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9C690  7C 08 03 A6 */	mtlr r0
/* 80A9C694  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9C698  4E 80 00 20 */	blr 
