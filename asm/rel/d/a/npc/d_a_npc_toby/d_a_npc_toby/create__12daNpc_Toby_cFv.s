lbl_80B1E798:
/* 80B1E798  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B1E79C  7C 08 02 A6 */	mflr r0
/* 80B1E7A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B1E7A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1E7A8  4B 84 3A 34 */	b _savegpr_29
/* 80B1E7AC  7C 7D 1B 78 */	mr r29, r3
/* 80B1E7B0  3C 80 80 B2 */	lis r4, m__18daNpc_Toby_Param_c@ha
/* 80B1E7B4  3B E4 49 E4 */	addi r31, r4, m__18daNpc_Toby_Param_c@l
/* 80B1E7B8  3C 80 80 B2 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B1E7BC  3B C4 4C 48 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B1E7C0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B1E7C4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B1E7C8  40 82 00 40 */	bne lbl_80B1E808
/* 80B1E7CC  28 1D 00 00 */	cmplwi r29, 0
/* 80B1E7D0  41 82 00 2C */	beq lbl_80B1E7FC
/* 80B1E7D4  38 1E 00 70 */	addi r0, r30, 0x70
/* 80B1E7D8  90 01 00 08 */	stw r0, 8(r1)
/* 80B1E7DC  38 9E 00 D0 */	addi r4, r30, 0xd0
/* 80B1E7E0  38 BE 02 90 */	addi r5, r30, 0x290
/* 80B1E7E4  38 DE 05 4C */	addi r6, r30, 0x54c
/* 80B1E7E8  38 E0 00 04 */	li r7, 4
/* 80B1E7EC  39 1E 06 5C */	addi r8, r30, 0x65c
/* 80B1E7F0  39 20 00 04 */	li r9, 4
/* 80B1E7F4  39 5E 00 38 */	addi r10, r30, 0x38
/* 80B1E7F8  48 00 60 49 */	bl __ct__12daNpc_Toby_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
lbl_80B1E7FC:
/* 80B1E7FC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B1E800  60 00 00 08 */	ori r0, r0, 8
/* 80B1E804  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80B1E808:
/* 80B1E808  7F A3 EB 78 */	mr r3, r29
/* 80B1E80C  48 00 09 F5 */	bl getType__12daNpc_Toby_cFv
/* 80B1E810  98 7D 0F 84 */	stb r3, 0xf84(r29)
/* 80B1E814  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B1E818  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80B1E81C  28 03 FF FF */	cmplwi r3, 0xffff
/* 80B1E820  38 00 FF FF */	li r0, -1
/* 80B1E824  41 82 00 08 */	beq lbl_80B1E82C
/* 80B1E828  7C 60 1B 78 */	mr r0, r3
lbl_80B1E82C:
/* 80B1E82C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B1E830  4B 68 DD 4C */	b dKy_darkworld_check__Fv
/* 80B1E834  98 7D 0A 89 */	stb r3, 0xa89(r29)
/* 80B1E838  7F A3 EB 78 */	mr r3, r29
/* 80B1E83C  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B1E840  54 00 10 3A */	slwi r0, r0, 2
/* 80B1E844  38 9E 00 B4 */	addi r4, r30, 0xb4
/* 80B1E848  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B1E84C  38 BE 00 70 */	addi r5, r30, 0x70
/* 80B1E850  4B 62 9B A8 */	b loadRes__8daNpcT_cFPCScPPCc
/* 80B1E854  7C 7E 1B 78 */	mr r30, r3
/* 80B1E858  2C 1E 00 04 */	cmpwi r30, 4
/* 80B1E85C  40 82 01 E8 */	bne lbl_80B1EA44
/* 80B1E860  7F A3 EB 78 */	mr r3, r29
/* 80B1E864  48 00 0A 11 */	bl isDelete__12daNpc_Toby_cFv
/* 80B1E868  2C 03 00 00 */	cmpwi r3, 0
/* 80B1E86C  41 82 00 0C */	beq lbl_80B1E878
/* 80B1E870  38 60 00 05 */	li r3, 5
/* 80B1E874  48 00 01 D4 */	b lbl_80B1EA48
lbl_80B1E878:
/* 80B1E878  7F A3 EB 78 */	mr r3, r29
/* 80B1E87C  3C 80 80 B2 */	lis r4, createHeapCallBack__12daNpc_Toby_cFP10fopAc_ac_c@ha
/* 80B1E880  38 84 F0 10 */	addi r4, r4, createHeapCallBack__12daNpc_Toby_cFP10fopAc_ac_c@l
/* 80B1E884  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B1E888  54 00 10 3A */	slwi r0, r0, 2
/* 80B1E88C  38 BF 00 9C */	addi r5, r31, 0x9c
/* 80B1E890  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B1E894  4B 4F BC 1C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B1E898  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B1E89C  40 82 00 0C */	bne lbl_80B1E8A8
/* 80B1E8A0  38 60 00 05 */	li r3, 5
/* 80B1E8A4  48 00 01 A4 */	b lbl_80B1EA48
lbl_80B1E8A8:
/* 80B1E8A8  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B1E8AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B1E8B0  38 03 00 24 */	addi r0, r3, 0x24
/* 80B1E8B4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80B1E8B8  7F A3 EB 78 */	mr r3, r29
/* 80B1E8BC  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B1E8C0  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80B1E8C4  FC 60 08 90 */	fmr f3, f1
/* 80B1E8C8  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 80B1E8CC  C0 BF 00 C4 */	lfs f5, 0xc4(r31)
/* 80B1E8D0  FC C0 20 90 */	fmr f6, f4
/* 80B1E8D4  4B 4F BC 74 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B1E8D8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B1E8DC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B1E8E0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B1E8E4  38 C0 00 03 */	li r6, 3
/* 80B1E8E8  38 E0 00 01 */	li r7, 1
/* 80B1E8EC  4B 7A 1C 44 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B1E8F0  38 7D 09 C0 */	addi r3, r29, 0x9c0
/* 80B1E8F4  38 9D 06 8C */	addi r4, r29, 0x68c
/* 80B1E8F8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80B1E8FC  FC 40 08 90 */	fmr f2, f1
/* 80B1E900  4B 53 23 9C */	b init__7dPaPo_cFP9dBgS_Acchff
/* 80B1E904  7F A3 EB 78 */	mr r3, r29
/* 80B1E908  48 00 0A 7D */	bl reset__12daNpc_Toby_cFv
/* 80B1E90C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80B1E910  90 01 00 08 */	stw r0, 8(r1)
/* 80B1E914  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B1E918  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B1E91C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80B1E920  7F A6 EB 78 */	mr r6, r29
/* 80B1E924  38 E0 00 01 */	li r7, 1
/* 80B1E928  39 1D 08 A0 */	addi r8, r29, 0x8a0
/* 80B1E92C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80B1E930  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80B1E934  4B 55 79 14 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B1E938  38 7D 08 64 */	addi r3, r29, 0x864
/* 80B1E93C  38 9F 00 00 */	addi r4, r31, 0
/* 80B1E940  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B1E944  FC 00 00 1E */	fctiwz f0, f0
/* 80B1E948  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B1E94C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B1E950  38 A0 00 00 */	li r5, 0
/* 80B1E954  7F A6 EB 78 */	mr r6, r29
/* 80B1E958  4B 56 4F 08 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B1E95C  38 7D 0E 48 */	addi r3, r29, 0xe48
/* 80B1E960  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcT_c@ha
/* 80B1E964  38 84 36 D8 */	addi r4, r4, mCcDCyl__8daNpcT_c@l
/* 80B1E968  4B 56 5F 4C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B1E96C  38 1D 08 64 */	addi r0, r29, 0x864
/* 80B1E970  90 1D 0E 8C */	stw r0, 0xe8c(r29)
/* 80B1E974  3C 60 80 14 */	lis r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B1E978  38 03 7F A4 */	addi r0, r3, tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B1E97C  90 1D 0E EC */	stw r0, 0xeec(r29)
/* 80B1E980  38 7D 06 8C */	addi r3, r29, 0x68c
/* 80B1E984  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B1E988  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B1E98C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B1E990  4B 55 81 1C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B1E994  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80B1E998  90 1D 09 30 */	stw r0, 0x930(r29)
/* 80B1E99C  80 1D 07 6C */	lwz r0, 0x76c(r29)
/* 80B1E9A0  90 1D 09 34 */	stw r0, 0x934(r29)
/* 80B1E9A4  80 1D 07 70 */	lwz r0, 0x770(r29)
/* 80B1E9A8  90 1D 09 38 */	stw r0, 0x938(r29)
/* 80B1E9AC  88 1D 07 74 */	lbz r0, 0x774(r29)
/* 80B1E9B0  98 1D 09 3C */	stb r0, 0x93c(r29)
/* 80B1E9B4  A0 1D 07 7C */	lhz r0, 0x77c(r29)
/* 80B1E9B8  B0 1D 09 44 */	sth r0, 0x944(r29)
/* 80B1E9BC  A0 1D 07 7E */	lhz r0, 0x77e(r29)
/* 80B1E9C0  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 80B1E9C4  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 80B1E9C8  90 1D 09 48 */	stw r0, 0x948(r29)
/* 80B1E9CC  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 80B1E9D0  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B1E9D4  C0 1D 07 8C */	lfs f0, 0x78c(r29)
/* 80B1E9D8  D0 1D 09 54 */	stfs f0, 0x954(r29)
/* 80B1E9DC  C0 1D 07 90 */	lfs f0, 0x790(r29)
/* 80B1E9E0  D0 1D 09 58 */	stfs f0, 0x958(r29)
/* 80B1E9E4  C0 1D 07 94 */	lfs f0, 0x794(r29)
/* 80B1E9E8  D0 1D 09 5C */	stfs f0, 0x95c(r29)
/* 80B1E9EC  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 80B1E9F0  90 1D 09 60 */	stw r0, 0x960(r29)
/* 80B1E9F4  C0 1D 07 9C */	lfs f0, 0x79c(r29)
/* 80B1E9F8  D0 1D 09 64 */	stfs f0, 0x964(r29)
/* 80B1E9FC  80 1D 07 A0 */	lwz r0, 0x7a0(r29)
/* 80B1EA00  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B1EA04  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80B1EA08  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 80B1EA0C  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80B1EA10  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 80B1EA14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B1EA18  41 82 00 14 */	beq lbl_80B1EA2C
/* 80B1EA1C  7F A3 EB 78 */	mr r3, r29
/* 80B1EA20  4B 62 A2 50 */	b setEnvTevColor__8daNpcT_cFv
/* 80B1EA24  7F A3 EB 78 */	mr r3, r29
/* 80B1EA28  4B 62 A2 A4 */	b setRoomNo__8daNpcT_cFv
lbl_80B1EA2C:
/* 80B1EA2C  38 00 00 01 */	li r0, 1
/* 80B1EA30  98 1D 0A 88 */	stb r0, 0xa88(r29)
/* 80B1EA34  7F A3 EB 78 */	mr r3, r29
/* 80B1EA38  48 00 05 25 */	bl Execute__12daNpc_Toby_cFv
/* 80B1EA3C  38 00 00 00 */	li r0, 0
/* 80B1EA40  98 1D 0A 88 */	stb r0, 0xa88(r29)
lbl_80B1EA44:
/* 80B1EA44  7F C3 F3 78 */	mr r3, r30
lbl_80B1EA48:
/* 80B1EA48  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1EA4C  4B 84 37 DC */	b _restgpr_29
/* 80B1EA50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B1EA54  7C 08 03 A6 */	mtlr r0
/* 80B1EA58  38 21 00 30 */	addi r1, r1, 0x30
/* 80B1EA5C  4E 80 00 20 */	blr 
