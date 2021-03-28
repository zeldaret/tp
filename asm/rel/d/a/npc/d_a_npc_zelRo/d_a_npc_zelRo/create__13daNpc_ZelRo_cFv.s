lbl_80B720E4:
/* 80B720E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B720E8  7C 08 02 A6 */	mflr r0
/* 80B720EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B720F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B720F4  4B 7F 00 E8 */	b _savegpr_29
/* 80B720F8  7C 7D 1B 78 */	mr r29, r3
/* 80B720FC  3C 80 80 B7 */	lis r4, m__19daNpc_ZelRo_Param_c@ha
/* 80B72100  3B E4 4C 5C */	addi r31, r4, m__19daNpc_ZelRo_Param_c@l
/* 80B72104  3C 80 80 B7 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B72108  3B C4 4D 58 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B7210C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B72110  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B72114  40 82 00 40 */	bne lbl_80B72154
/* 80B72118  28 1D 00 00 */	cmplwi r29, 0
/* 80B7211C  41 82 00 2C */	beq lbl_80B72148
/* 80B72120  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B72124  90 01 00 08 */	stw r0, 8(r1)
/* 80B72128  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80B7212C  38 BE 00 84 */	addi r5, r30, 0x84
/* 80B72130  38 DE 00 A0 */	addi r6, r30, 0xa0
/* 80B72134  38 E0 00 04 */	li r7, 4
/* 80B72138  39 1E 00 C0 */	addi r8, r30, 0xc0
/* 80B7213C  39 20 00 04 */	li r9, 4
/* 80B72140  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B72144  48 00 29 A5 */	bl __ct__13daNpc_ZelRo_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B72148:
/* 80B72148  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B7214C  60 00 00 08 */	ori r0, r0, 8
/* 80B72150  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B72154:
/* 80B72154  7F A3 EB 78 */	mr r3, r29
/* 80B72158  48 00 08 1D */	bl getType__13daNpc_ZelRo_cFv
/* 80B7215C  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B72160  7F A3 EB 78 */	mr r3, r29
/* 80B72164  48 00 08 31 */	bl getFlowNodeNo__13daNpc_ZelRo_cFv
/* 80B72168  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80B7216C  38 00 00 00 */	li r0, 0
/* 80B72170  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B72174  7F A3 EB 78 */	mr r3, r29
/* 80B72178  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B7217C  54 00 10 3A */	slwi r0, r0, 2
/* 80B72180  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B72184  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B72188  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B7218C  4B 5D 62 6C */	b loadRes__8daNpcT_cFPCScPPCc
/* 80B72190  7C 7E 1B 78 */	mr r30, r3
/* 80B72194  2C 1E 00 04 */	cmpwi r30, 4
/* 80B72198  40 82 01 C4 */	bne lbl_80B7235C
/* 80B7219C  7F A3 EB 78 */	mr r3, r29
/* 80B721A0  3C 80 80 B7 */	lis r4, createHeapCallBack__13daNpc_ZelRo_cFP10fopAc_ac_c@ha
/* 80B721A4  38 84 28 FC */	addi r4, r4, createHeapCallBack__13daNpc_ZelRo_cFP10fopAc_ac_c@l
/* 80B721A8  38 A0 71 C0 */	li r5, 0x71c0
/* 80B721AC  4B 4A 83 04 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B721B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B721B4  40 82 00 0C */	bne lbl_80B721C0
/* 80B721B8  38 60 00 05 */	li r3, 5
/* 80B721BC  48 00 01 A4 */	b lbl_80B72360
lbl_80B721C0:
/* 80B721C0  7F A3 EB 78 */	mr r3, r29
/* 80B721C4  48 00 07 F9 */	bl isDelete__13daNpc_ZelRo_cFv
/* 80B721C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B721CC  41 82 00 0C */	beq lbl_80B721D8
/* 80B721D0  38 60 00 05 */	li r3, 5
/* 80B721D4  48 00 01 8C */	b lbl_80B72360
lbl_80B721D8:
/* 80B721D8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B721DC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B721E0  38 03 00 24 */	addi r0, r3, 0x24
/* 80B721E4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B721E8  7F A3 EB 78 */	mr r3, r29
/* 80B721EC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80B721F0  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80B721F4  FC 60 08 90 */	fmr f3, f1
/* 80B721F8  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80B721FC  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80B72200  FC C0 20 90 */	fmr f6, f4
/* 80B72204  4B 4A 83 44 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B72208  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B7220C  64 00 08 00 */	oris r0, r0, 0x800
/* 80B72210  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B72214  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B72218  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B7221C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B72220  38 C0 00 03 */	li r6, 3
/* 80B72224  38 E0 00 01 */	li r7, 1
/* 80B72228  4B 74 E3 08 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B7222C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B72230  90 01 00 08 */	stw r0, 8(r1)
/* 80B72234  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B72238  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B7223C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B72240  7F A6 EB 78 */	mr r6, r29
/* 80B72244  38 E0 00 01 */	li r7, 1
/* 80B72248  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B7224C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B72250  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B72254  4B 50 3F F4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B72258  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B7225C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B72260  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B72264  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B72268  4B 50 48 44 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B7226C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B72270  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B72274  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B72278  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B7227C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B72280  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B72284  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B72288  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B7228C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B72290  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B72294  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B72298  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B7229C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B722A0  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B722A4  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B722A8  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B722AC  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B722B0  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B722B4  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B722B8  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B722BC  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B722C0  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B722C4  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B722C8  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B722CC  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B722D0  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B722D4  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B722D8  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B722DC  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B722E0  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B722E4  7F A3 EB 78 */	mr r3, r29
/* 80B722E8  4B 5D 69 88 */	b setEnvTevColor__8daNpcT_cFv
/* 80B722EC  7F A3 EB 78 */	mr r3, r29
/* 80B722F0  4B 5D 69 DC */	b setRoomNo__8daNpcT_cFv
/* 80B722F4  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B722F8  38 9F 00 00 */	addi r4, r31, 0
/* 80B722FC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B72300  FC 00 00 1E */	fctiwz f0, f0
/* 80B72304  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B72308  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B7230C  38 A0 00 00 */	li r5, 0
/* 80B72310  7F A6 EB 78 */	mr r6, r29
/* 80B72314  4B 51 15 4C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B72318  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B7231C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80B72320  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80B72324  4B 51 25 90 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B72328  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B7232C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B72330  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B72334  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B72338  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B7233C  7F A3 EB 78 */	mr r3, r29
/* 80B72340  48 00 06 D1 */	bl reset__13daNpc_ZelRo_cFv
/* 80B72344  38 00 00 01 */	li r0, 1
/* 80B72348  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B7234C  7F A3 EB 78 */	mr r3, r29
/* 80B72350  48 00 04 C9 */	bl Execute__13daNpc_ZelRo_cFv
/* 80B72354  38 00 00 00 */	li r0, 0
/* 80B72358  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B7235C:
/* 80B7235C  7F C3 F3 78 */	mr r3, r30
lbl_80B72360:
/* 80B72360  39 61 00 30 */	addi r11, r1, 0x30
/* 80B72364  4B 7E FE C4 */	b _restgpr_29
/* 80B72368  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7236C  7C 08 03 A6 */	mtlr r0
/* 80B72370  38 21 00 30 */	addi r1, r1, 0x30
/* 80B72374  4E 80 00 20 */	blr 
