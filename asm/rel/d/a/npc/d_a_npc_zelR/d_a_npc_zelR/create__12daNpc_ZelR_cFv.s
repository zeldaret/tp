lbl_80B6EF64:
/* 80B6EF64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B6EF68  7C 08 02 A6 */	mflr r0
/* 80B6EF6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6EF70  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6EF74  4B 7F 32 69 */	bl _savegpr_29
/* 80B6EF78  7C 7D 1B 78 */	mr r29, r3
/* 80B6EF7C  3C 80 80 B7 */	lis r4, m__18daNpc_ZelR_Param_c@ha /* 0x80B71AE0@ha */
/* 80B6EF80  3B E4 1A E0 */	addi r31, r4, m__18daNpc_ZelR_Param_c@l /* 0x80B71AE0@l */
/* 80B6EF84  3C 80 80 B7 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B71BD8@ha */
/* 80B6EF88  3B C4 1B D8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B71BD8@l */
/* 80B6EF8C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B6EF90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B6EF94  40 82 00 40 */	bne lbl_80B6EFD4
/* 80B6EF98  28 1D 00 00 */	cmplwi r29, 0
/* 80B6EF9C  41 82 00 2C */	beq lbl_80B6EFC8
/* 80B6EFA0  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B6EFA4  90 01 00 08 */	stw r0, 8(r1)
/* 80B6EFA8  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80B6EFAC  38 BE 00 84 */	addi r5, r30, 0x84
/* 80B6EFB0  38 DE 00 A0 */	addi r6, r30, 0xa0
/* 80B6EFB4  38 E0 00 04 */	li r7, 4
/* 80B6EFB8  39 1E 00 C0 */	addi r8, r30, 0xc0
/* 80B6EFBC  39 20 00 04 */	li r9, 4
/* 80B6EFC0  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B6EFC4  48 00 29 B1 */	bl __ct__12daNpc_ZelR_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B6EFC8:
/* 80B6EFC8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B6EFCC  60 00 00 08 */	ori r0, r0, 8
/* 80B6EFD0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B6EFD4:
/* 80B6EFD4  7F A3 EB 78 */	mr r3, r29
/* 80B6EFD8  48 00 08 1D */	bl getType__12daNpc_ZelR_cFv
/* 80B6EFDC  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B6EFE0  7F A3 EB 78 */	mr r3, r29
/* 80B6EFE4  48 00 08 31 */	bl getFlowNodeNo__12daNpc_ZelR_cFv
/* 80B6EFE8  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80B6EFEC  38 00 00 00 */	li r0, 0
/* 80B6EFF0  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B6EFF4  7F A3 EB 78 */	mr r3, r29
/* 80B6EFF8  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B6EFFC  54 00 10 3A */	slwi r0, r0, 2
/* 80B6F000  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B6F004  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B6F008  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B6F00C  4B 5D 93 ED */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80B6F010  7C 7E 1B 78 */	mr r30, r3
/* 80B6F014  2C 1E 00 04 */	cmpwi r30, 4
/* 80B6F018  40 82 01 C4 */	bne lbl_80B6F1DC
/* 80B6F01C  7F A3 EB 78 */	mr r3, r29
/* 80B6F020  3C 80 80 B7 */	lis r4, createHeapCallBack__12daNpc_ZelR_cFP10fopAc_ac_c@ha /* 0x80B6F77C@ha */
/* 80B6F024  38 84 F7 7C */	addi r4, r4, createHeapCallBack__12daNpc_ZelR_cFP10fopAc_ac_c@l /* 0x80B6F77C@l */
/* 80B6F028  38 A0 5C D0 */	li r5, 0x5cd0
/* 80B6F02C  4B 4A B4 85 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B6F030  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B6F034  40 82 00 0C */	bne lbl_80B6F040
/* 80B6F038  38 60 00 05 */	li r3, 5
/* 80B6F03C  48 00 01 A4 */	b lbl_80B6F1E0
lbl_80B6F040:
/* 80B6F040  7F A3 EB 78 */	mr r3, r29
/* 80B6F044  48 00 07 F9 */	bl isDelete__12daNpc_ZelR_cFv
/* 80B6F048  2C 03 00 00 */	cmpwi r3, 0
/* 80B6F04C  41 82 00 0C */	beq lbl_80B6F058
/* 80B6F050  38 60 00 05 */	li r3, 5
/* 80B6F054  48 00 01 8C */	b lbl_80B6F1E0
lbl_80B6F058:
/* 80B6F058  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B6F05C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B6F060  38 03 00 24 */	addi r0, r3, 0x24
/* 80B6F064  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B6F068  7F A3 EB 78 */	mr r3, r29
/* 80B6F06C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80B6F070  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80B6F074  FC 60 08 90 */	fmr f3, f1
/* 80B6F078  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80B6F07C  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80B6F080  FC C0 20 90 */	fmr f6, f4
/* 80B6F084  4B 4A B4 C5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B6F088  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B6F08C  64 00 08 00 */	oris r0, r0, 0x800
/* 80B6F090  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B6F094  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B6F098  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B6F09C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B6F0A0  38 C0 00 03 */	li r6, 3
/* 80B6F0A4  38 E0 00 01 */	li r7, 1
/* 80B6F0A8  4B 75 14 89 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80B6F0AC  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B6F0B0  90 01 00 08 */	stw r0, 8(r1)
/* 80B6F0B4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B6F0B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B6F0BC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B6F0C0  7F A6 EB 78 */	mr r6, r29
/* 80B6F0C4  38 E0 00 01 */	li r7, 1
/* 80B6F0C8  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B6F0CC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B6F0D0  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B6F0D4  4B 50 71 75 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B6F0D8  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B6F0DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6F0E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6F0E4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B6F0E8  4B 50 79 C5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B6F0EC  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B6F0F0  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B6F0F4  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B6F0F8  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B6F0FC  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B6F100  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B6F104  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B6F108  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B6F10C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B6F110  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B6F114  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B6F118  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B6F11C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B6F120  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B6F124  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B6F128  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B6F12C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B6F130  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B6F134  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B6F138  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B6F13C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B6F140  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B6F144  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B6F148  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B6F14C  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B6F150  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B6F154  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B6F158  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B6F15C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B6F160  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B6F164  7F A3 EB 78 */	mr r3, r29
/* 80B6F168  4B 5D 9B 09 */	bl setEnvTevColor__8daNpcT_cFv
/* 80B6F16C  7F A3 EB 78 */	mr r3, r29
/* 80B6F170  4B 5D 9B 5D */	bl setRoomNo__8daNpcT_cFv
/* 80B6F174  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B6F178  38 9F 00 00 */	addi r4, r31, 0
/* 80B6F17C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B6F180  FC 00 00 1E */	fctiwz f0, f0
/* 80B6F184  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B6F188  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B6F18C  38 A0 00 00 */	li r5, 0
/* 80B6F190  7F A6 EB 78 */	mr r6, r29
/* 80B6F194  4B 51 46 CD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B6F198  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B6F19C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80B6F1A0  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80B6F1A4  4B 51 57 11 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B6F1A8  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B6F1AC  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B6F1B0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80B6F1B4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80B6F1B8  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B6F1BC  7F A3 EB 78 */	mr r3, r29
/* 80B6F1C0  48 00 06 D5 */	bl reset__12daNpc_ZelR_cFv
/* 80B6F1C4  38 00 00 01 */	li r0, 1
/* 80B6F1C8  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B6F1CC  7F A3 EB 78 */	mr r3, r29
/* 80B6F1D0  48 00 04 C9 */	bl Execute__12daNpc_ZelR_cFv
/* 80B6F1D4  38 00 00 00 */	li r0, 0
/* 80B6F1D8  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B6F1DC:
/* 80B6F1DC  7F C3 F3 78 */	mr r3, r30
lbl_80B6F1E0:
/* 80B6F1E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6F1E4  4B 7F 30 45 */	bl _restgpr_29
/* 80B6F1E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6F1EC  7C 08 03 A6 */	mtlr r0
/* 80B6F1F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6F1F4  4E 80 00 20 */	blr 
