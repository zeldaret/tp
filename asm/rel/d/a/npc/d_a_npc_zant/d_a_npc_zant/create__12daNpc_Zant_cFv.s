lbl_80B6C2D0:
/* 80B6C2D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B6C2D4  7C 08 02 A6 */	mflr r0
/* 80B6C2D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6C2DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6C2E0  4B 7F 5E FC */	b _savegpr_29
/* 80B6C2E4  7C 7D 1B 78 */	mr r29, r3
/* 80B6C2E8  3C 80 80 B7 */	lis r4, m__18daNpc_Zant_Param_c@ha
/* 80B6C2EC  3B E4 E9 A8 */	addi r31, r4, m__18daNpc_Zant_Param_c@l
/* 80B6C2F0  3C 80 80 B7 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B6C2F4  3B C4 EA 94 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B6C2F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B6C2FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B6C300  40 82 00 40 */	bne lbl_80B6C340
/* 80B6C304  28 1D 00 00 */	cmplwi r29, 0
/* 80B6C308  41 82 00 2C */	beq lbl_80B6C334
/* 80B6C30C  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B6C310  90 01 00 08 */	stw r0, 8(r1)
/* 80B6C314  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80B6C318  38 BE 00 68 */	addi r5, r30, 0x68
/* 80B6C31C  38 DE 00 84 */	addi r6, r30, 0x84
/* 80B6C320  38 E0 00 04 */	li r7, 4
/* 80B6C324  39 1E 00 94 */	addi r8, r30, 0x94
/* 80B6C328  39 20 00 04 */	li r9, 4
/* 80B6C32C  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B6C330  48 00 24 D1 */	bl __ct__12daNpc_Zant_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B6C334:
/* 80B6C334  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B6C338  60 00 00 08 */	ori r0, r0, 8
/* 80B6C33C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B6C340:
/* 80B6C340  7F A3 EB 78 */	mr r3, r29
/* 80B6C344  48 00 05 1D */	bl getType__12daNpc_Zant_cFv
/* 80B6C348  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B6C34C  7F A3 EB 78 */	mr r3, r29
/* 80B6C350  48 00 05 31 */	bl getFlowNodeNo__12daNpc_Zant_cFv
/* 80B6C354  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80B6C358  38 00 00 00 */	li r0, 0
/* 80B6C35C  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B6C360  7F A3 EB 78 */	mr r3, r29
/* 80B6C364  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B6C368  54 00 10 3A */	slwi r0, r0, 2
/* 80B6C36C  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B6C370  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B6C374  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B6C378  4B 5D C0 80 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80B6C37C  7C 7E 1B 78 */	mr r30, r3
/* 80B6C380  2C 1E 00 04 */	cmpwi r30, 4
/* 80B6C384  40 82 01 D4 */	bne lbl_80B6C558
/* 80B6C388  7F A3 EB 78 */	mr r3, r29
/* 80B6C38C  3C 80 80 B7 */	lis r4, createHeapCallBack__12daNpc_Zant_cFP10fopAc_ac_c@ha
/* 80B6C390  38 84 C7 E8 */	addi r4, r4, createHeapCallBack__12daNpc_Zant_cFP10fopAc_ac_c@l
/* 80B6C394  38 A0 00 00 */	li r5, 0
/* 80B6C398  4B 4A E1 18 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B6C39C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B6C3A0  40 82 00 0C */	bne lbl_80B6C3AC
/* 80B6C3A4  38 60 00 05 */	li r3, 5
/* 80B6C3A8  48 00 01 B4 */	b lbl_80B6C55C
lbl_80B6C3AC:
/* 80B6C3AC  7F A3 EB 78 */	mr r3, r29
/* 80B6C3B0  48 00 04 ED */	bl isDelete__12daNpc_Zant_cFv
/* 80B6C3B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B6C3B8  41 82 00 0C */	beq lbl_80B6C3C4
/* 80B6C3BC  38 60 00 05 */	li r3, 5
/* 80B6C3C0  48 00 01 9C */	b lbl_80B6C55C
lbl_80B6C3C4:
/* 80B6C3C4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B6C3C8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B6C3CC  38 03 00 24 */	addi r0, r3, 0x24
/* 80B6C3D0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B6C3D4  7F A3 EB 78 */	mr r3, r29
/* 80B6C3D8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80B6C3DC  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80B6C3E0  FC 60 08 90 */	fmr f3, f1
/* 80B6C3E4  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80B6C3E8  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80B6C3EC  FC C0 20 90 */	fmr f6, f4
/* 80B6C3F0  4B 4A E1 58 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B6C3F4  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B6C3F8  64 00 08 00 */	oris r0, r0, 0x800
/* 80B6C3FC  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B6C400  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B6C404  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B6C408  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B6C40C  38 C0 00 03 */	li r6, 3
/* 80B6C410  38 E0 00 01 */	li r7, 1
/* 80B6C414  4B 75 41 1C */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B6C418  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B6C41C  90 01 00 08 */	stw r0, 8(r1)
/* 80B6C420  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B6C424  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B6C428  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B6C42C  7F A6 EB 78 */	mr r6, r29
/* 80B6C430  38 E0 00 01 */	li r7, 1
/* 80B6C434  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B6C438  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B6C43C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B6C440  4B 50 9E 08 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B6C444  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B6C448  38 9F 00 00 */	addi r4, r31, 0
/* 80B6C44C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B6C450  FC 00 00 1E */	fctiwz f0, f0
/* 80B6C454  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B6C458  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B6C45C  38 A0 00 00 */	li r5, 0
/* 80B6C460  7F A6 EB 78 */	mr r6, r29
/* 80B6C464  4B 51 73 FC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B6C468  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B6C46C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80B6C470  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80B6C474  4B 51 84 40 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B6C478  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B6C47C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B6C480  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B6C484  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B6C488  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B6C48C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B6C490  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B6C494  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B6C498  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B6C49C  4B 50 A6 10 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B6C4A0  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B6C4A4  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B6C4A8  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B6C4AC  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B6C4B0  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B6C4B4  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B6C4B8  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B6C4BC  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B6C4C0  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B6C4C4  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B6C4C8  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B6C4CC  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B6C4D0  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B6C4D4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B6C4D8  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B6C4DC  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B6C4E0  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B6C4E4  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B6C4E8  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B6C4EC  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B6C4F0  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B6C4F4  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B6C4F8  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B6C4FC  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B6C500  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B6C504  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B6C508  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B6C50C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B6C510  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B6C514  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B6C518  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80B6C51C  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B6C520  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B6C524  41 82 00 14 */	beq lbl_80B6C538
/* 80B6C528  7F A3 EB 78 */	mr r3, r29
/* 80B6C52C  4B 5D C7 44 */	b setEnvTevColor__8daNpcT_cFv
/* 80B6C530  7F A3 EB 78 */	mr r3, r29
/* 80B6C534  4B 5D C7 98 */	b setRoomNo__8daNpcT_cFv
lbl_80B6C538:
/* 80B6C538  7F A3 EB 78 */	mr r3, r29
/* 80B6C53C  48 00 03 91 */	bl reset__12daNpc_Zant_cFv
/* 80B6C540  38 00 00 01 */	li r0, 1
/* 80B6C544  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B6C548  7F A3 EB 78 */	mr r3, r29
/* 80B6C54C  48 00 01 E9 */	bl Execute__12daNpc_Zant_cFv
/* 80B6C550  38 00 00 00 */	li r0, 0
/* 80B6C554  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B6C558:
/* 80B6C558  7F C3 F3 78 */	mr r3, r30
lbl_80B6C55C:
/* 80B6C55C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6C560  4B 7F 5C C8 */	b _restgpr_29
/* 80B6C564  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6C568  7C 08 03 A6 */	mtlr r0
/* 80B6C56C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6C570  4E 80 00 20 */	blr 
