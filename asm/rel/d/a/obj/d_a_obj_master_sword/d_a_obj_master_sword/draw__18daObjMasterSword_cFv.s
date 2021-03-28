lbl_80C91714:
/* 80C91714  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C91718  7C 08 02 A6 */	mflr r0
/* 80C9171C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C91720  39 61 00 30 */	addi r11, r1, 0x30
/* 80C91724  4B 6D 0A B4 */	b _savegpr_28
/* 80C91728  7C 7E 1B 78 */	mr r30, r3
/* 80C9172C  3C 60 80 C9 */	lis r3, mAttr__18daObjMasterSword_c@ha
/* 80C91730  3B E3 19 40 */	addi r31, r3, mAttr__18daObjMasterSword_c@l
/* 80C91734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C91738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9173C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80C91740  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha
/* 80C91744  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l
/* 80C91748  A0 84 00 92 */	lhz r4, 0x92(r4)
/* 80C9174C  4B 3A 32 70 */	b isEventBit__11dSv_event_cCFUs
/* 80C91750  2C 03 00 00 */	cmpwi r3, 0
/* 80C91754  41 82 00 0C */	beq lbl_80C91760
/* 80C91758  38 60 00 01 */	li r3, 1
/* 80C9175C  48 00 01 20 */	b lbl_80C9187C
lbl_80C91760:
/* 80C91760  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C91764  83 83 00 04 */	lwz r28, 4(r3)
/* 80C91768  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C9176C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C91770  38 80 00 10 */	li r4, 0x10
/* 80C91774  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C91778  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C9177C  4B 51 20 48 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C91780  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C91784  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C91788  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C9178C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C91790  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C91794  4B 51 36 0C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C91798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9179C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C917A0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C917A4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80C917A8  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80C917AC  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C917B0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C917B4  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C917B8  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 80C917BC  38 7E 05 74 */	addi r3, r30, 0x574
/* 80C917C0  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C917C4  4B 37 BF 14 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80C917C8  C0 3E 05 9C */	lfs f1, 0x59c(r30)
/* 80C917CC  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80C917D0  38 9C 00 58 */	addi r4, r28, 0x58
/* 80C917D4  4B 37 BF D4 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80C917D8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C917DC  4B 37 C4 E8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C917E0  38 7C 00 58 */	addi r3, r28, 0x58
/* 80C917E4  80 9E 05 88 */	lwz r4, 0x588(r30)
/* 80C917E8  4B 69 DF CC */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80C917EC  38 7C 00 58 */	addi r3, r28, 0x58
/* 80C917F0  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80C917F4  4B 69 E0 8C */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80C917F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C917FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C91800  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C91804  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80C91808  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C9180C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80C91810  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C91814  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C91818  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80C9181C  EC 20 18 2A */	fadds f1, f0, f3
/* 80C91820  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C91824  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C91828  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C9182C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C91830  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C91834  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C91838  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C9183C  80 7E 07 24 */	lwz r3, 0x724(r30)
/* 80C91840  38 80 00 01 */	li r4, 1
/* 80C91844  80 BE 05 68 */	lwz r5, 0x568(r30)
/* 80C91848  38 C1 00 14 */	addi r6, r1, 0x14
/* 80C9184C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C91850  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C91854  C0 9E 07 38 */	lfs f4, 0x738(r30)
/* 80C91858  38 FE 07 28 */	addi r7, r30, 0x728
/* 80C9185C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C91860  39 20 00 00 */	li r9, 0
/* 80C91864  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 80C91868  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80C9186C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80C91870  4B 39 D0 A0 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C91874  90 7E 07 24 */	stw r3, 0x724(r30)
/* 80C91878  38 60 00 01 */	li r3, 1
lbl_80C9187C:
/* 80C9187C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C91880  4B 6D 09 A4 */	b _restgpr_28
/* 80C91884  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C91888  7C 08 03 A6 */	mtlr r0
/* 80C9188C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C91890  4E 80 00 20 */	blr 
