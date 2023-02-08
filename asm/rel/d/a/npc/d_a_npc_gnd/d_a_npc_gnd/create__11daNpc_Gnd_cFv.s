lbl_809BB730:
/* 809BB730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809BB734  7C 08 02 A6 */	mflr r0
/* 809BB738  90 01 00 34 */	stw r0, 0x34(r1)
/* 809BB73C  39 61 00 30 */	addi r11, r1, 0x30
/* 809BB740  4B 9A 6A 9D */	bl _savegpr_29
/* 809BB744  7C 7D 1B 78 */	mr r29, r3
/* 809BB748  3C 80 80 9C */	lis r4, m__17daNpc_Gnd_Param_c@ha /* 0x809BE4A0@ha */
/* 809BB74C  3B E4 E4 A0 */	addi r31, r4, m__17daNpc_Gnd_Param_c@l /* 0x809BE4A0@l */
/* 809BB750  3C 80 80 9C */	lis r4, cNullVec__6Z2Calc@ha /* 0x809BE59C@ha */
/* 809BB754  3B C4 E5 9C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x809BE59C@l */
/* 809BB758  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809BB75C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809BB760  40 82 00 40 */	bne lbl_809BB7A0
/* 809BB764  28 1D 00 00 */	cmplwi r29, 0
/* 809BB768  41 82 00 2C */	beq lbl_809BB794
/* 809BB76C  38 1E 00 38 */	addi r0, r30, 0x38
/* 809BB770  90 01 00 08 */	stw r0, 8(r1)
/* 809BB774  38 9E 00 4C */	addi r4, r30, 0x4c
/* 809BB778  38 BE 00 68 */	addi r5, r30, 0x68
/* 809BB77C  38 DE 00 84 */	addi r6, r30, 0x84
/* 809BB780  38 E0 00 04 */	li r7, 4
/* 809BB784  39 1E 00 94 */	addi r8, r30, 0x94
/* 809BB788  39 20 00 04 */	li r9, 4
/* 809BB78C  39 5E 00 28 */	addi r10, r30, 0x28
/* 809BB790  48 00 2B 41 */	bl __ct__11daNpc_Gnd_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_809BB794:
/* 809BB794  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809BB798  60 00 00 08 */	ori r0, r0, 8
/* 809BB79C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_809BB7A0:
/* 809BB7A0  7F A3 EB 78 */	mr r3, r29
/* 809BB7A4  48 00 08 19 */	bl getType__11daNpc_Gnd_cFv
/* 809BB7A8  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 809BB7AC  7F A3 EB 78 */	mr r3, r29
/* 809BB7B0  48 00 08 2D */	bl getFlowNodeNo__11daNpc_Gnd_cFv
/* 809BB7B4  90 7D 0A 7C */	stw r3, 0xa7c(r29)
/* 809BB7B8  38 00 00 00 */	li r0, 0
/* 809BB7BC  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 809BB7C0  7F A3 EB 78 */	mr r3, r29
/* 809BB7C4  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 809BB7C8  54 00 10 3A */	slwi r0, r0, 2
/* 809BB7CC  38 9E 00 44 */	addi r4, r30, 0x44
/* 809BB7D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809BB7D4  38 BE 00 38 */	addi r5, r30, 0x38
/* 809BB7D8  4B 78 CC 21 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 809BB7DC  7C 7E 1B 78 */	mr r30, r3
/* 809BB7E0  2C 1E 00 04 */	cmpwi r30, 4
/* 809BB7E4  40 82 01 D4 */	bne lbl_809BB9B8
/* 809BB7E8  7F A3 EB 78 */	mr r3, r29
/* 809BB7EC  3C 80 80 9C */	lis r4, createHeapCallBack__11daNpc_Gnd_cFP10fopAc_ac_c@ha /* 0x809BBF44@ha */
/* 809BB7F0  38 84 BF 44 */	addi r4, r4, createHeapCallBack__11daNpc_Gnd_cFP10fopAc_ac_c@l /* 0x809BBF44@l */
/* 809BB7F4  38 A0 00 00 */	li r5, 0
/* 809BB7F8  4B 65 EC B9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809BB7FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BB800  40 82 00 0C */	bne lbl_809BB80C
/* 809BB804  38 60 00 05 */	li r3, 5
/* 809BB808  48 00 01 B4 */	b lbl_809BB9BC
lbl_809BB80C:
/* 809BB80C  7F A3 EB 78 */	mr r3, r29
/* 809BB810  48 00 07 E9 */	bl isDelete__11daNpc_Gnd_cFv
/* 809BB814  2C 03 00 00 */	cmpwi r3, 0
/* 809BB818  41 82 00 0C */	beq lbl_809BB824
/* 809BB81C  38 60 00 05 */	li r3, 5
/* 809BB820  48 00 01 9C */	b lbl_809BB9BC
lbl_809BB824:
/* 809BB824  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809BB828  80 63 00 04 */	lwz r3, 4(r3)
/* 809BB82C  38 03 00 24 */	addi r0, r3, 0x24
/* 809BB830  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809BB834  7F A3 EB 78 */	mr r3, r29
/* 809BB838  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 809BB83C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 809BB840  FC 60 08 90 */	fmr f3, f1
/* 809BB844  C0 9F 00 94 */	lfs f4, 0x94(r31)
/* 809BB848  C0 BF 00 98 */	lfs f5, 0x98(r31)
/* 809BB84C  FC C0 20 90 */	fmr f6, f4
/* 809BB850  4B 65 EC F9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809BB854  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 809BB858  64 00 08 00 */	oris r0, r0, 0x800
/* 809BB85C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 809BB860  38 7D 05 80 */	addi r3, r29, 0x580
/* 809BB864  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809BB868  38 BD 05 38 */	addi r5, r29, 0x538
/* 809BB86C  38 C0 00 03 */	li r6, 3
/* 809BB870  38 E0 00 01 */	li r7, 1
/* 809BB874  4B 90 4C BD */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809BB878  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809BB87C  90 01 00 08 */	stw r0, 8(r1)
/* 809BB880  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809BB884  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809BB888  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809BB88C  7F A6 EB 78 */	mr r6, r29
/* 809BB890  38 E0 00 01 */	li r7, 1
/* 809BB894  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 809BB898  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809BB89C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809BB8A0  4B 6B A9 A9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809BB8A4  38 7D 08 64 */	addi r3, r29, 0x864
/* 809BB8A8  38 9F 00 00 */	addi r4, r31, 0
/* 809BB8AC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809BB8B0  FC 00 00 1E */	fctiwz f0, f0
/* 809BB8B4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809BB8B8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809BB8BC  38 A0 00 00 */	li r5, 0
/* 809BB8C0  7F A6 EB 78 */	mr r6, r29
/* 809BB8C4  4B 6C 7F 9D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809BB8C8  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 809BB8CC  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha /* 0x803B36D8@ha */
/* 809BB8D0  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l /* 0x803B36D8@l */
/* 809BB8D4  4B 6C 8F E1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809BB8D8  38 1D 08 64 */	addi r0, r29, 0x864
/* 809BB8DC  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 809BB8E0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80147FA4@ha */
/* 809BB8E4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80147FA4@l */
/* 809BB8E8  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 809BB8EC  38 7D 06 8C */	addi r3, r29, 0x68c
/* 809BB8F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BB8F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BB8F8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809BB8FC  4B 6B B1 B1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809BB900  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 809BB904  90 1D 09 30 */	stw r0, 0x930(r29)
/* 809BB908  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 809BB90C  90 1D 09 34 */	stw r0, 0x934(r29)
/* 809BB910  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 809BB914  90 1D 09 38 */	stw r0, 0x938(r29)
/* 809BB918  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 809BB91C  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 809BB920  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 809BB924  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 809BB928  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 809BB92C  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 809BB930  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 809BB934  90 1D 09 48 */	stw r0, 0x948(r29)
/* 809BB938  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 809BB93C  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 809BB940  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 809BB944  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 809BB948  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 809BB94C  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 809BB950  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 809BB954  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 809BB958  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 809BB95C  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809BB960  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 809BB964  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 809BB968  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 809BB96C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 809BB970  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 809BB974  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 809BB978  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809BB97C  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 809BB980  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809BB984  41 82 00 14 */	beq lbl_809BB998
/* 809BB988  7F A3 EB 78 */	mr r3, r29
/* 809BB98C  4B 78 D2 E5 */	bl setEnvTevColor__8daNpcT_cFv
/* 809BB990  7F A3 EB 78 */	mr r3, r29
/* 809BB994  4B 78 D3 39 */	bl setRoomNo__8daNpcT_cFv
lbl_809BB998:
/* 809BB998  7F A3 EB 78 */	mr r3, r29
/* 809BB99C  48 00 06 8D */	bl reset__11daNpc_Gnd_cFv
/* 809BB9A0  38 00 00 01 */	li r0, 1
/* 809BB9A4  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 809BB9A8  7F A3 EB 78 */	mr r3, r29
/* 809BB9AC  48 00 04 B5 */	bl Execute__11daNpc_Gnd_cFv
/* 809BB9B0  38 00 00 00 */	li r0, 0
/* 809BB9B4  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_809BB9B8:
/* 809BB9B8  7F C3 F3 78 */	mr r3, r30
lbl_809BB9BC:
/* 809BB9BC  39 61 00 30 */	addi r11, r1, 0x30
/* 809BB9C0  4B 9A 68 69 */	bl _restgpr_29
/* 809BB9C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809BB9C8  7C 08 03 A6 */	mtlr r0
/* 809BB9CC  38 21 00 30 */	addi r1, r1, 0x30
/* 809BB9D0  4E 80 00 20 */	blr 
