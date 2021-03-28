lbl_8053701C:
/* 8053701C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80537020  7C 08 02 A6 */	mflr r0
/* 80537024  90 01 00 34 */	stw r0, 0x34(r1)
/* 80537028  39 61 00 30 */	addi r11, r1, 0x30
/* 8053702C  4B E2 B1 B0 */	b _savegpr_29
/* 80537030  7C 7D 1B 78 */	mr r29, r3
/* 80537034  3C 80 80 54 */	lis r4, m__18daNpc_Besu_Param_c@ha
/* 80537038  3B E4 E7 54 */	addi r31, r4, m__18daNpc_Besu_Param_c@l
/* 8053703C  3C 80 80 54 */	lis r4, cNullVec__6Z2Calc@ha
/* 80537040  3B C4 EB 5C */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80537044  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80537048  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8053704C  40 82 00 40 */	bne lbl_8053708C
/* 80537050  28 1D 00 00 */	cmplwi r29, 0
/* 80537054  41 82 00 2C */	beq lbl_80537080
/* 80537058  38 1E 00 B8 */	addi r0, r30, 0xb8
/* 8053705C  90 01 00 08 */	stw r0, 8(r1)
/* 80537060  38 9E 01 54 */	addi r4, r30, 0x154
/* 80537064  38 BE 04 9C */	addi r5, r30, 0x49c
/* 80537068  38 DE 08 38 */	addi r6, r30, 0x838
/* 8053706C  38 E0 00 04 */	li r7, 4
/* 80537070  39 1E 0A 08 */	addi r8, r30, 0xa08
/* 80537074  39 20 00 04 */	li r9, 4
/* 80537078  39 5E 00 50 */	addi r10, r30, 0x50
/* 8053707C  48 00 75 0D */	bl __ct__12daNpc_Besu_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80537080:
/* 80537080  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80537084  60 00 00 08 */	ori r0, r0, 8
/* 80537088  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8053708C:
/* 8053708C  7F A3 EB 78 */	mr r3, r29
/* 80537090  48 00 09 E5 */	bl getType__12daNpc_Besu_cFv
/* 80537094  98 7D 10 C4 */	stb r3, 0x10c4(r29)
/* 80537098  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8053709C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805370A0  28 03 FF FF */	cmplwi r3, 0xffff
/* 805370A4  38 00 FF FF */	li r0, -1
/* 805370A8  41 82 00 08 */	beq lbl_805370B0
/* 805370AC  7C 60 1B 78 */	mr r0, r3
lbl_805370B0:
/* 805370B0  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 805370B4  4B C7 54 C8 */	b dKy_darkworld_check__Fv
/* 805370B8  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 805370BC  88 1D 10 C4 */	lbz r0, 0x10c4(r29)
/* 805370C0  28 00 00 09 */	cmplwi r0, 9
/* 805370C4  40 82 00 0C */	bne lbl_805370D0
/* 805370C8  38 00 00 00 */	li r0, 0
/* 805370CC  98 1D 0A 89 */	stb r0, 0xa89(r29)
lbl_805370D0:
/* 805370D0  7F A3 EB 78 */	mr r3, r29
/* 805370D4  88 1D 10 C4 */	lbz r0, 0x10c4(r29)
/* 805370D8  54 00 10 3A */	slwi r0, r0, 2
/* 805370DC  38 9E 01 08 */	addi r4, r30, 0x108
/* 805370E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805370E4  38 BE 00 B8 */	addi r5, r30, 0xb8
/* 805370E8  4B C1 13 10 */	b loadRes__8daNpcT_cFPCScPPCc
/* 805370EC  7C 7E 1B 78 */	mr r30, r3
/* 805370F0  2C 1E 00 04 */	cmpwi r30, 4
/* 805370F4  40 82 01 EC */	bne lbl_805372E0
/* 805370F8  7F A3 EB 78 */	mr r3, r29
/* 805370FC  48 00 0A 39 */	bl isDelete__12daNpc_Besu_cFv
/* 80537100  2C 03 00 00 */	cmpwi r3, 0
/* 80537104  41 82 00 0C */	beq lbl_80537110
/* 80537108  38 60 00 05 */	li r3, 5
/* 8053710C  48 00 01 D8 */	b lbl_805372E4
lbl_80537110:
/* 80537110  7F A3 EB 78 */	mr r3, r29
/* 80537114  3C 80 80 53 */	lis r4, createHeapCallBack__12daNpc_Besu_cFP10fopAc_ac_c@ha
/* 80537118  38 84 79 FC */	addi r4, r4, createHeapCallBack__12daNpc_Besu_cFP10fopAc_ac_c@l
/* 8053711C  88 1D 10 C4 */	lbz r0, 0x10c4(r29)
/* 80537120  54 00 10 3A */	slwi r0, r0, 2
/* 80537124  38 BF 00 90 */	addi r5, r31, 0x90
/* 80537128  7C A5 00 2E */	lwzx r5, r5, r0
/* 8053712C  4B AE 33 84 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80537130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80537134  40 82 00 0C */	bne lbl_80537140
/* 80537138  38 60 00 05 */	li r3, 5
/* 8053713C  48 00 01 A8 */	b lbl_805372E4
lbl_80537140:
/* 80537140  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80537144  80 63 00 04 */	lwz r3, 4(r3)
/* 80537148  38 03 00 24 */	addi r0, r3, 0x24
/* 8053714C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80537150  7F A3 EB 78 */	mr r3, r29
/* 80537154  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80537158  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 8053715C  FC 60 08 90 */	fmr f3, f1
/* 80537160  C0 9F 00 E4 */	lfs f4, 0xe4(r31)
/* 80537164  C0 BF 00 E8 */	lfs f5, 0xe8(r31)
/* 80537168  FC C0 20 90 */	fmr f6, f4
/* 8053716C  4B AE 33 DC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80537170  38 7D 05 80 */	addi r3, r29, 0x580
/* 80537174  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80537178  38 BD 05 38 */	addi r5, r29, 0x538
/* 8053717C  38 C0 00 03 */	li r6, 3
/* 80537180  38 E0 00 01 */	li r7, 1
/* 80537184  4B D8 93 AC */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80537188  7F A3 EB 78 */	mr r3, r29
/* 8053718C  48 00 0C 59 */	bl reset__12daNpc_Besu_cFv
/* 80537190  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80537194  90 01 00 08 */	stw r0, 8(r1)
/* 80537198  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8053719C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805371A0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805371A4  7F A6 EB 78 */	mr r6, r29
/* 805371A8  38 E0 00 01 */	li r7, 1
/* 805371AC  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 805371B0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 805371B4  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 805371B8  4B B3 F0 90 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805371BC  38 7D 08 64 */	addi r3, r29, 0x864
/* 805371C0  38 9F 00 00 */	addi r4, r31, 0
/* 805371C4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 805371C8  FC 00 00 1E */	fctiwz f0, f0
/* 805371CC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805371D0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805371D4  38 A0 00 00 */	li r5, 0
/* 805371D8  7F A6 EB 78 */	mr r6, r29
/* 805371DC  4B B4 C6 84 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805371E0  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805371E4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 805371E8  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 805371EC  4B B4 D6 C8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805371F0  38 1D 08 64 */	addi r0, r29, 0x864
/* 805371F4  90 1D 0E 90 */	stw r0, 0xe90(r29)
/* 805371F8  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 805371FC  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80537200  90 1D 0E F0 */	stw r0, 0xef0(r29)
/* 80537204  38 7D 0F 88 */	addi r3, r29, 0xf88
/* 80537208  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 8053720C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80537210  4B B4 D6 A4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80537214  38 1D 08 64 */	addi r0, r29, 0x864
/* 80537218  90 1D 0F CC */	stw r0, 0xfcc(r29)
/* 8053721C  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80537220  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80537224  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80537228  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8053722C  4B B3 F8 80 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80537230  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80537234  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80537238  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 8053723C  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80537240  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80537244  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80537248  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 8053724C  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80537250  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80537254  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80537258  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 8053725C  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80537260  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80537264  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80537268  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8053726C  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80537270  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80537274  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80537278  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 8053727C  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80537280  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80537284  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80537288  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 8053728C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80537290  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80537294  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80537298  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 8053729C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 805372A0  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 805372A4  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 805372A8  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 805372AC  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 805372B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805372B4  41 82 00 14 */	beq lbl_805372C8
/* 805372B8  7F A3 EB 78 */	mr r3, r29
/* 805372BC  4B C1 19 B4 */	b setEnvTevColor__8daNpcT_cFv
/* 805372C0  7F A3 EB 78 */	mr r3, r29
/* 805372C4  4B C1 1A 08 */	b setRoomNo__8daNpcT_cFv
lbl_805372C8:
/* 805372C8  38 00 00 01 */	li r0, 1
/* 805372CC  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 805372D0  7F A3 EB 78 */	mr r3, r29
/* 805372D4  48 00 06 75 */	bl Execute__12daNpc_Besu_cFv
/* 805372D8  38 00 00 00 */	li r0, 0
/* 805372DC  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_805372E0:
/* 805372E0  7F C3 F3 78 */	mr r3, r30
lbl_805372E4:
/* 805372E4  39 61 00 30 */	addi r11, r1, 0x30
/* 805372E8  4B E2 AF 40 */	b _restgpr_29
/* 805372EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805372F0  7C 08 03 A6 */	mtlr r0
/* 805372F4  38 21 00 30 */	addi r1, r1, 0x30
/* 805372F8  4E 80 00 20 */	blr 
