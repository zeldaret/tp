lbl_8099A28C:
/* 8099A28C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8099A290  7C 08 02 A6 */	mflr r0
/* 8099A294  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099A298  39 61 00 30 */	addi r11, r1, 0x30
/* 8099A29C  4B 9C 7F 40 */	b _savegpr_29
/* 8099A2A0  7C 7D 1B 78 */	mr r29, r3
/* 8099A2A4  3C 80 80 9A */	lis r4, m__19daNpcClerkt_Param_c@ha
/* 8099A2A8  3B E4 D2 44 */	addi r31, r4, m__19daNpcClerkt_Param_c@l
/* 8099A2AC  3C 80 80 9A */	lis r4, cNullVec__6Z2Calc@ha
/* 8099A2B0  3B C4 D3 58 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 8099A2B4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8099A2B8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8099A2BC  40 82 00 40 */	bne lbl_8099A2FC
/* 8099A2C0  28 1D 00 00 */	cmplwi r29, 0
/* 8099A2C4  41 82 00 2C */	beq lbl_8099A2F0
/* 8099A2C8  38 1E 00 38 */	addi r0, r30, 0x38
/* 8099A2CC  90 01 00 08 */	stw r0, 8(r1)
/* 8099A2D0  38 9E 00 4C */	addi r4, r30, 0x4c
/* 8099A2D4  38 BE 00 84 */	addi r5, r30, 0x84
/* 8099A2D8  38 DE 00 A0 */	addi r6, r30, 0xa0
/* 8099A2DC  38 E0 00 04 */	li r7, 4
/* 8099A2E0  39 1E 00 C0 */	addi r8, r30, 0xc0
/* 8099A2E4  39 20 00 04 */	li r9, 4
/* 8099A2E8  39 5E 00 28 */	addi r10, r30, 0x28
/* 8099A2EC  48 00 2C B1 */	bl __ct__13daNpcClerkT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_8099A2F0:
/* 8099A2F0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8099A2F4  60 00 00 08 */	ori r0, r0, 8
/* 8099A2F8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8099A2FC:
/* 8099A2FC  38 00 00 00 */	li r0, 0
/* 8099A300  98 1D 10 BC */	stb r0, 0x10bc(r29)
/* 8099A304  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 8099A308  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8099A30C  28 03 FF FF */	cmplwi r3, 0xffff
/* 8099A310  38 00 FF FF */	li r0, -1
/* 8099A314  41 82 00 08 */	beq lbl_8099A31C
/* 8099A318  7C 60 1B 78 */	mr r0, r3
lbl_8099A31C:
/* 8099A31C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8099A320  4B 81 22 5C */	b dKy_darkworld_check__Fv
/* 8099A324  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 8099A328  7F A3 EB 78 */	mr r3, r29
/* 8099A32C  88 1D 10 BC */	lbz r0, 0x10bc(r29)
/* 8099A330  54 00 10 3A */	slwi r0, r0, 2
/* 8099A334  38 9E 00 44 */	addi r4, r30, 0x44
/* 8099A338  7C 84 00 2E */	lwzx r4, r4, r0
/* 8099A33C  38 BE 00 38 */	addi r5, r30, 0x38
/* 8099A340  4B 7A E0 B8 */	b loadRes__8daNpcT_cFPCScPPCc
/* 8099A344  7C 7E 1B 78 */	mr r30, r3
/* 8099A348  2C 1E 00 04 */	cmpwi r30, 4
/* 8099A34C  40 82 01 C8 */	bne lbl_8099A514
/* 8099A350  7F A3 EB 78 */	mr r3, r29
/* 8099A354  3C 80 80 9A */	lis r4, createHeapCallBack__13daNpcClerkT_cFP10fopAc_ac_c@ha
/* 8099A358  38 84 AB 14 */	addi r4, r4, createHeapCallBack__13daNpcClerkT_cFP10fopAc_ac_c@l
/* 8099A35C  38 A0 2F E0 */	li r5, 0x2fe0
/* 8099A360  4B 68 01 50 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8099A364  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099A368  40 82 00 0C */	bne lbl_8099A374
/* 8099A36C  38 60 00 05 */	li r3, 5
/* 8099A370  48 00 01 A8 */	b lbl_8099A518
lbl_8099A374:
/* 8099A374  7F A3 EB 78 */	mr r3, r29
/* 8099A378  48 00 08 15 */	bl isDelete__13daNpcClerkT_cFv
/* 8099A37C  2C 03 00 00 */	cmpwi r3, 0
/* 8099A380  41 82 00 0C */	beq lbl_8099A38C
/* 8099A384  38 60 00 05 */	li r3, 5
/* 8099A388  48 00 01 90 */	b lbl_8099A518
lbl_8099A38C:
/* 8099A38C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 8099A390  80 63 00 04 */	lwz r3, 4(r3)
/* 8099A394  38 03 00 24 */	addi r0, r3, 0x24
/* 8099A398  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8099A39C  7F A3 EB 78 */	mr r3, r29
/* 8099A3A0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8099A3A4  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8099A3A8  FC 60 08 90 */	fmr f3, f1
/* 8099A3AC  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 8099A3B0  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 8099A3B4  FC C0 20 90 */	fmr f6, f4
/* 8099A3B8  4B 68 01 90 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8099A3BC  38 7D 05 80 */	addi r3, r29, 0x580
/* 8099A3C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8099A3C4  38 BD 05 38 */	addi r5, r29, 0x538
/* 8099A3C8  38 C0 00 03 */	li r6, 3
/* 8099A3CC  38 E0 00 01 */	li r7, 1
/* 8099A3D0  4B 92 61 60 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 8099A3D4  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8099A3D8  90 01 00 08 */	stw r0, 8(r1)
/* 8099A3DC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8099A3E0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8099A3E4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8099A3E8  7F A6 EB 78 */	mr r6, r29
/* 8099A3EC  38 E0 00 01 */	li r7, 1
/* 8099A3F0  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 8099A3F4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8099A3F8  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 8099A3FC  4B 6D BE 4C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8099A400  38 7D 08 64 */	addi r3, r29, 0x864
/* 8099A404  38 9F 00 00 */	addi r4, r31, 0
/* 8099A408  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8099A40C  FC 00 00 1E */	fctiwz f0, f0
/* 8099A410  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8099A414  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8099A418  38 A0 00 00 */	li r5, 0
/* 8099A41C  7F A6 EB 78 */	mr r6, r29
/* 8099A420  4B 6E 94 40 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8099A424  38 7D 0F 80 */	addi r3, r29, 0xf80
/* 8099A428  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 8099A42C  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 8099A430  4B 6E A4 84 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8099A434  38 1D 08 64 */	addi r0, r29, 0x864
/* 8099A438  90 1D 0F C4 */	stw r0, 0xfc4(r29)
/* 8099A43C  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 8099A440  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 8099A444  90 1D 10 24 */	stw r0, 0x1024(r29)
/* 8099A448  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8099A44C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8099A450  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8099A454  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8099A458  4B 6D C6 54 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8099A45C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 8099A460  90 1D 09 30 */	stw r0, 0x930(r29)
/* 8099A464  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 8099A468  90 1D 09 34 */	stw r0, 0x934(r29)
/* 8099A46C  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 8099A470  90 1D 09 38 */	stw r0, 0x938(r29)
/* 8099A474  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 8099A478  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 8099A47C  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 8099A480  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 8099A484  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 8099A488  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 8099A48C  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 8099A490  90 1D 09 48 */	stw r0, 0x948(r29)
/* 8099A494  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8099A498  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 8099A49C  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 8099A4A0  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 8099A4A4  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 8099A4A8  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 8099A4AC  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 8099A4B0  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 8099A4B4  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 8099A4B8  90 1D 09 60 */	stw r0, 0x960(r29)
/* 8099A4BC  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 8099A4C0  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 8099A4C4  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 8099A4C8  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8099A4CC  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 8099A4D0  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8099A4D4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8099A4D8  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8099A4DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8099A4E0  41 82 00 14 */	beq lbl_8099A4F4
/* 8099A4E4  7F A3 EB 78 */	mr r3, r29
/* 8099A4E8  4B 7A E7 88 */	b setEnvTevColor__8daNpcT_cFv
/* 8099A4EC  7F A3 EB 78 */	mr r3, r29
/* 8099A4F0  4B 7A E7 DC */	b setRoomNo__8daNpcT_cFv
lbl_8099A4F4:
/* 8099A4F4  7F A3 EB 78 */	mr r3, r29
/* 8099A4F8  48 00 06 C5 */	bl reset__13daNpcClerkT_cFv
/* 8099A4FC  38 00 00 01 */	li r0, 1
/* 8099A500  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 8099A504  7F A3 EB 78 */	mr r3, r29
/* 8099A508  48 00 04 99 */	bl Execute__13daNpcClerkT_cFv
/* 8099A50C  38 00 00 00 */	li r0, 0
/* 8099A510  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_8099A514:
/* 8099A514  7F C3 F3 78 */	mr r3, r30
lbl_8099A518:
/* 8099A518  39 61 00 30 */	addi r11, r1, 0x30
/* 8099A51C  4B 9C 7D 0C */	b _restgpr_29
/* 8099A520  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099A524  7C 08 03 A6 */	mtlr r0
/* 8099A528  38 21 00 30 */	addi r1, r1, 0x30
/* 8099A52C  4E 80 00 20 */	blr 
