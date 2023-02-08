lbl_80B7524C:
/* 80B7524C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B75250  7C 08 02 A6 */	mflr r0
/* 80B75254  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B75258  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7525C  4B 7E CF 81 */	bl _savegpr_29
/* 80B75260  7C 7D 1B 78 */	mr r29, r3
/* 80B75264  3C 80 80 B7 */	lis r4, m__19daNpc_Zelda_Param_c@ha /* 0x80B77FC8@ha */
/* 80B75268  3B E4 7F C8 */	addi r31, r4, m__19daNpc_Zelda_Param_c@l /* 0x80B77FC8@l */
/* 80B7526C  3C 80 80 B8 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B780D8@ha */
/* 80B75270  3B C4 80 D8 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80B780D8@l */
/* 80B75274  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B75278  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B7527C  40 82 00 40 */	bne lbl_80B752BC
/* 80B75280  28 1D 00 00 */	cmplwi r29, 0
/* 80B75284  41 82 00 2C */	beq lbl_80B752B0
/* 80B75288  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B7528C  90 01 00 08 */	stw r0, 8(r1)
/* 80B75290  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80B75294  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 80B75298  38 DE 00 D8 */	addi r6, r30, 0xd8
/* 80B7529C  38 E0 00 04 */	li r7, 4
/* 80B752A0  39 1E 01 08 */	addi r8, r30, 0x108
/* 80B752A4  39 20 00 04 */	li r9, 4
/* 80B752A8  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B752AC  48 00 2B 2D */	bl __ct__13daNpc_Zelda_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B752B0:
/* 80B752B0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B752B4  60 00 00 08 */	ori r0, r0, 8
/* 80B752B8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B752BC:
/* 80B752BC  7F A3 EB 78 */	mr r3, r29
/* 80B752C0  48 00 08 49 */	bl getType__13daNpc_Zelda_cFv
/* 80B752C4  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B752C8  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B752CC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80B752D0  28 03 FF FF */	cmplwi r3, 0xffff
/* 80B752D4  38 00 FF FF */	li r0, -1
/* 80B752D8  41 82 00 08 */	beq lbl_80B752E0
/* 80B752DC  7C 60 1B 78 */	mr r0, r3
lbl_80B752E0:
/* 80B752E0  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B752E4  38 00 00 00 */	li r0, 0
/* 80B752E8  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B752EC  7F A3 EB 78 */	mr r3, r29
/* 80B752F0  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B752F4  54 00 10 3A */	slwi r0, r0, 2
/* 80B752F8  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B752FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B75300  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B75304  4B 5D 30 F5 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80B75308  7C 7E 1B 78 */	mr r30, r3
/* 80B7530C  2C 1E 00 04 */	cmpwi r30, 4
/* 80B75310  40 82 02 04 */	bne lbl_80B75514
/* 80B75314  7F A3 EB 78 */	mr r3, r29
/* 80B75318  48 00 08 11 */	bl isDelete__13daNpc_Zelda_cFv
/* 80B7531C  2C 03 00 00 */	cmpwi r3, 0
/* 80B75320  41 82 00 0C */	beq lbl_80B7532C
/* 80B75324  38 60 00 05 */	li r3, 5
/* 80B75328  48 00 01 F0 */	b lbl_80B75518
lbl_80B7532C:
/* 80B7532C  7F A3 EB 78 */	mr r3, r29
/* 80B75330  3C 80 80 B7 */	lis r4, createHeapCallBack__13daNpc_Zelda_cFP10fopAc_ac_c@ha /* 0x80B75A90@ha */
/* 80B75334  38 84 5A 90 */	addi r4, r4, createHeapCallBack__13daNpc_Zelda_cFP10fopAc_ac_c@l /* 0x80B75A90@l */
/* 80B75338  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B7533C  54 00 10 3A */	slwi r0, r0, 2
/* 80B75340  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80B75344  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B75348  4B 4A 51 69 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B7534C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B75350  40 82 00 0C */	bne lbl_80B7535C
/* 80B75354  38 60 00 05 */	li r3, 5
/* 80B75358  48 00 01 C0 */	b lbl_80B75518
lbl_80B7535C:
/* 80B7535C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B75360  80 63 00 04 */	lwz r3, 4(r3)
/* 80B75364  38 03 00 24 */	addi r0, r3, 0x24
/* 80B75368  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B7536C  7F A3 EB 78 */	mr r3, r29
/* 80B75370  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80B75374  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80B75378  FC 60 08 90 */	fmr f3, f1
/* 80B7537C  C0 9F 00 9C */	lfs f4, 0x9c(r31)
/* 80B75380  C0 BF 00 A0 */	lfs f5, 0xa0(r31)
/* 80B75384  FC C0 20 90 */	fmr f6, f4
/* 80B75388  4B 4A 51 C1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B7538C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B75390  64 00 08 00 */	oris r0, r0, 0x800
/* 80B75394  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B75398  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B7539C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B753A0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B753A4  38 C0 00 03 */	li r6, 3
/* 80B753A8  38 E0 00 01 */	li r7, 1
/* 80B753AC  4B 74 B1 85 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80B753B0  7F A3 EB 78 */	mr r3, r29
/* 80B753B4  48 00 07 7D */	bl reset__13daNpc_Zelda_cFv
/* 80B753B8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B753BC  90 01 00 08 */	stw r0, 8(r1)
/* 80B753C0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B753C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B753C8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B753CC  7F A6 EB 78 */	mr r6, r29
/* 80B753D0  38 E0 00 01 */	li r7, 1
/* 80B753D4  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B753D8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B753DC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B753E0  4B 50 0E 69 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B753E4  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B753E8  38 9F 00 00 */	addi r4, r31, 0
/* 80B753EC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B753F0  FC 00 00 1E */	fctiwz f0, f0
/* 80B753F4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B753F8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B753FC  38 A0 00 00 */	li r5, 0
/* 80B75400  7F A6 EB 78 */	mr r6, r29
/* 80B75404  4B 50 E4 5D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B75408  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B7540C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 80B75410  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 80B75414  4B 50 F4 A1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B75418  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B7541C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B75420  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 80B75424  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 80B75428  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B7542C  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B75430  28 00 00 00 */	cmplwi r0, 0
/* 80B75434  40 82 00 1C */	bne lbl_80B75450
/* 80B75438  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80B7543C  60 00 00 02 */	ori r0, r0, 2
/* 80B75440  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80B75444  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80B75448  60 00 00 04 */	ori r0, r0, 4
/* 80B7544C  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_80B75450:
/* 80B75450  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B75454  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B75458  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7545C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B75460  4B 50 16 4D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80B75464  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B75468  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B7546C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B75470  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B75474  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B75478  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B7547C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B75480  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B75484  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B75488  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B7548C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B75490  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B75494  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B75498  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B7549C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B754A0  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B754A4  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B754A8  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B754AC  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B754B0  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B754B4  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B754B8  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B754BC  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B754C0  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B754C4  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B754C8  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B754CC  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B754D0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B754D4  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B754D8  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B754DC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80B754E0  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B754E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B754E8  41 82 00 14 */	beq lbl_80B754FC
/* 80B754EC  7F A3 EB 78 */	mr r3, r29
/* 80B754F0  4B 5D 37 81 */	bl setEnvTevColor__8daNpcT_cFv
/* 80B754F4  7F A3 EB 78 */	mr r3, r29
/* 80B754F8  4B 5D 37 D5 */	bl setRoomNo__8daNpcT_cFv
lbl_80B754FC:
/* 80B754FC  38 00 00 01 */	li r0, 1
/* 80B75500  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B75504  7F A3 EB 78 */	mr r3, r29
/* 80B75508  48 00 04 A5 */	bl Execute__13daNpc_Zelda_cFv
/* 80B7550C  38 00 00 00 */	li r0, 0
/* 80B75510  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B75514:
/* 80B75514  7F C3 F3 78 */	mr r3, r30
lbl_80B75518:
/* 80B75518  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7551C  4B 7E CD 0D */	bl _restgpr_29
/* 80B75520  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B75524  7C 08 03 A6 */	mtlr r0
/* 80B75528  38 21 00 30 */	addi r1, r1, 0x30
/* 80B7552C  4E 80 00 20 */	blr 
