lbl_809D77BC:
/* 809D77BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D77C0  7C 08 02 A6 */	mflr r0
/* 809D77C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D77C8  39 61 00 30 */	addi r11, r1, 0x30
/* 809D77CC  4B 98 AA 10 */	b _savegpr_29
/* 809D77D0  7C 7E 1B 78 */	mr r30, r3
/* 809D77D4  3C 60 80 9E */	lis r3, m__18daNpc_grMC_Param_c@ha
/* 809D77D8  3B E3 9D 70 */	addi r31, r3, m__18daNpc_grMC_Param_c@l
/* 809D77DC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809D77E0  28 00 00 01 */	cmplwi r0, 1
/* 809D77E4  38 00 00 00 */	li r0, 0
/* 809D77E8  54 05 18 38 */	slwi r5, r0, 3
/* 809D77EC  3C 60 80 9E */	lis r3, l_bmdData@ha
/* 809D77F0  38 83 9E AC */	addi r4, r3, l_bmdData@l
/* 809D77F4  7C 64 2A 14 */	add r3, r4, r5
/* 809D77F8  80 03 00 04 */	lwz r0, 4(r3)
/* 809D77FC  54 00 10 3A */	slwi r0, r0, 2
/* 809D7800  3C 60 80 9E */	lis r3, l_resNameList@ha
/* 809D7804  38 63 9E C4 */	addi r3, r3, l_resNameList@l
/* 809D7808  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D780C  7C 84 28 2E */	lwzx r4, r4, r5
/* 809D7810  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809D7814  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809D7818  3C A5 00 02 */	addis r5, r5, 2
/* 809D781C  38 C0 00 80 */	li r6, 0x80
/* 809D7820  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809D7824  4B 66 4A C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809D7828  7C 7D 1B 78 */	mr r29, r3
/* 809D782C  38 60 00 58 */	li r3, 0x58
/* 809D7830  4B 8F 74 1C */	b __nw__FUl
/* 809D7834  7C 60 1B 79 */	or. r0, r3, r3
/* 809D7838  41 82 00 48 */	beq lbl_809D7880
/* 809D783C  38 1E 05 80 */	addi r0, r30, 0x580
/* 809D7840  90 01 00 08 */	stw r0, 8(r1)
/* 809D7844  3C 00 00 08 */	lis r0, 8
/* 809D7848  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D784C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809D7850  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809D7854  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D7858  7F A4 EB 78 */	mr r4, r29
/* 809D785C  38 A0 00 00 */	li r5, 0
/* 809D7860  38 C0 00 00 */	li r6, 0
/* 809D7864  38 E0 00 00 */	li r7, 0
/* 809D7868  39 00 FF FF */	li r8, -1
/* 809D786C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809D7870  39 20 00 00 */	li r9, 0
/* 809D7874  39 40 FF FF */	li r10, -1
/* 809D7878  4B 63 8F 58 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809D787C  7C 60 1B 78 */	mr r0, r3
lbl_809D7880:
/* 809D7880  90 1E 05 78 */	stw r0, 0x578(r30)
/* 809D7884  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D7888  28 03 00 00 */	cmplwi r3, 0
/* 809D788C  41 82 00 1C */	beq lbl_809D78A8
/* 809D7890  80 03 00 04 */	lwz r0, 4(r3)
/* 809D7894  28 00 00 00 */	cmplwi r0, 0
/* 809D7898  40 82 00 10 */	bne lbl_809D78A8
/* 809D789C  4B 63 9A 74 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809D78A0  38 00 00 00 */	li r0, 0
/* 809D78A4  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_809D78A8:
/* 809D78A8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D78AC  28 03 00 00 */	cmplwi r3, 0
/* 809D78B0  40 82 00 0C */	bne lbl_809D78BC
/* 809D78B4  38 60 00 00 */	li r3, 0
/* 809D78B8  48 00 00 EC */	b lbl_809D79A4
lbl_809D78BC:
/* 809D78BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D78C0  38 C0 00 00 */	li r6, 0
/* 809D78C4  3C 60 80 9D */	lis r3, ctrlJointCallBack__12daNpc_grMC_cFP8J3DJointi@ha
/* 809D78C8  38 83 7B 38 */	addi r4, r3, ctrlJointCallBack__12daNpc_grMC_cFP8J3DJointi@l
/* 809D78CC  48 00 00 18 */	b lbl_809D78E4
lbl_809D78D0:
/* 809D78D0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 809D78D4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809D78D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D78DC  90 83 00 04 */	stw r4, 4(r3)
/* 809D78E0  38 C6 00 01 */	addi r6, r6, 1
lbl_809D78E4:
/* 809D78E4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809D78E8  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 809D78EC  7C 03 00 40 */	cmplw r3, r0
/* 809D78F0  41 80 FF E0 */	blt lbl_809D78D0
/* 809D78F4  93 C5 00 14 */	stw r30, 0x14(r5)
/* 809D78F8  38 00 00 00 */	li r0, 0
/* 809D78FC  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809D7900  7F C3 F3 78 */	mr r3, r30
/* 809D7904  38 80 00 05 */	li r4, 5
/* 809D7908  38 A0 00 00 */	li r5, 0
/* 809D790C  4B 77 2A 7C */	b setFaceMotionAnm__8daNpcT_cFib
/* 809D7910  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D7914  41 82 00 8C */	beq lbl_809D79A0
/* 809D7918  7F C3 F3 78 */	mr r3, r30
/* 809D791C  38 80 00 00 */	li r4, 0
/* 809D7920  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 809D7924  38 A0 00 00 */	li r5, 0
/* 809D7928  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 809D792C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809D7930  7D 89 03 A6 */	mtctr r12
/* 809D7934  4E 80 04 21 */	bctrl 
/* 809D7938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D793C  41 82 00 64 */	beq lbl_809D79A0
/* 809D7940  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809D7944  2C 00 00 0D */	cmpwi r0, 0xd
/* 809D7948  41 82 00 24 */	beq lbl_809D796C
/* 809D794C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809D7950  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809D7954  4B 76 DF 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D7958  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809D795C  38 00 00 0D */	li r0, 0xd
/* 809D7960  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809D7964  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 809D7968  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809D796C:
/* 809D796C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809D7970  2C 00 00 05 */	cmpwi r0, 5
/* 809D7974  41 82 00 24 */	beq lbl_809D7998
/* 809D7978  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809D797C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809D7980  4B 76 DF 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D7984  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809D7988  38 00 00 05 */	li r0, 5
/* 809D798C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809D7990  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 809D7994  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809D7998:
/* 809D7998  38 60 00 01 */	li r3, 1
/* 809D799C  48 00 00 08 */	b lbl_809D79A4
lbl_809D79A0:
/* 809D79A0  38 60 00 00 */	li r3, 0
lbl_809D79A4:
/* 809D79A4  39 61 00 30 */	addi r11, r1, 0x30
/* 809D79A8  4B 98 A8 80 */	b _restgpr_29
/* 809D79AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D79B0  7C 08 03 A6 */	mtlr r0
/* 809D79B4  38 21 00 30 */	addi r1, r1, 0x30
/* 809D79B8  4E 80 00 20 */	blr 
