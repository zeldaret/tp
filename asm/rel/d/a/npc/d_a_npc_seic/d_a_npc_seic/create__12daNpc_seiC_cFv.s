lbl_80AC75E8:
/* 80AC75E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC75EC  7C 08 02 A6 */	mflr r0
/* 80AC75F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC75F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC75F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC75FC  7C 7E 1B 78 */	mr r30, r3
/* 80AC7600  3C 80 80 AD */	lis r4, cNullVec__6Z2Calc@ha
/* 80AC7604  3B E4 92 F0 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80AC7608  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AC760C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AC7610  40 82 00 40 */	bne lbl_80AC7650
/* 80AC7614  28 1E 00 00 */	cmplwi r30, 0
/* 80AC7618  41 82 00 2C */	beq lbl_80AC7644
/* 80AC761C  38 1F 00 40 */	addi r0, r31, 0x40
/* 80AC7620  90 01 00 08 */	stw r0, 8(r1)
/* 80AC7624  38 9F 00 54 */	addi r4, r31, 0x54
/* 80AC7628  38 BF 00 70 */	addi r5, r31, 0x70
/* 80AC762C  38 DF 00 8C */	addi r6, r31, 0x8c
/* 80AC7630  38 E0 00 04 */	li r7, 4
/* 80AC7634  39 1F 00 9C */	addi r8, r31, 0x9c
/* 80AC7638  39 20 00 04 */	li r9, 4
/* 80AC763C  39 5F 00 28 */	addi r10, r31, 0x28
/* 80AC7640  48 00 1B 2D */	bl __ct__12daNpc_seiC_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80AC7644:
/* 80AC7644  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80AC7648  60 00 00 08 */	ori r0, r0, 8
/* 80AC764C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80AC7650:
/* 80AC7650  7F C3 F3 78 */	mr r3, r30
/* 80AC7654  48 00 04 35 */	bl getType__12daNpc_seiC_cFv
/* 80AC7658  98 7E 0E 44 */	stb r3, 0xe44(r30)
/* 80AC765C  7F C3 F3 78 */	mr r3, r30
/* 80AC7660  48 00 04 49 */	bl getFlowNodeNo__12daNpc_seiC_cFv
/* 80AC7664  90 7E 0A 7C */	stw r3, 0xa7c(r30)
/* 80AC7668  38 00 00 00 */	li r0, 0
/* 80AC766C  98 1E 0A 89 */	stb r0, 0xa89(r30)
/* 80AC7670  7F C3 F3 78 */	mr r3, r30
/* 80AC7674  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AC7678  54 00 10 3A */	slwi r0, r0, 2
/* 80AC767C  38 9F 00 4C */	addi r4, r31, 0x4c
/* 80AC7680  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC7684  38 BF 00 40 */	addi r5, r31, 0x40
/* 80AC7688  4B 68 0D 70 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80AC768C  7C 7F 1B 78 */	mr r31, r3
/* 80AC7690  2C 1F 00 04 */	cmpwi r31, 4
/* 80AC7694  40 82 01 78 */	bne lbl_80AC780C
/* 80AC7698  7F C3 F3 78 */	mr r3, r30
/* 80AC769C  3C 80 80 AC */	lis r4, createHeapCallBack__12daNpc_seiC_cFP10fopAc_ac_c@ha
/* 80AC76A0  38 84 7A 68 */	addi r4, r4, createHeapCallBack__12daNpc_seiC_cFP10fopAc_ac_c@l
/* 80AC76A4  38 A0 00 00 */	li r5, 0
/* 80AC76A8  4B 55 2E 08 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AC76AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AC76B0  40 82 00 0C */	bne lbl_80AC76BC
/* 80AC76B4  38 60 00 05 */	li r3, 5
/* 80AC76B8  48 00 01 58 */	b lbl_80AC7810
lbl_80AC76BC:
/* 80AC76BC  7F C3 F3 78 */	mr r3, r30
/* 80AC76C0  48 00 04 05 */	bl isDelete__12daNpc_seiC_cFv
/* 80AC76C4  2C 03 00 00 */	cmpwi r3, 0
/* 80AC76C8  41 82 00 0C */	beq lbl_80AC76D4
/* 80AC76CC  38 60 00 05 */	li r3, 5
/* 80AC76D0  48 00 01 40 */	b lbl_80AC7810
lbl_80AC76D4:
/* 80AC76D4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC76D8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC76DC  38 03 00 24 */	addi r0, r3, 0x24
/* 80AC76E0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80AC76E4  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AC76E8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AC76EC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AC76F0  38 C0 00 03 */	li r6, 3
/* 80AC76F4  38 E0 00 01 */	li r7, 1
/* 80AC76F8  4B 7F 8E 38 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AC76FC  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80AC7700  90 01 00 08 */	stw r0, 8(r1)
/* 80AC7704  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC7708  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AC770C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AC7710  7F C6 F3 78 */	mr r6, r30
/* 80AC7714  38 E0 00 01 */	li r7, 1
/* 80AC7718  39 1E 08 A0 */	addi r8, r30, 0x8a0
/* 80AC771C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AC7720  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80AC7724  4B 5A EB 24 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AC7728  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AC772C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AC7730  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AC7734  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AC7738  4B 5A F3 74 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AC773C  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 80AC7740  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80AC7744  80 1E 07 6C */	lwz r0, 0x76c(r30)
/* 80AC7748  90 1E 09 34 */	stw r0, 0x934(r30)
/* 80AC774C  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80AC7750  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80AC7754  88 1E 07 74 */	lbz r0, 0x774(r30)
/* 80AC7758  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 80AC775C  A0 1E 07 7C */	lhz r0, 0x77c(r30)
/* 80AC7760  B0 1E 09 44 */	sth r0, 0x944(r30)
/* 80AC7764  A0 1E 07 7E */	lhz r0, 0x77e(r30)
/* 80AC7768  B0 1E 09 46 */	sth r0, 0x946(r30)
/* 80AC776C  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 80AC7770  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80AC7774  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 80AC7778  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80AC777C  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 80AC7780  D0 1E 09 54 */	stfs f0, 0x954(r30)
/* 80AC7784  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80AC7788  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80AC778C  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 80AC7790  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80AC7794  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 80AC7798  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80AC779C  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 80AC77A0  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80AC77A4  80 1E 07 A0 */	lwz r0, 0x7a0(r30)
/* 80AC77A8  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80AC77AC  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80AC77B0  D0 1E 0D F4 */	stfs f0, 0xdf4(r30)
/* 80AC77B4  7F C3 F3 78 */	mr r3, r30
/* 80AC77B8  4B 68 14 B8 */	b setEnvTevColor__8daNpcT_cFv
/* 80AC77BC  7F C3 F3 78 */	mr r3, r30
/* 80AC77C0  4B 68 15 0C */	b setRoomNo__8daNpcT_cFv
/* 80AC77C4  38 7E 08 64 */	addi r3, r30, 0x864
/* 80AC77C8  3C 80 80 AD */	lis r4, m__18daNpc_seiC_Param_c@ha
/* 80AC77CC  38 84 92 1C */	addi r4, r4, m__18daNpc_seiC_Param_c@l
/* 80AC77D0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AC77D4  FC 00 00 1E */	fctiwz f0, f0
/* 80AC77D8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AC77DC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AC77E0  38 A0 00 00 */	li r5, 0
/* 80AC77E4  7F C6 F3 78 */	mr r6, r30
/* 80AC77E8  4B 5B C0 78 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AC77EC  7F C3 F3 78 */	mr r3, r30
/* 80AC77F0  48 00 02 DD */	bl reset__12daNpc_seiC_cFv
/* 80AC77F4  38 00 00 01 */	li r0, 1
/* 80AC77F8  98 1E 0A 88 */	stb r0, 0xa88(r30)
/* 80AC77FC  7F C3 F3 78 */	mr r3, r30
/* 80AC7800  48 00 01 B5 */	bl Execute__12daNpc_seiC_cFv
/* 80AC7804  38 00 00 00 */	li r0, 0
/* 80AC7808  98 1E 0A 88 */	stb r0, 0xa88(r30)
lbl_80AC780C:
/* 80AC780C  7F E3 FB 78 */	mr r3, r31
lbl_80AC7810:
/* 80AC7810  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC7814  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC7818  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC781C  7C 08 03 A6 */	mtlr r0
/* 80AC7820  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC7824  4E 80 00 20 */	blr 
