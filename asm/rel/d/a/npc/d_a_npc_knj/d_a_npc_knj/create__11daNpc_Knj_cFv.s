lbl_80A43608:
/* 80A43608  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A4360C  7C 08 02 A6 */	mflr r0
/* 80A43610  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A43614  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A43618  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A4361C  7C 7E 1B 78 */	mr r30, r3
/* 80A43620  3C 80 80 A4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A455D0@ha */
/* 80A43624  3B E4 55 D0 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80A455D0@l */
/* 80A43628  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A4362C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A43630  40 82 00 40 */	bne lbl_80A43670
/* 80A43634  28 1E 00 00 */	cmplwi r30, 0
/* 80A43638  41 82 00 2C */	beq lbl_80A43664
/* 80A4363C  38 1F 00 38 */	addi r0, r31, 0x38
/* 80A43640  90 01 00 08 */	stw r0, 8(r1)
/* 80A43644  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80A43648  38 BF 00 78 */	addi r5, r31, 0x78
/* 80A4364C  38 DF 00 94 */	addi r6, r31, 0x94
/* 80A43650  38 E0 00 04 */	li r7, 4
/* 80A43654  39 1F 00 A4 */	addi r8, r31, 0xa4
/* 80A43658  39 20 00 04 */	li r9, 4
/* 80A4365C  39 5F 00 28 */	addi r10, r31, 0x28
/* 80A43660  48 00 1E 01 */	bl __ct__11daNpc_Knj_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80A43664:
/* 80A43664  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A43668  60 00 00 08 */	ori r0, r0, 8
/* 80A4366C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80A43670:
/* 80A43670  7F C3 F3 78 */	mr r3, r30
/* 80A43674  48 00 04 35 */	bl getType__11daNpc_Knj_cFv
/* 80A43678  98 7E 0E 44 */	stb r3, 0xe44(r30)
/* 80A4367C  7F C3 F3 78 */	mr r3, r30
/* 80A43680  48 00 04 9D */	bl getFlowNodeNo__11daNpc_Knj_cFv
/* 80A43684  90 7E 0A 7C */	stw r3, 0xa7c(r30)
/* 80A43688  38 00 00 00 */	li r0, 0
/* 80A4368C  98 1E 0A 89 */	stb r0, 0xa89(r30)
/* 80A43690  7F C3 F3 78 */	mr r3, r30
/* 80A43694  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80A43698  54 00 10 3A */	slwi r0, r0, 2
/* 80A4369C  38 9F 00 44 */	addi r4, r31, 0x44
/* 80A436A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A436A4  38 BF 00 38 */	addi r5, r31, 0x38
/* 80A436A8  4B 70 4D 51 */	bl loadRes__8daNpcT_cFPCScPPCc
/* 80A436AC  7C 7F 1B 78 */	mr r31, r3
/* 80A436B0  2C 1F 00 04 */	cmpwi r31, 4
/* 80A436B4  40 82 01 78 */	bne lbl_80A4382C
/* 80A436B8  7F C3 F3 78 */	mr r3, r30
/* 80A436BC  3C 80 80 A4 */	lis r4, createHeapCallBack__11daNpc_Knj_cFP10fopAc_ac_c@ha /* 0x80A43A88@ha */
/* 80A436C0  38 84 3A 88 */	addi r4, r4, createHeapCallBack__11daNpc_Knj_cFP10fopAc_ac_c@l /* 0x80A43A88@l */
/* 80A436C4  38 A0 00 00 */	li r5, 0
/* 80A436C8  4B 5D 6D E9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A436CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A436D0  40 82 00 0C */	bne lbl_80A436DC
/* 80A436D4  38 60 00 05 */	li r3, 5
/* 80A436D8  48 00 01 58 */	b lbl_80A43830
lbl_80A436DC:
/* 80A436DC  7F C3 F3 78 */	mr r3, r30
/* 80A436E0  48 00 04 59 */	bl isDelete__11daNpc_Knj_cFv
/* 80A436E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A436E8  41 82 00 0C */	beq lbl_80A436F4
/* 80A436EC  38 60 00 05 */	li r3, 5
/* 80A436F0  48 00 01 40 */	b lbl_80A43830
lbl_80A436F4:
/* 80A436F4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A436F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80A436FC  38 03 00 24 */	addi r0, r3, 0x24
/* 80A43700  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80A43704  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A43708  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A4370C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A43710  38 C0 00 03 */	li r6, 3
/* 80A43714  38 E0 00 01 */	li r7, 1
/* 80A43718  4B 87 CE 19 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A4371C  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80A43720  90 01 00 08 */	stw r0, 8(r1)
/* 80A43724  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A43728  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A4372C  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80A43730  7F C6 F3 78 */	mr r6, r30
/* 80A43734  38 E0 00 01 */	li r7, 1
/* 80A43738  39 1E 08 A0 */	addi r8, r30, 0x8a0
/* 80A4373C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80A43740  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80A43744  4B 63 2B 05 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A43748  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80A4374C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A43750  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A43754  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80A43758  4B 63 33 55 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A4375C  80 1E 07 68 */	lwz r0, 0x768(r30)
/* 80A43760  90 1E 09 30 */	stw r0, 0x930(r30)
/* 80A43764  80 1E 07 6C */	lwz r0, 0x76c(r30)
/* 80A43768  90 1E 09 34 */	stw r0, 0x934(r30)
/* 80A4376C  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80A43770  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80A43774  88 1E 07 74 */	lbz r0, 0x774(r30)
/* 80A43778  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 80A4377C  A0 1E 07 7C */	lhz r0, 0x77c(r30)
/* 80A43780  B0 1E 09 44 */	sth r0, 0x944(r30)
/* 80A43784  A0 1E 07 7E */	lhz r0, 0x77e(r30)
/* 80A43788  B0 1E 09 46 */	sth r0, 0x946(r30)
/* 80A4378C  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 80A43790  90 1E 09 48 */	stw r0, 0x948(r30)
/* 80A43794  80 1E 07 84 */	lwz r0, 0x784(r30)
/* 80A43798  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80A4379C  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 80A437A0  D0 1E 09 54 */	stfs f0, 0x954(r30)
/* 80A437A4  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 80A437A8  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80A437AC  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 80A437B0  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80A437B4  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 80A437B8  90 1E 09 60 */	stw r0, 0x960(r30)
/* 80A437BC  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 80A437C0  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80A437C4  80 1E 07 A0 */	lwz r0, 0x7a0(r30)
/* 80A437C8  90 1E 09 68 */	stw r0, 0x968(r30)
/* 80A437CC  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80A437D0  D0 1E 0D F4 */	stfs f0, 0xdf4(r30)
/* 80A437D4  7F C3 F3 78 */	mr r3, r30
/* 80A437D8  4B 70 54 99 */	bl setEnvTevColor__8daNpcT_cFv
/* 80A437DC  7F C3 F3 78 */	mr r3, r30
/* 80A437E0  4B 70 54 ED */	bl setRoomNo__8daNpcT_cFv
/* 80A437E4  38 7E 08 64 */	addi r3, r30, 0x864
/* 80A437E8  3C 80 80 A4 */	lis r4, m__17daNpc_Knj_Param_c@ha /* 0x80A45510@ha */
/* 80A437EC  38 84 55 10 */	addi r4, r4, m__17daNpc_Knj_Param_c@l /* 0x80A45510@l */
/* 80A437F0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80A437F4  FC 00 00 1E */	fctiwz f0, f0
/* 80A437F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A437FC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A43800  38 A0 00 00 */	li r5, 0
/* 80A43804  7F C6 F3 78 */	mr r6, r30
/* 80A43808  4B 64 00 59 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A4380C  7F C3 F3 78 */	mr r3, r30
/* 80A43810  48 00 03 31 */	bl reset__11daNpc_Knj_cFv
/* 80A43814  38 00 00 01 */	li r0, 1
/* 80A43818  98 1E 0A 88 */	stb r0, 0xa88(r30)
/* 80A4381C  7F C3 F3 78 */	mr r3, r30
/* 80A43820  48 00 01 B5 */	bl Execute__11daNpc_Knj_cFv
/* 80A43824  38 00 00 00 */	li r0, 0
/* 80A43828  98 1E 0A 88 */	stb r0, 0xa88(r30)
lbl_80A4382C:
/* 80A4382C  7F E3 FB 78 */	mr r3, r31
lbl_80A43830:
/* 80A43830  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A43834  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A43838  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A4383C  7C 08 03 A6 */	mtlr r0
/* 80A43840  38 21 00 20 */	addi r1, r1, 0x20
/* 80A43844  4E 80 00 20 */	blr 
