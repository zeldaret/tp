lbl_80AC9728:
/* 80AC9728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC972C  7C 08 02 A6 */	mflr r0
/* 80AC9730  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC9734  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC9738  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC973C  7C 7E 1B 78 */	mr r30, r3
/* 80AC9740  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha
/* 80AC9744  3B E4 B4 30 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80AC9748  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AC974C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AC9750  40 82 00 40 */	bne lbl_80AC9790
/* 80AC9754  28 1E 00 00 */	cmplwi r30, 0
/* 80AC9758  41 82 00 2C */	beq lbl_80AC9784
/* 80AC975C  38 1F 00 40 */	addi r0, r31, 0x40
/* 80AC9760  90 01 00 08 */	stw r0, 8(r1)
/* 80AC9764  38 9F 00 54 */	addi r4, r31, 0x54
/* 80AC9768  38 BF 00 70 */	addi r5, r31, 0x70
/* 80AC976C  38 DF 00 8C */	addi r6, r31, 0x8c
/* 80AC9770  38 E0 00 04 */	li r7, 4
/* 80AC9774  39 1F 00 9C */	addi r8, r31, 0x9c
/* 80AC9778  39 20 00 04 */	li r9, 4
/* 80AC977C  39 5F 00 28 */	addi r10, r31, 0x28
/* 80AC9780  48 00 1B 2D */	bl __ct__12daNpc_seiD_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AC9784:
/* 80AC9784  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AC9788  60 00 00 08 */	ori r0, r0, 8
/* 80AC978C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80AC9790:
/* 80AC9790  7F C3 F3 78 */	mr r3, r30
/* 80AC9794  48 00 04 35 */	bl getType__12daNpc_seiD_cFv
/* 80AC9798  98 7E 0E 44 */	stb r3, 0xe44(r30)
/* 80AC979C  7F C3 F3 78 */	mr r3, r30
/* 80AC97A0  48 00 04 49 */	bl getFlowNodeNo__12daNpc_seiD_cFv
/* 80AC97A4  90 7E 0A 7C */	stw r3, 0xa7c(r30)
/* 80AC97A8  38 00 00 00 */	li r0, 0
/* 80AC97AC  98 1E 0A 89 */	stb r0, 0xa89(r30)
/* 80AC97B0  7F C3 F3 78 */	mr r3, r30
/* 80AC97B4  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AC97B8  54 00 10 3A */	slwi r0, r0, 2
/* 80AC97BC  38 9F 00 4C */	addi r4, r31, 0x4c
/* 80AC97C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC97C4  38 BF 00 40 */	addi r5, r31, 0x40
/* 80AC97C8  4B 67 EC 30 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80AC97CC  7C 7F 1B 78 */	mr r31, r3
/* 80AC97D0  2C 1F 00 04 */	cmpwi r31, 4
/* 80AC97D4  40 82 01 78 */	bne lbl_80AC994C
/* 80AC97D8  7F C3 F3 78 */	mr r3, r30
/* 80AC97DC  3C 80 80 AD */	lis r4, createHeapCallBack__12daNpc_seiD_cFP10fopAc_ac_c@ha
/* 80AC97E0  38 84 9B A8 */	addi r4, r4, createHeapCallBack__12daNpc_seiD_cFP10fopAc_ac_c@l
/* 80AC97E4  38 A0 00 00 */	li r5, 0
/* 80AC97E8  4B 55 0C C8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AC97EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC97F0  40 82 00 0C */	bne lbl_80AC97FC
/* 80AC97F4  38 60 00 05 */	li r3, 5
/* 80AC97F8  48 00 01 58 */	b lbl_80AC9950
lbl_80AC97FC:
/* 80AC97FC  7F C3 F3 78 */	mr r3, r30
/* 80AC9800  48 00 04 05 */	bl isDelete__12daNpc_seiD_cFv
/* 80AC9804  2C 03 00 00 */	cmpwi r3, 0
/* 80AC9808  41 82 00 0C */	beq lbl_80AC9814
/* 80AC980C  38 60 00 05 */	li r3, 5
/* 80AC9810  48 00 01 40 */	b lbl_80AC9950
lbl_80AC9814:
/* 80AC9814  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC9818  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC981C  38 03 00 24 */	addi r0, r3, 0x24
/* 80AC9820  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80AC9824  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AC9828  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AC982C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AC9830  38 C0 00 03 */	li r6, 3
/* 80AC9834  38 E0 00 01 */	li r7, 1
/* 80AC9838  4B 7F 6C F8 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AC983C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80AC9840  90 01 00 08 */	stw r0, 8(r1)
/* 80AC9844  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC9848  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AC984C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AC9850  7F C6 F3 78 */	mr r6, r30
/* 80AC9854  38 E0 00 01 */	li r7, 1
/* 80AC9858  39 1E 08 A0 */	addi r8, r30, 0x8a0
/* 80AC985C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AC9860  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80AC9864  4B 5A C9 E4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AC9868  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC986C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AC9870  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AC9874  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AC9878  4B 5A D2 34 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AC987C  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 80AC9880  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80AC9884  80 1E 07 6C */	lwz r0, 0x76c(r30)
/* 80AC9888  90 1E 09 34 */	stw r0, 0x934(r30)
/* 80AC988C  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80AC9890  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80AC9894  88 1E 07 74 */	lbz r0, 0x774(r30)
/* 80AC9898  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 80AC989C  A0 1E 07 7C */	lhz r0, 0x77c(r30)
/* 80AC98A0  B0 1E 09 44 */	sth r0, 0x944(r30)
/* 80AC98A4  A0 1E 07 7E */	lhz r0, 0x77e(r30)
/* 80AC98A8  B0 1E 09 46 */	sth r0, 0x946(r30)
/* 80AC98AC  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 80AC98B0  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80AC98B4  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 80AC98B8  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80AC98BC  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 80AC98C0  D0 1E 09 54 */	stfs f0, 0x954(r30)
/* 80AC98C4  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80AC98C8  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80AC98CC  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 80AC98D0  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80AC98D4  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 80AC98D8  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80AC98DC  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 80AC98E0  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80AC98E4  80 1E 07 A0 */	lwz r0, 0x7a0(r30)
/* 80AC98E8  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80AC98EC  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80AC98F0  D0 1E 0D F4 */	stfs f0, 0xdf4(r30)
/* 80AC98F4  7F C3 F3 78 */	mr r3, r30
/* 80AC98F8  4B 67 F3 78 */	b setEnvTevColor__8daNpcT_cFv
/* 80AC98FC  7F C3 F3 78 */	mr r3, r30
/* 80AC9900  4B 67 F3 CC */	b setRoomNo__8daNpcT_cFv
/* 80AC9904  38 7E 08 64 */	addi r3, r30, 0x864
/* 80AC9908  3C 80 80 AD */	lis r4, m__18daNpc_seiD_Param_c@ha
/* 80AC990C  38 84 B3 5C */	addi r4, r4, m__18daNpc_seiD_Param_c@l
/* 80AC9910  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AC9914  FC 00 00 1E */	fctiwz f0, f0
/* 80AC9918  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AC991C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AC9920  38 A0 00 00 */	li r5, 0
/* 80AC9924  7F C6 F3 78 */	mr r6, r30
/* 80AC9928  4B 5B 9F 38 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AC992C  7F C3 F3 78 */	mr r3, r30
/* 80AC9930  48 00 02 DD */	bl reset__12daNpc_seiD_cFv
/* 80AC9934  38 00 00 01 */	li r0, 1
/* 80AC9938  98 1E 0A 88 */	stb r0, 0xa88(r30)
/* 80AC993C  7F C3 F3 78 */	mr r3, r30
/* 80AC9940  48 00 01 B5 */	bl Execute__12daNpc_seiD_cFv
/* 80AC9944  38 00 00 00 */	li r0, 0
/* 80AC9948  98 1E 0A 88 */	stb r0, 0xa88(r30)
lbl_80AC994C:
/* 80AC994C  7F E3 FB 78 */	mr r3, r31
lbl_80AC9950:
/* 80AC9950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC9954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC9958  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC995C  7C 08 03 A6 */	mtlr r0
/* 80AC9960  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC9964  4E 80 00 20 */	blr 
