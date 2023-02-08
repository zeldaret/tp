lbl_80AECCD0:
/* 80AECCD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AECCD4  7C 08 02 A6 */	mflr r0
/* 80AECCD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AECCDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AECCE0  4B 87 54 FD */	bl _savegpr_29
/* 80AECCE4  7C 7D 1B 78 */	mr r29, r3
/* 80AECCE8  3C 80 80 AF */	lis r4, m__18daNpc_solA_Param_c@ha /* 0x80AEF100@ha */
/* 80AECCEC  3B E4 F1 00 */	addi r31, r4, m__18daNpc_solA_Param_c@l /* 0x80AEF100@l */
/* 80AECCF0  3C 80 80 AF */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AEF1F4@ha */
/* 80AECCF4  3B C4 F1 F4 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80AEF1F4@l */
/* 80AECCF8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AECCFC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AECD00  40 82 00 40 */	bne lbl_80AECD40
/* 80AECD04  28 1D 00 00 */	cmplwi r29, 0
/* 80AECD08  41 82 00 2C */	beq lbl_80AECD34
/* 80AECD0C  38 1E 00 38 */	addi r0, r30, 0x38
/* 80AECD10  90 01 00 08 */	stw r0, 8(r1)
/* 80AECD14  38 9E 00 48 */	addi r4, r30, 0x48
/* 80AECD18  38 BE 00 64 */	addi r5, r30, 0x64
/* 80AECD1C  38 DE 00 80 */	addi r6, r30, 0x80
/* 80AECD20  38 E0 00 04 */	li r7, 4
/* 80AECD24  39 1E 00 90 */	addi r8, r30, 0x90
/* 80AECD28  39 20 00 04 */	li r9, 4
/* 80AECD2C  39 5E 00 28 */	addi r10, r30, 0x28
/* 80AECD30  48 00 22 11 */	bl __ct__12daNpc_solA_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AECD34:
/* 80AECD34  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80AECD38  60 00 00 08 */	ori r0, r0, 8
/* 80AECD3C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80AECD40:
/* 80AECD40  7F A3 EB 78 */	mr r3, r29
/* 80AECD44  48 00 05 1D */	bl getType__12daNpc_solA_cFv
/* 80AECD48  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80AECD4C  7F A3 EB 78 */	mr r3, r29
/* 80AECD50  48 00 05 19 */	bl getFlowNodeNo__12daNpc_solA_cFv
/* 80AECD54  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80AECD58  38 00 00 00 */	li r0, 0
/* 80AECD5C  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80AECD60  7F A3 EB 78 */	mr r3, r29
/* 80AECD64  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80AECD68  54 00 10 3A */	slwi r0, r0, 2
/* 80AECD6C  38 9E 00 44 */	addi r4, r30, 0x44
/* 80AECD70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AECD74  38 BE 00 38 */	addi r5, r30, 0x38
/* 80AECD78  4B 65 B6 81 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80AECD7C  7C 7E 1B 78 */	mr r30, r3
/* 80AECD80  2C 1E 00 04 */	cmpwi r30, 4
/* 80AECD84  40 82 01 B8 */	bne lbl_80AECF3C
/* 80AECD88  7F A3 EB 78 */	mr r3, r29
/* 80AECD8C  3C 80 80 AF */	lis r4, createHeapCallBack__12daNpc_solA_cFP10fopAc_ac_c@ha /* 0x80AED1E8@ha */
/* 80AECD90  38 84 D1 E8 */	addi r4, r4, createHeapCallBack__12daNpc_solA_cFP10fopAc_ac_c@l /* 0x80AED1E8@l */
/* 80AECD94  38 A0 00 00 */	li r5, 0
/* 80AECD98  4B 52 D7 19 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AECD9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AECDA0  40 82 00 0C */	bne lbl_80AECDAC
/* 80AECDA4  38 60 00 05 */	li r3, 5
/* 80AECDA8  48 00 01 98 */	b lbl_80AECF40
lbl_80AECDAC:
/* 80AECDAC  7F A3 EB 78 */	mr r3, r29
/* 80AECDB0  48 00 04 D5 */	bl isDelete__12daNpc_solA_cFv
/* 80AECDB4  2C 03 00 00 */	cmpwi r3, 0
/* 80AECDB8  41 82 00 0C */	beq lbl_80AECDC4
/* 80AECDBC  38 60 00 05 */	li r3, 5
/* 80AECDC0  48 00 01 80 */	b lbl_80AECF40
lbl_80AECDC4:
/* 80AECDC4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80AECDC8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AECDCC  38 03 00 24 */	addi r0, r3, 0x24
/* 80AECDD0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80AECDD4  7F A3 EB 78 */	mr r3, r29
/* 80AECDD8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80AECDDC  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80AECDE0  FC 60 08 90 */	fmr f3, f1
/* 80AECDE4  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80AECDE8  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80AECDEC  FC C0 20 90 */	fmr f6, f4
/* 80AECDF0  4B 52 D7 59 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AECDF4  38 7D 05 80 */	addi r3, r29, 0x580
/* 80AECDF8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AECDFC  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AECE00  38 C0 00 03 */	li r6, 3
/* 80AECE04  38 E0 00 01 */	li r7, 1
/* 80AECE08  4B 7D 37 29 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80AECE0C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80AECE10  90 01 00 08 */	stw r0, 8(r1)
/* 80AECE14  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AECE18  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AECE1C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80AECE20  7F A6 EB 78 */	mr r6, r29
/* 80AECE24  38 E0 00 01 */	li r7, 1
/* 80AECE28  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80AECE2C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80AECE30  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80AECE34  4B 58 94 15 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AECE38  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80AECE3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AECE40  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AECE44  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AECE48  4B 58 9C 65 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AECE4C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80AECE50  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80AECE54  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80AECE58  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80AECE5C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80AECE60  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80AECE64  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80AECE68  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80AECE6C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80AECE70  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80AECE74  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80AECE78  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80AECE7C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80AECE80  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80AECE84  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80AECE88  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80AECE8C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80AECE90  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80AECE94  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80AECE98  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80AECE9C  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80AECEA0  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80AECEA4  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80AECEA8  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80AECEAC  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80AECEB0  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80AECEB4  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80AECEB8  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80AECEBC  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80AECEC0  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80AECEC4  7F A3 EB 78 */	mr r3, r29
/* 80AECEC8  4B 65 BD A9 */	bl setEnvTevColor__8daNpcT_cFv
/* 80AECECC  7F A3 EB 78 */	mr r3, r29
/* 80AECED0  4B 65 BD FD */	bl setRoomNo__8daNpcT_cFv
/* 80AECED4  38 7D 08 64 */	addi r3, r29, 0x864
/* 80AECED8  38 9F 00 00 */	addi r4, r31, 0
/* 80AECEDC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AECEE0  FC 00 00 1E */	fctiwz f0, f0
/* 80AECEE4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AECEE8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AECEEC  38 A0 00 00 */	li r5, 0
/* 80AECEF0  7F A6 EB 78 */	mr r6, r29
/* 80AECEF4  4B 59 69 6D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AECEF8  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80AECEFC  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80AECF00  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80AECF04  4B 59 79 B1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AECF08  38 1D 08 64 */	addi r0, r29, 0x864
/* 80AECF0C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80AECF10  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80AECF14  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80AECF18  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80AECF1C  7F A3 EB 78 */	mr r3, r29
/* 80AECF20  48 00 03 75 */	bl reset__12daNpc_solA_cFv
/* 80AECF24  38 00 00 01 */	li r0, 1
/* 80AECF28  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80AECF2C  7F A3 EB 78 */	mr r3, r29
/* 80AECF30  48 00 01 FD */	bl Execute__12daNpc_solA_cFv
/* 80AECF34  38 00 00 00 */	li r0, 0
/* 80AECF38  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80AECF3C:
/* 80AECF3C  7F C3 F3 78 */	mr r3, r30
lbl_80AECF40:
/* 80AECF40  39 61 00 30 */	addi r11, r1, 0x30
/* 80AECF44  4B 87 52 E5 */	bl _restgpr_29
/* 80AECF48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AECF4C  7C 08 03 A6 */	mtlr r0
/* 80AECF50  38 21 00 30 */	addi r1, r1, 0x30
/* 80AECF54  4E 80 00 20 */	blr 
