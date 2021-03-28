lbl_80CCE570:
/* 80CCE570  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCE574  7C 08 02 A6 */	mflr r0
/* 80CCE578  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCE57C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCE580  4B 69 3C 5C */	b _savegpr_29
/* 80CCE584  7C 7D 1B 78 */	mr r29, r3
/* 80CCE588  3C 80 80 CD */	lis r4, m__21daObj_Sekizoa_Param_c@ha
/* 80CCE58C  3B E4 5C FC */	addi r31, r4, m__21daObj_Sekizoa_Param_c@l
/* 80CCE590  3C 80 80 CD */	lis r4, cNullVec__6Z2Calc@ha
/* 80CCE594  3B C4 5E D8 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80CCE598  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CCE59C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CCE5A0  40 82 00 40 */	bne lbl_80CCE5E0
/* 80CCE5A4  28 1D 00 00 */	cmplwi r29, 0
/* 80CCE5A8  41 82 00 2C */	beq lbl_80CCE5D4
/* 80CCE5AC  38 1E 00 B8 */	addi r0, r30, 0xb8
/* 80CCE5B0  90 01 00 08 */	stw r0, 8(r1)
/* 80CCE5B4  38 9E 00 EC */	addi r4, r30, 0xec
/* 80CCE5B8  38 BE 01 08 */	addi r5, r30, 0x108
/* 80CCE5BC  38 DE 03 A8 */	addi r6, r30, 0x3a8
/* 80CCE5C0  38 E0 00 04 */	li r7, 4
/* 80CCE5C4  39 1E 03 B8 */	addi r8, r30, 0x3b8
/* 80CCE5C8  39 20 00 04 */	li r9, 4
/* 80CCE5CC  39 5E 00 68 */	addi r10, r30, 0x68
/* 80CCE5D0  48 00 74 71 */	bl __ct__15daObj_Sekizoa_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80CCE5D4:
/* 80CCE5D4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80CCE5D8  60 00 00 08 */	ori r0, r0, 8
/* 80CCE5DC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80CCE5E0:
/* 80CCE5E0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CCE5E4  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80CCE5E8  88 1D 04 99 */	lbz r0, 0x499(r29)
/* 80CCE5EC  7C 00 07 74 */	extsb r0, r0
/* 80CCE5F0  2C 00 00 01 */	cmpwi r0, 1
/* 80CCE5F4  41 82 00 58 */	beq lbl_80CCE64C
/* 80CCE5F8  40 80 00 84 */	bge lbl_80CCE67C
/* 80CCE5FC  2C 00 00 00 */	cmpwi r0, 0
/* 80CCE600  40 80 00 08 */	bge lbl_80CCE608
/* 80CCE604  48 00 00 78 */	b lbl_80CCE67C
lbl_80CCE608:
/* 80CCE608  2C 03 00 02 */	cmpwi r3, 2
/* 80CCE60C  41 82 00 28 */	beq lbl_80CCE634
/* 80CCE610  40 80 00 10 */	bge lbl_80CCE620
/* 80CCE614  2C 03 00 01 */	cmpwi r3, 1
/* 80CCE618  40 80 00 14 */	bge lbl_80CCE62C
/* 80CCE61C  48 00 00 28 */	b lbl_80CCE644
lbl_80CCE620:
/* 80CCE620  2C 03 00 04 */	cmpwi r3, 4
/* 80CCE624  40 80 00 20 */	bge lbl_80CCE644
/* 80CCE628  48 00 00 14 */	b lbl_80CCE63C
lbl_80CCE62C:
/* 80CCE62C  38 00 00 02 */	li r0, 2
/* 80CCE630  48 00 00 50 */	b lbl_80CCE680
lbl_80CCE634:
/* 80CCE634  38 00 00 04 */	li r0, 4
/* 80CCE638  48 00 00 48 */	b lbl_80CCE680
lbl_80CCE63C:
/* 80CCE63C  38 00 00 06 */	li r0, 6
/* 80CCE640  48 00 00 40 */	b lbl_80CCE680
lbl_80CCE644:
/* 80CCE644  38 00 00 00 */	li r0, 0
/* 80CCE648  48 00 00 38 */	b lbl_80CCE680
lbl_80CCE64C:
/* 80CCE64C  2C 03 00 02 */	cmpwi r3, 2
/* 80CCE650  41 82 00 1C */	beq lbl_80CCE66C
/* 80CCE654  40 80 00 20 */	bge lbl_80CCE674
/* 80CCE658  2C 03 00 01 */	cmpwi r3, 1
/* 80CCE65C  40 80 00 08 */	bge lbl_80CCE664
/* 80CCE660  48 00 00 14 */	b lbl_80CCE674
lbl_80CCE664:
/* 80CCE664  38 00 00 03 */	li r0, 3
/* 80CCE668  48 00 00 18 */	b lbl_80CCE680
lbl_80CCE66C:
/* 80CCE66C  38 00 00 05 */	li r0, 5
/* 80CCE670  48 00 00 10 */	b lbl_80CCE680
lbl_80CCE674:
/* 80CCE674  38 00 00 01 */	li r0, 1
/* 80CCE678  48 00 00 08 */	b lbl_80CCE680
lbl_80CCE67C:
/* 80CCE67C  38 00 00 00 */	li r0, 0
lbl_80CCE680:
/* 80CCE680  98 1D 10 C8 */	stb r0, 0x10c8(r29)
/* 80CCE684  38 00 00 00 */	li r0, 0
/* 80CCE688  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80CCE68C  7F A3 EB 78 */	mr r3, r29
/* 80CCE690  88 1D 10 C8 */	lbz r0, 0x10c8(r29)
/* 80CCE694  54 00 10 3A */	slwi r0, r0, 2
/* 80CCE698  38 9E 00 CC */	addi r4, r30, 0xcc
/* 80CCE69C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CCE6A0  38 BE 00 B8 */	addi r5, r30, 0xb8
/* 80CCE6A4  4B 47 9D 54 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80CCE6A8  7C 7E 1B 78 */	mr r30, r3
/* 80CCE6AC  2C 1E 00 04 */	cmpwi r30, 4
/* 80CCE6B0  40 82 01 E4 */	bne lbl_80CCE894
/* 80CCE6B4  7F A3 EB 78 */	mr r3, r29
/* 80CCE6B8  48 00 09 85 */	bl isDelete__15daObj_Sekizoa_cFv
/* 80CCE6BC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCE6C0  41 82 00 0C */	beq lbl_80CCE6CC
/* 80CCE6C4  38 60 00 05 */	li r3, 5
/* 80CCE6C8  48 00 01 D0 */	b lbl_80CCE898
lbl_80CCE6CC:
/* 80CCE6CC  7F A3 EB 78 */	mr r3, r29
/* 80CCE6D0  3C 80 80 CD */	lis r4, createHeapCallBack__15daObj_Sekizoa_cFP10fopAc_ac_c@ha
/* 80CCE6D4  38 84 ED 74 */	addi r4, r4, createHeapCallBack__15daObj_Sekizoa_cFP10fopAc_ac_c@l
/* 80CCE6D8  88 1D 10 C8 */	lbz r0, 0x10c8(r29)
/* 80CCE6DC  54 00 10 3A */	slwi r0, r0, 2
/* 80CCE6E0  38 BF 00 9C */	addi r5, r31, 0x9c
/* 80CCE6E4  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CCE6E8  4B 34 BD C8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CCE6EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCE6F0  40 82 00 0C */	bne lbl_80CCE6FC
/* 80CCE6F4  38 60 00 05 */	li r3, 5
/* 80CCE6F8  48 00 01 A0 */	b lbl_80CCE898
lbl_80CCE6FC:
/* 80CCE6FC  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80CCE700  80 63 00 04 */	lwz r3, 4(r3)
/* 80CCE704  80 83 00 04 */	lwz r4, 4(r3)
/* 80CCE708  38 03 00 24 */	addi r0, r3, 0x24
/* 80CCE70C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80CCE710  7F A3 EB 78 */	mr r3, r29
/* 80CCE714  4B 34 BE 64 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CCE718  38 7D 05 80 */	addi r3, r29, 0x580
/* 80CCE71C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CCE720  38 BD 05 38 */	addi r5, r29, 0x538
/* 80CCE724  38 C0 00 03 */	li r6, 3
/* 80CCE728  38 E0 00 01 */	li r7, 1
/* 80CCE72C  4B 5F 1E 04 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80CCE730  7F A3 EB 78 */	mr r3, r29
/* 80CCE734  48 00 0A 05 */	bl reset__15daObj_Sekizoa_cFv
/* 80CCE738  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80CCE73C  90 01 00 08 */	stw r0, 8(r1)
/* 80CCE740  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80CCE744  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CCE748  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80CCE74C  7F A6 EB 78 */	mr r6, r29
/* 80CCE750  38 E0 00 01 */	li r7, 1
/* 80CCE754  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80CCE758  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80CCE75C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80CCE760  4B 3A 7A E8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CCE764  38 7D 08 64 */	addi r3, r29, 0x864
/* 80CCE768  38 9F 00 00 */	addi r4, r31, 0
/* 80CCE76C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80CCE770  FC 00 00 1E */	fctiwz f0, f0
/* 80CCE774  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CCE778  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80CCE77C  38 A0 00 00 */	li r5, 0
/* 80CCE780  7F A6 EB 78 */	mr r6, r29
/* 80CCE784  4B 3B 50 DC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CCE788  38 7D 0E 50 */	addi r3, r29, 0xe50
/* 80CCE78C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80CCE790  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80CCE794  4B 3B 61 20 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CCE798  38 1D 08 64 */	addi r0, r29, 0x864
/* 80CCE79C  90 1D 0E 94 */	stw r0, 0xe94(r29)
/* 80CCE7A0  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80CCE7A4  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80CCE7A8  90 1D 0E F4 */	stw r0, 0xef4(r29)
/* 80CCE7AC  38 7D 0F 8C */	addi r3, r29, 0xf8c
/* 80CCE7B0  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80CCE7B4  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80CCE7B8  4B 3B 60 FC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CCE7BC  38 1D 08 64 */	addi r0, r29, 0x864
/* 80CCE7C0  90 1D 0F D0 */	stw r0, 0xfd0(r29)
/* 80CCE7C4  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80CCE7C8  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80CCE7CC  90 1D 10 30 */	stw r0, 0x1030(r29)
/* 80CCE7D0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80CCE7D4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CCE7D8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CCE7DC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CCE7E0  4B 3A 82 CC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CCE7E4  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80CCE7E8  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80CCE7EC  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80CCE7F0  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80CCE7F4  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80CCE7F8  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80CCE7FC  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80CCE800  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80CCE804  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80CCE808  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80CCE80C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80CCE810  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80CCE814  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80CCE818  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80CCE81C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80CCE820  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80CCE824  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80CCE828  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80CCE82C  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80CCE830  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80CCE834  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80CCE838  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80CCE83C  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80CCE840  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80CCE844  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80CCE848  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80CCE84C  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80CCE850  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80CCE854  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80CCE858  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80CCE85C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80CCE860  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80CCE864  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CCE868  41 82 00 14 */	beq lbl_80CCE87C
/* 80CCE86C  7F A3 EB 78 */	mr r3, r29
/* 80CCE870  4B 47 A4 00 */	b setEnvTevColor__8daNpcT_cFv
/* 80CCE874  7F A3 EB 78 */	mr r3, r29
/* 80CCE878  4B 47 A4 54 */	b setRoomNo__8daNpcT_cFv
lbl_80CCE87C:
/* 80CCE87C  38 00 00 01 */	li r0, 1
/* 80CCE880  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80CCE884  7F A3 EB 78 */	mr r3, r29
/* 80CCE888  48 00 04 01 */	bl Execute__15daObj_Sekizoa_cFv
/* 80CCE88C  38 00 00 00 */	li r0, 0
/* 80CCE890  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80CCE894:
/* 80CCE894  7F C3 F3 78 */	mr r3, r30
lbl_80CCE898:
/* 80CCE898  39 61 00 30 */	addi r11, r1, 0x30
/* 80CCE89C  4B 69 39 8C */	b _restgpr_29
/* 80CCE8A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCE8A4  7C 08 03 A6 */	mtlr r0
/* 80CCE8A8  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCE8AC  4E 80 00 20 */	blr 
