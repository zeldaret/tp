lbl_80A64478:
/* 80A64478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A6447C  7C 08 02 A6 */	mflr r0
/* 80A64480  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A64484  39 61 00 30 */	addi r11, r1, 0x30
/* 80A64488  4B 8F DD 55 */	bl _savegpr_29
/* 80A6448C  7C 7D 1B 78 */	mr r29, r3
/* 80A64490  3C 80 80 A7 */	lis r4, m__17daNpc_Len_Param_c@ha /* 0x80A68EA4@ha */
/* 80A64494  3B E4 8E A4 */	addi r31, r4, m__17daNpc_Len_Param_c@l /* 0x80A68EA4@l */
/* 80A64498  3C 80 80 A7 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A69088@ha */
/* 80A6449C  3B C4 90 88 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A69088@l */
/* 80A644A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A644A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A644A8  40 82 00 40 */	bne lbl_80A644E8
/* 80A644AC  28 1D 00 00 */	cmplwi r29, 0
/* 80A644B0  41 82 00 2C */	beq lbl_80A644DC
/* 80A644B4  38 1E 00 68 */	addi r0, r30, 0x68
/* 80A644B8  90 01 00 08 */	stw r0, 8(r1)
/* 80A644BC  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A644C0  38 BE 02 F4 */	addi r5, r30, 0x2f4
/* 80A644C4  38 DE 04 EC */	addi r6, r30, 0x4ec
/* 80A644C8  38 E0 00 04 */	li r7, 4
/* 80A644CC  39 1E 06 0C */	addi r8, r30, 0x60c
/* 80A644D0  39 20 00 04 */	li r9, 4
/* 80A644D4  39 5E 00 30 */	addi r10, r30, 0x30
/* 80A644D8  48 00 48 29 */	bl __ct__11daNpc_Len_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A644DC:
/* 80A644DC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80A644E0  60 00 00 08 */	ori r0, r0, 8
/* 80A644E4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80A644E8:
/* 80A644E8  7F A3 EB 78 */	mr r3, r29
/* 80A644EC  48 00 08 55 */	bl getType__11daNpc_Len_cFv
/* 80A644F0  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80A644F4  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80A644F8  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80A644FC  28 03 FF FF */	cmplwi r3, 0xffff
/* 80A64500  38 00 FF FF */	li r0, -1
/* 80A64504  41 82 00 08 */	beq lbl_80A6450C
/* 80A64508  7C 60 1B 78 */	mr r0, r3
lbl_80A6450C:
/* 80A6450C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80A64510  4B 74 80 6D */	bl dKy_darkworld_check__Fv
/* 80A64514  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80A64518  7F A3 EB 78 */	mr r3, r29
/* 80A6451C  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A64520  54 00 10 3A */	slwi r0, r0, 2
/* 80A64524  38 9E 00 80 */	addi r4, r30, 0x80
/* 80A64528  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A6452C  38 BE 00 68 */	addi r5, r30, 0x68
/* 80A64530  4B 6E 3E C9 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80A64534  7C 7E 1B 78 */	mr r30, r3
/* 80A64538  2C 1E 00 04 */	cmpwi r30, 4
/* 80A6453C  40 82 01 E8 */	bne lbl_80A64724
/* 80A64540  7F A3 EB 78 */	mr r3, r29
/* 80A64544  48 00 08 75 */	bl isDelete__11daNpc_Len_cFv
/* 80A64548  2C 03 00 00 */	cmpwi r3, 0
/* 80A6454C  41 82 00 0C */	beq lbl_80A64558
/* 80A64550  38 60 00 05 */	li r3, 5
/* 80A64554  48 00 01 D4 */	b lbl_80A64728
lbl_80A64558:
/* 80A64558  7F A3 EB 78 */	mr r3, r29
/* 80A6455C  3C 80 80 A6 */	lis r4, createHeapCallBack__11daNpc_Len_cFP10fopAc_ac_c@ha /* 0x80A64CC8@ha */
/* 80A64560  38 84 4C C8 */	addi r4, r4, createHeapCallBack__11daNpc_Len_cFP10fopAc_ac_c@l /* 0x80A64CC8@l */
/* 80A64564  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80A64568  54 00 10 3A */	slwi r0, r0, 2
/* 80A6456C  38 BF 00 94 */	addi r5, r31, 0x94
/* 80A64570  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A64574  4B 5B 5F 3D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A64578  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6457C  40 82 00 0C */	bne lbl_80A64588
/* 80A64580  38 60 00 05 */	li r3, 5
/* 80A64584  48 00 01 A4 */	b lbl_80A64728
lbl_80A64588:
/* 80A64588  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80A6458C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A64590  38 03 00 24 */	addi r0, r3, 0x24
/* 80A64594  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80A64598  7F A3 EB 78 */	mr r3, r29
/* 80A6459C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80A645A0  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 80A645A4  FC 60 08 90 */	fmr f3, f1
/* 80A645A8  C0 9F 00 C4 */	lfs f4, 0xc4(r31)
/* 80A645AC  C0 BF 00 C8 */	lfs f5, 0xc8(r31)
/* 80A645B0  FC C0 20 90 */	fmr f6, f4
/* 80A645B4  4B 5B 5F 95 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A645B8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80A645BC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A645C0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80A645C4  38 C0 00 03 */	li r6, 3
/* 80A645C8  38 E0 00 01 */	li r7, 1
/* 80A645CC  4B 85 BF 65 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A645D0  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80A645D4  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80A645D8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80A645DC  FC 40 08 90 */	fmr f2, f1
/* 80A645E0  4B 5E C6 BD */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 80A645E4  7F A3 EB 78 */	mr r3, r29
/* 80A645E8  48 00 09 D5 */	bl reset__11daNpc_Len_cFv
/* 80A645EC  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80A645F0  90 01 00 08 */	stw r0, 8(r1)
/* 80A645F4  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A645F8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80A645FC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80A64600  7F A6 EB 78 */	mr r6, r29
/* 80A64604  38 E0 00 01 */	li r7, 1
/* 80A64608  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80A6460C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80A64610  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80A64614  4B 61 1C 35 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A64618  38 7D 08 64 */	addi r3, r29, 0x864
/* 80A6461C  38 9F 00 00 */	addi r4, r31, 0
/* 80A64620  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A64624  FC 00 00 1E */	fctiwz f0, f0
/* 80A64628  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A6462C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A64630  38 A0 00 00 */	li r5, 0
/* 80A64634  7F A6 EB 78 */	mr r6, r29
/* 80A64638  4B 61 F2 29 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A6463C  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80A64640  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80A64644  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80A64648  4B 62 02 6D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A6464C  38 1D 08 64 */	addi r0, r29, 0x864
/* 80A64650  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80A64654  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80A64658  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80A6465C  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80A64660  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80A64664  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A64668  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6466C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A64670  4B 61 24 3D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A64674  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80A64678  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80A6467C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80A64680  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80A64684  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80A64688  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80A6468C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80A64690  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80A64694  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80A64698  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80A6469C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80A646A0  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80A646A4  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80A646A8  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80A646AC  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80A646B0  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80A646B4  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80A646B8  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80A646BC  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80A646C0  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80A646C4  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80A646C8  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80A646CC  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80A646D0  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80A646D4  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80A646D8  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80A646DC  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80A646E0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A646E4  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80A646E8  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80A646EC  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80A646F0  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80A646F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A646F8  41 82 00 14 */	beq lbl_80A6470C
/* 80A646FC  7F A3 EB 78 */	mr r3, r29
/* 80A64700  4B 6E 45 71 */	bl setEnvTevColor__8daNpcT_cFv
/* 80A64704  7F A3 EB 78 */	mr r3, r29
/* 80A64708  4B 6E 45 C5 */	bl setRoomNo__8daNpcT_cFv
lbl_80A6470C:
/* 80A6470C  38 00 00 01 */	li r0, 1
/* 80A64710  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80A64714  7F A3 EB 78 */	mr r3, r29
/* 80A64718  48 00 04 FD */	bl Execute__11daNpc_Len_cFv
/* 80A6471C  38 00 00 00 */	li r0, 0
/* 80A64720  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80A64724:
/* 80A64724  7F C3 F3 78 */	mr r3, r30
lbl_80A64728:
/* 80A64728  39 61 00 30 */	addi r11, r1, 0x30
/* 80A6472C  4B 8F DA FD */	bl _restgpr_29
/* 80A64730  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A64734  7C 08 03 A6 */	mtlr r0
/* 80A64738  38 21 00 30 */	addi r1, r1, 0x30
/* 80A6473C  4E 80 00 20 */	blr 
