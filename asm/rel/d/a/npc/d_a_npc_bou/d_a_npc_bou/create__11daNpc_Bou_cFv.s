lbl_8096D0D8:
/* 8096D0D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096D0DC  7C 08 02 A6 */	mflr r0
/* 8096D0E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096D0E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8096D0E8  4B 9F 50 F5 */	bl _savegpr_29
/* 8096D0EC  7C 7D 1B 78 */	mr r29, r3
/* 8096D0F0  3C 80 80 97 */	lis r4, m__17daNpc_Bou_Param_c@ha /* 0x80972860@ha */
/* 8096D0F4  3B E4 28 60 */	addi r31, r4, m__17daNpc_Bou_Param_c@l /* 0x80972860@l */
/* 8096D0F8  3C 80 80 97 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80972A90@ha */
/* 8096D0FC  3B C4 2A 90 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80972A90@l */
/* 8096D100  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8096D104  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8096D108  40 82 00 40 */	bne lbl_8096D148
/* 8096D10C  28 1D 00 00 */	cmplwi r29, 0
/* 8096D110  41 82 00 2C */	beq lbl_8096D13C
/* 8096D114  38 1E 00 80 */	addi r0, r30, 0x80
/* 8096D118  90 01 00 08 */	stw r0, 8(r1)
/* 8096D11C  38 9E 00 CC */	addi r4, r30, 0xcc
/* 8096D120  38 BE 02 00 */	addi r5, r30, 0x200
/* 8096D124  38 DE 04 84 */	addi r6, r30, 0x484
/* 8096D128  38 E0 00 04 */	li r7, 4
/* 8096D12C  39 1E 05 34 */	addi r8, r30, 0x534
/* 8096D130  39 20 00 04 */	li r9, 4
/* 8096D134  39 5E 00 28 */	addi r10, r30, 0x28
/* 8096D138  48 00 55 9D */	bl __ct__11daNpc_Bou_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_8096D13C:
/* 8096D13C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8096D140  60 00 00 08 */	ori r0, r0, 8
/* 8096D144  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8096D148:
/* 8096D148  7F A3 EB 78 */	mr r3, r29
/* 8096D14C  48 00 09 2D */	bl getType__11daNpc_Bou_cFv
/* 8096D150  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 8096D154  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8096D158  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8096D15C  28 03 FF FF */	cmplwi r3, 0xffff
/* 8096D160  38 00 FF FF */	li r0, -1
/* 8096D164  41 82 00 08 */	beq lbl_8096D16C
/* 8096D168  7C 60 1B 78 */	mr r0, r3
lbl_8096D16C:
/* 8096D16C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8096D170  38 00 00 00 */	li r0, 0
/* 8096D174  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 8096D178  7F A3 EB 78 */	mr r3, r29
/* 8096D17C  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 8096D180  54 00 10 3A */	slwi r0, r0, 2
/* 8096D184  38 9E 00 B4 */	addi r4, r30, 0xb4
/* 8096D188  7C 84 00 2E */	lwzx r4, r4, r0
/* 8096D18C  38 BE 00 80 */	addi r5, r30, 0x80
/* 8096D190  4B 7D B2 69 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 8096D194  7C 7E 1B 78 */	mr r30, r3
/* 8096D198  2C 1E 00 04 */	cmpwi r30, 4
/* 8096D19C  40 82 01 D4 */	bne lbl_8096D370
/* 8096D1A0  7F A3 EB 78 */	mr r3, r29
/* 8096D1A4  48 00 09 39 */	bl isDelete__11daNpc_Bou_cFv
/* 8096D1A8  2C 03 00 00 */	cmpwi r3, 0
/* 8096D1AC  41 82 00 0C */	beq lbl_8096D1B8
/* 8096D1B0  38 60 00 05 */	li r3, 5
/* 8096D1B4  48 00 01 C0 */	b lbl_8096D374
lbl_8096D1B8:
/* 8096D1B8  7F A3 EB 78 */	mr r3, r29
/* 8096D1BC  3C 80 80 97 */	lis r4, createHeapCallBack__11daNpc_Bou_cFP10fopAc_ac_c@ha /* 0x8096D8A0@ha */
/* 8096D1C0  38 84 D8 A0 */	addi r4, r4, createHeapCallBack__11daNpc_Bou_cFP10fopAc_ac_c@l /* 0x8096D8A0@l */
/* 8096D1C4  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 8096D1C8  54 00 10 3A */	slwi r0, r0, 2
/* 8096D1CC  38 BF 00 9C */	addi r5, r31, 0x9c
/* 8096D1D0  7C A5 00 2E */	lwzx r5, r5, r0
/* 8096D1D4  4B 6A D2 DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8096D1D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8096D1DC  40 82 00 0C */	bne lbl_8096D1E8
/* 8096D1E0  38 60 00 05 */	li r3, 5
/* 8096D1E4  48 00 01 90 */	b lbl_8096D374
lbl_8096D1E8:
/* 8096D1E8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8096D1EC  80 63 00 04 */	lwz r3, 4(r3)
/* 8096D1F0  38 03 00 24 */	addi r0, r3, 0x24
/* 8096D1F4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8096D1F8  7F A3 EB 78 */	mr r3, r29
/* 8096D1FC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8096D200  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 8096D204  FC 60 08 90 */	fmr f3, f1
/* 8096D208  C0 9F 00 BC */	lfs f4, 0xbc(r31)
/* 8096D20C  C0 BF 00 C0 */	lfs f5, 0xc0(r31)
/* 8096D210  FC C0 20 90 */	fmr f6, f4
/* 8096D214  4B 6A D3 35 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8096D218  38 7D 05 80 */	addi r3, r29, 0x580
/* 8096D21C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8096D220  38 BD 05 38 */	addi r5, r29, 0x538
/* 8096D224  38 C0 00 03 */	li r6, 3
/* 8096D228  38 E0 00 01 */	li r7, 1
/* 8096D22C  4B 95 33 05 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 8096D230  7F A3 EB 78 */	mr r3, r29
/* 8096D234  48 00 09 89 */	bl reset__11daNpc_Bou_cFv
/* 8096D238  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8096D23C  90 01 00 08 */	stw r0, 8(r1)
/* 8096D240  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8096D244  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8096D248  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8096D24C  7F A6 EB 78 */	mr r6, r29
/* 8096D250  38 E0 00 01 */	li r7, 1
/* 8096D254  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 8096D258  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8096D25C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 8096D260  4B 70 8F E9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8096D264  38 7D 08 64 */	addi r3, r29, 0x864
/* 8096D268  38 9F 00 00 */	addi r4, r31, 0
/* 8096D26C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8096D270  FC 00 00 1E */	fctiwz f0, f0
/* 8096D274  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8096D278  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8096D27C  38 A0 00 00 */	li r5, 0
/* 8096D280  7F A6 EB 78 */	mr r6, r29
/* 8096D284  4B 71 65 DD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8096D288  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 8096D28C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 8096D290  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 8096D294  4B 71 76 21 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8096D298  38 1D 08 64 */	addi r0, r29, 0x864
/* 8096D29C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 8096D2A0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 8096D2A4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 8096D2A8  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 8096D2AC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8096D2B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096D2B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096D2B8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8096D2BC  4B 70 97 F1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8096D2C0  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 8096D2C4  90 1D 09 30 */	stw r0, 0x930(r29)
/* 8096D2C8  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 8096D2CC  90 1D 09 34 */	stw r0, 0x934(r29)
/* 8096D2D0  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 8096D2D4  90 1D 09 38 */	stw r0, 0x938(r29)
/* 8096D2D8  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 8096D2DC  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 8096D2E0  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 8096D2E4  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 8096D2E8  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 8096D2EC  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 8096D2F0  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 8096D2F4  90 1D 09 48 */	stw r0, 0x948(r29)
/* 8096D2F8  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8096D2FC  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 8096D300  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 8096D304  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 8096D308  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 8096D30C  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 8096D310  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 8096D314  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 8096D318  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 8096D31C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 8096D320  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 8096D324  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 8096D328  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 8096D32C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8096D330  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 8096D334  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8096D338  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 8096D33C  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8096D340  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8096D344  41 82 00 14 */	beq lbl_8096D358
/* 8096D348  7F A3 EB 78 */	mr r3, r29
/* 8096D34C  4B 7D B9 25 */	bl setEnvTevColor__8daNpcT_cFv
/* 8096D350  7F A3 EB 78 */	mr r3, r29
/* 8096D354  4B 7D B9 79 */	bl setRoomNo__8daNpcT_cFv
lbl_8096D358:
/* 8096D358  38 00 00 01 */	li r0, 1
/* 8096D35C  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 8096D360  7F A3 EB 78 */	mr r3, r29
/* 8096D364  48 00 04 89 */	bl Execute__11daNpc_Bou_cFv
/* 8096D368  38 00 00 00 */	li r0, 0
/* 8096D36C  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_8096D370:
/* 8096D370  7F C3 F3 78 */	mr r3, r30
lbl_8096D374:
/* 8096D374  39 61 00 30 */	addi r11, r1, 0x30
/* 8096D378  4B 9F 4E B1 */	bl _restgpr_29
/* 8096D37C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096D380  7C 08 03 A6 */	mtlr r0
/* 8096D384  38 21 00 30 */	addi r1, r1, 0x30
/* 8096D388  4E 80 00 20 */	blr 
