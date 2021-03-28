lbl_80B6904C:
/* 80B6904C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B69050  7C 08 02 A6 */	mflr r0
/* 80B69054  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B69058  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6905C  4B 7F 91 80 */	b _savegpr_29
/* 80B69060  7C 7D 1B 78 */	mr r29, r3
/* 80B69064  3C 80 80 B7 */	lis r4, m__18daNpc_zanB_Param_c@ha
/* 80B69068  3B E4 BC C4 */	addi r31, r4, m__18daNpc_zanB_Param_c@l
/* 80B6906C  3C 80 80 B7 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B69070  3B C4 BD D0 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B69074  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B69078  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B6907C  40 82 00 40 */	bne lbl_80B690BC
/* 80B69080  28 1D 00 00 */	cmplwi r29, 0
/* 80B69084  41 82 00 2C */	beq lbl_80B690B0
/* 80B69088  38 1E 00 38 */	addi r0, r30, 0x38
/* 80B6908C  90 01 00 08 */	stw r0, 8(r1)
/* 80B69090  38 9E 00 4C */	addi r4, r30, 0x4c
/* 80B69094  38 BE 00 68 */	addi r5, r30, 0x68
/* 80B69098  38 DE 00 A0 */	addi r6, r30, 0xa0
/* 80B6909C  38 E0 00 04 */	li r7, 4
/* 80B690A0  39 1E 00 B0 */	addi r8, r30, 0xb0
/* 80B690A4  39 20 00 04 */	li r9, 4
/* 80B690A8  39 5E 00 28 */	addi r10, r30, 0x28
/* 80B690AC  48 00 2A 31 */	bl __ct__12daNpc_zanB_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B690B0:
/* 80B690B0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B690B4  60 00 00 08 */	ori r0, r0, 8
/* 80B690B8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B690BC:
/* 80B690BC  7F A3 EB 78 */	mr r3, r29
/* 80B690C0  48 00 07 FD */	bl getType__12daNpc_zanB_cFv
/* 80B690C4  98 7D 0F 80 */	stb r3, 0xf80(r29)
/* 80B690C8  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B690CC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80B690D0  28 03 FF FF */	cmplwi r3, 0xffff
/* 80B690D4  38 00 FF FF */	li r0, -1
/* 80B690D8  41 82 00 08 */	beq lbl_80B690E0
/* 80B690DC  7C 60 1B 78 */	mr r0, r3
lbl_80B690E0:
/* 80B690E0  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B690E4  38 00 00 00 */	li r0, 0
/* 80B690E8  98 1D 0A 89 */	stb r0, 0xa89(r29)
/* 80B690EC  7F A3 EB 78 */	mr r3, r29
/* 80B690F0  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B690F4  54 00 10 3A */	slwi r0, r0, 2
/* 80B690F8  38 9E 00 44 */	addi r4, r30, 0x44
/* 80B690FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B69100  38 BE 00 38 */	addi r5, r30, 0x38
/* 80B69104  4B 5D F2 F4 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80B69108  7C 7E 1B 78 */	mr r30, r3
/* 80B6910C  2C 1E 00 04 */	cmpwi r30, 4
/* 80B69110  40 82 02 04 */	bne lbl_80B69314
/* 80B69114  7F A3 EB 78 */	mr r3, r29
/* 80B69118  48 00 07 C5 */	bl isDelete__12daNpc_zanB_cFv
/* 80B6911C  2C 03 00 00 */	cmpwi r3, 0
/* 80B69120  41 82 00 0C */	beq lbl_80B6912C
/* 80B69124  38 60 00 05 */	li r3, 5
/* 80B69128  48 00 01 F0 */	b lbl_80B69318
lbl_80B6912C:
/* 80B6912C  7F A3 EB 78 */	mr r3, r29
/* 80B69130  3C 80 80 B7 */	lis r4, createHeapCallBack__12daNpc_zanB_cFP10fopAc_ac_c@ha
/* 80B69134  38 84 98 44 */	addi r4, r4, createHeapCallBack__12daNpc_zanB_cFP10fopAc_ac_c@l
/* 80B69138  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B6913C  54 00 10 3A */	slwi r0, r0, 2
/* 80B69140  38 BF 00 8C */	addi r5, r31, 0x8c
/* 80B69144  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B69148  4B 4B 13 68 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B6914C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B69150  40 82 00 0C */	bne lbl_80B6915C
/* 80B69154  38 60 00 05 */	li r3, 5
/* 80B69158  48 00 01 C0 */	b lbl_80B69318
lbl_80B6915C:
/* 80B6915C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B69160  80 63 00 04 */	lwz r3, 4(r3)
/* 80B69164  38 03 00 24 */	addi r0, r3, 0x24
/* 80B69168  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B6916C  7F A3 EB 78 */	mr r3, r29
/* 80B69170  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80B69174  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80B69178  FC 60 08 90 */	fmr f3, f1
/* 80B6917C  C0 9F 00 9C */	lfs f4, 0x9c(r31)
/* 80B69180  C0 BF 00 A0 */	lfs f5, 0xa0(r31)
/* 80B69184  FC C0 20 90 */	fmr f6, f4
/* 80B69188  4B 4B 13 C0 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B6918C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80B69190  64 00 08 00 */	oris r0, r0, 0x800
/* 80B69194  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80B69198  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B6919C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B691A0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B691A4  38 C0 00 03 */	li r6, 3
/* 80B691A8  38 E0 00 01 */	li r7, 1
/* 80B691AC  4B 75 73 84 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B691B0  7F A3 EB 78 */	mr r3, r29
/* 80B691B4  48 00 07 31 */	bl reset__12daNpc_zanB_cFv
/* 80B691B8  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B691BC  90 01 00 08 */	stw r0, 8(r1)
/* 80B691C0  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B691C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B691C8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B691CC  7F A6 EB 78 */	mr r6, r29
/* 80B691D0  38 E0 00 01 */	li r7, 1
/* 80B691D4  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B691D8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B691DC  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B691E0  4B 50 D0 68 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B691E4  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B691E8  38 9F 00 00 */	addi r4, r31, 0
/* 80B691EC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B691F0  FC 00 00 1E */	fctiwz f0, f0
/* 80B691F4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B691F8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B691FC  38 A0 00 00 */	li r5, 0
/* 80B69200  7F A6 EB 78 */	mr r6, r29
/* 80B69204  4B 51 A6 5C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B69208  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 80B6920C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80B69210  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80B69214  4B 51 B6 A0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B69218  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B6921C  90 1D 0E 88 */	stw r0, 0xe88(r29)
/* 80B69220  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B69224  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B69228  90 1D 0E E8 */	stw r0, 0xee8(r29)
/* 80B6922C  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 80B69230  28 00 00 00 */	cmplwi r0, 0
/* 80B69234  40 82 00 1C */	bne lbl_80B69250
/* 80B69238  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80B6923C  60 00 00 02 */	ori r0, r0, 2
/* 80B69240  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 80B69244  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80B69248  60 00 00 04 */	ori r0, r0, 4
/* 80B6924C  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_80B69250:
/* 80B69250  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B69254  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B69258  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B6925C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B69260  4B 50 D8 4C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B69264  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B69268  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B6926C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B69270  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B69274  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B69278  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B6927C  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B69280  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B69284  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B69288  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B6928C  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B69290  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B69294  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B69298  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B6929C  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B692A0  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B692A4  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B692A8  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B692AC  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B692B0  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B692B4  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B692B8  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B692BC  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B692C0  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B692C4  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B692C8  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B692CC  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B692D0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B692D4  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B692D8  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B692DC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80B692E0  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B692E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B692E8  41 82 00 14 */	beq lbl_80B692FC
/* 80B692EC  7F A3 EB 78 */	mr r3, r29
/* 80B692F0  4B 5D F9 80 */	b setEnvTevColor__8daNpcT_cFv
/* 80B692F4  7F A3 EB 78 */	mr r3, r29
/* 80B692F8  4B 5D F9 D4 */	b setRoomNo__8daNpcT_cFv
lbl_80B692FC:
/* 80B692FC  38 00 00 01 */	li r0, 1
/* 80B69300  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B69304  7F A3 EB 78 */	mr r3, r29
/* 80B69308  48 00 04 89 */	bl Execute__12daNpc_zanB_cFv
/* 80B6930C  38 00 00 00 */	li r0, 0
/* 80B69310  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B69314:
/* 80B69314  7F C3 F3 78 */	mr r3, r30
lbl_80B69318:
/* 80B69318  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6931C  4B 7F 8F 0C */	b _restgpr_29
/* 80B69320  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B69324  7C 08 03 A6 */	mtlr r0
/* 80B69328  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6932C  4E 80 00 20 */	blr 
