lbl_80ACB918:
/* 80ACB918  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ACB91C  7C 08 02 A6 */	mflr r0
/* 80ACB920  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACB924  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACB928  4B 89 68 B5 */	bl _savegpr_29
/* 80ACB92C  7C 7D 1B 78 */	mr r29, r3
/* 80ACB930  3C 80 80 AD */	lis r4, m__19daNpc_Seira_Param_c@ha /* 0x80ACFDF0@ha */
/* 80ACB934  3B E4 FD F0 */	addi r31, r4, m__19daNpc_Seira_Param_c@l /* 0x80ACFDF0@l */
/* 80ACB938  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha /* 0x80ACFF90@ha */
/* 80ACB93C  3B C4 FF 90 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80ACFF90@l */
/* 80ACB940  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80ACB944  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80ACB948  40 82 00 40 */	bne lbl_80ACB988
/* 80ACB94C  28 1D 00 00 */	cmplwi r29, 0
/* 80ACB950  41 82 00 2C */	beq lbl_80ACB97C
/* 80ACB954  38 1E 00 50 */	addi r0, r30, 0x50
/* 80ACB958  90 01 00 08 */	stw r0, 8(r1)
/* 80ACB95C  38 9E 00 88 */	addi r4, r30, 0x88
/* 80ACB960  38 BE 02 10 */	addi r5, r30, 0x210
/* 80ACB964  38 DE 04 E8 */	addi r6, r30, 0x4e8
/* 80ACB968  38 E0 00 04 */	li r7, 4
/* 80ACB96C  39 1E 05 C8 */	addi r8, r30, 0x5c8
/* 80ACB970  39 20 00 04 */	li r9, 4
/* 80ACB974  39 5E 00 30 */	addi r10, r30, 0x30
/* 80ACB978  48 00 41 D1 */	bl __ct__13daNpc_Seira_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80ACB97C:
/* 80ACB97C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80ACB980  60 00 00 08 */	ori r0, r0, 8
/* 80ACB984  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80ACB988:
/* 80ACB988  7F A3 EB 78 */	mr r3, r29
/* 80ACB98C  48 00 0B 1D */	bl getNpcType__13daNpc_Seira_cFv
/* 80ACB990  98 7D 10 FE */	stb r3, 0x10fe(r29)
/* 80ACB994  7F A3 EB 78 */	mr r3, r29
/* 80ACB998  48 00 09 91 */	bl getType__13daNpc_Seira_cFv
/* 80ACB99C  98 7D 10 C1 */	stb r3, 0x10c1(r29)
/* 80ACB9A0  7F A3 EB 78 */	mr r3, r29
/* 80ACB9A4  48 00 0A 81 */	bl getFlowNodeNo__13daNpc_Seira_cFv
/* 80ACB9A8  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 80ACB9AC  38 60 02 08 */	li r3, 0x208
/* 80ACB9B0  4B 68 10 FD */	bl daNpcT_chkEvtBit__FUl
/* 80ACB9B4  98 7D 11 00 */	stb r3, 0x1100(r29)
/* 80ACB9B8  38 00 00 00 */	li r0, 0
/* 80ACB9BC  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80ACB9C0  7F A3 EB 78 */	mr r3, r29
/* 80ACB9C4  48 00 0A 7D */	bl checkBottle__13daNpc_Seira_cFv
/* 80ACB9C8  98 7D 10 C0 */	stb r3, 0x10c0(r29)
/* 80ACB9CC  7F A3 EB 78 */	mr r3, r29
/* 80ACB9D0  88 1D 10 C1 */	lbz r0, 0x10c1(r29)
/* 80ACB9D4  54 00 10 3A */	slwi r0, r0, 2
/* 80ACB9D8  38 9E 00 6C */	addi r4, r30, 0x6c
/* 80ACB9DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ACB9E0  38 BE 00 50 */	addi r5, r30, 0x50
/* 80ACB9E4  4B 67 CA 15 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80ACB9E8  7C 7E 1B 78 */	mr r30, r3
/* 80ACB9EC  2C 1E 00 04 */	cmpwi r30, 4
/* 80ACB9F0  40 82 01 C8 */	bne lbl_80ACBBB8
/* 80ACB9F4  7F A3 EB 78 */	mr r3, r29
/* 80ACB9F8  3C 80 80 AD */	lis r4, createHeapCallBack__13daNpc_Seira_cFP10fopAc_ac_c@ha /* 0x80ACC2B0@ha */
/* 80ACB9FC  38 84 C2 B0 */	addi r4, r4, createHeapCallBack__13daNpc_Seira_cFP10fopAc_ac_c@l /* 0x80ACC2B0@l */
/* 80ACBA00  88 1D 10 C1 */	lbz r0, 0x10c1(r29)
/* 80ACBA04  28 00 00 05 */	cmplwi r0, 5
/* 80ACBA08  38 A0 3D E0 */	li r5, 0x3de0
/* 80ACBA0C  41 82 00 08 */	beq lbl_80ACBA14
/* 80ACBA10  38 A0 64 20 */	li r5, 0x6420
lbl_80ACBA14:
/* 80ACBA14  4B 54 EA 9D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80ACBA18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80ACBA1C  40 82 00 0C */	bne lbl_80ACBA28
/* 80ACBA20  38 60 00 05 */	li r3, 5
/* 80ACBA24  48 00 01 98 */	b lbl_80ACBBBC
lbl_80ACBA28:
/* 80ACBA28  7F A3 EB 78 */	mr r3, r29
/* 80ACBA2C  48 00 0A 9D */	bl isDelete__13daNpc_Seira_cFv
/* 80ACBA30  2C 03 00 00 */	cmpwi r3, 0
/* 80ACBA34  41 82 00 0C */	beq lbl_80ACBA40
/* 80ACBA38  38 60 00 05 */	li r3, 5
/* 80ACBA3C  48 00 01 80 */	b lbl_80ACBBBC
lbl_80ACBA40:
/* 80ACBA40  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80ACBA44  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACBA48  38 03 00 24 */	addi r0, r3, 0x24
/* 80ACBA4C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80ACBA50  7F A3 EB 78 */	mr r3, r29
/* 80ACBA54  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80ACBA58  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80ACBA5C  FC 60 08 90 */	fmr f3, f1
/* 80ACBA60  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 80ACBA64  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 80ACBA68  FC C0 20 90 */	fmr f6, f4
/* 80ACBA6C  4B 54 EA DD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80ACBA70  38 7D 05 80 */	addi r3, r29, 0x580
/* 80ACBA74  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80ACBA78  38 BD 05 38 */	addi r5, r29, 0x538
/* 80ACBA7C  38 C0 00 03 */	li r6, 3
/* 80ACBA80  38 E0 00 01 */	li r7, 1
/* 80ACBA84  4B 7F 4A AD */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80ACBA88  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80ACBA8C  90 01 00 08 */	stw r0, 8(r1)
/* 80ACBA90  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80ACBA94  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80ACBA98  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80ACBA9C  7F A6 EB 78 */	mr r6, r29
/* 80ACBAA0  38 E0 00 01 */	li r7, 1
/* 80ACBAA4  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80ACBAA8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80ACBAAC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80ACBAB0  4B 5A A7 99 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80ACBAB4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80ACBAB8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACBABC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACBAC0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80ACBAC4  4B 5A AF E9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80ACBAC8  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80ACBACC  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80ACBAD0  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80ACBAD4  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80ACBAD8  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80ACBADC  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80ACBAE0  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80ACBAE4  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80ACBAE8  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80ACBAEC  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80ACBAF0  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80ACBAF4  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80ACBAF8  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80ACBAFC  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80ACBB00  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80ACBB04  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80ACBB08  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80ACBB0C  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80ACBB10  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80ACBB14  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80ACBB18  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80ACBB1C  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80ACBB20  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80ACBB24  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80ACBB28  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80ACBB2C  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80ACBB30  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80ACBB34  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ACBB38  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80ACBB3C  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80ACBB40  7F A3 EB 78 */	mr r3, r29
/* 80ACBB44  4B 67 D1 2D */	bl setEnvTevColor__8daNpcT_cFv
/* 80ACBB48  7F A3 EB 78 */	mr r3, r29
/* 80ACBB4C  4B 67 D1 81 */	bl setRoomNo__8daNpcT_cFv
/* 80ACBB50  38 7D 08 64 */	addi r3, r29, 0x864
/* 80ACBB54  38 9F 00 00 */	addi r4, r31, 0
/* 80ACBB58  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80ACBB5C  FC 00 00 1E */	fctiwz f0, f0
/* 80ACBB60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80ACBB64  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80ACBB68  38 A0 00 00 */	li r5, 0
/* 80ACBB6C  7F A6 EB 78 */	mr r6, r29
/* 80ACBB70  4B 5B 7C F1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80ACBB74  38 7D 0F 84 */	addi r3, r29, 0xf84
/* 80ACBB78  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80ACBB7C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80ACBB80  4B 5B 8D 35 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80ACBB84  38 1D 08 64 */	addi r0, r29, 0x864
/* 80ACBB88  90 1D 0F C8 */	stw r0, 0xfc8(r29)
/* 80ACBB8C  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80ACBB90  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80ACBB94  90 1D 10 28 */	stw r0, 0x1028(r29)
/* 80ACBB98  7F A3 EB 78 */	mr r3, r29
/* 80ACBB9C  48 00 09 35 */	bl reset__13daNpc_Seira_cFv
/* 80ACBBA0  38 00 00 01 */	li r0, 1
/* 80ACBBA4  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80ACBBA8  7F A3 EB 78 */	mr r3, r29
/* 80ACBBAC  48 00 05 85 */	bl Execute__13daNpc_Seira_cFv
/* 80ACBBB0  38 00 00 00 */	li r0, 0
/* 80ACBBB4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80ACBBB8:
/* 80ACBBB8  7F C3 F3 78 */	mr r3, r30
lbl_80ACBBBC:
/* 80ACBBBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACBBC0  4B 89 66 69 */	bl _restgpr_29
/* 80ACBBC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACBBC8  7C 08 03 A6 */	mtlr r0
/* 80ACBBCC  38 21 00 30 */	addi r1, r1, 0x30
/* 80ACBBD0  4E 80 00 20 */	blr 
