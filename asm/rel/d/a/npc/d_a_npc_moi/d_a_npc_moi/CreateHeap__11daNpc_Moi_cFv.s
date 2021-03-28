lbl_80A74474:
/* 80A74474  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A74478  7C 08 02 A6 */	mflr r0
/* 80A7447C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A74480  39 61 00 40 */	addi r11, r1, 0x40
/* 80A74484  4B 8E DD 48 */	b _savegpr_25
/* 80A74488  7C 7F 1B 78 */	mr r31, r3
/* 80A7448C  3C 80 80 A8 */	lis r4, m__17daNpc_Moi_Param_c@ha
/* 80A74490  3B A4 AE F0 */	addi r29, r4, m__17daNpc_Moi_Param_c@l
/* 80A74494  3B 20 00 00 */	li r25, 0
/* 80A74498  48 00 0C A5 */	bl chkMoiN__11daNpc_Moi_cFv
/* 80A7449C  2C 03 00 00 */	cmpwi r3, 0
/* 80A744A0  41 82 00 08 */	beq lbl_80A744A8
/* 80A744A4  3B 20 00 07 */	li r25, 7
lbl_80A744A8:
/* 80A744A8  57 25 18 38 */	slwi r5, r25, 3
/* 80A744AC  3C 60 80 A8 */	lis r3, l_bmdData@ha
/* 80A744B0  38 83 B1 7C */	addi r4, r3, l_bmdData@l
/* 80A744B4  7C 64 2A 14 */	add r3, r4, r5
/* 80A744B8  80 03 00 04 */	lwz r0, 4(r3)
/* 80A744BC  54 00 10 3A */	slwi r0, r0, 2
/* 80A744C0  3C 60 80 A8 */	lis r3, l_resNameList@ha
/* 80A744C4  38 63 B1 DC */	addi r3, r3, l_resNameList@l
/* 80A744C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A744CC  7C 84 28 2E */	lwzx r4, r4, r5
/* 80A744D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A744D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A744D8  3F C5 00 02 */	addis r30, r5, 2
/* 80A744DC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80A744E0  7F C5 F3 78 */	mr r5, r30
/* 80A744E4  38 C0 00 80 */	li r6, 0x80
/* 80A744E8  4B 5C 7E 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A744EC  7C 79 1B 79 */	or. r25, r3, r3
/* 80A744F0  40 82 00 0C */	bne lbl_80A744FC
/* 80A744F4  38 60 00 01 */	li r3, 1
/* 80A744F8  48 00 03 2C */	b lbl_80A74824
lbl_80A744FC:
/* 80A744FC  38 60 00 58 */	li r3, 0x58
/* 80A74500  4B 85 A7 4C */	b __nw__FUl
/* 80A74504  7C 60 1B 79 */	or. r0, r3, r3
/* 80A74508  41 82 00 48 */	beq lbl_80A74550
/* 80A7450C  38 1F 05 80 */	addi r0, r31, 0x580
/* 80A74510  90 01 00 08 */	stw r0, 8(r1)
/* 80A74514  3C 00 00 08 */	lis r0, 8
/* 80A74518  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7451C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A74520  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A74524  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A74528  7F 24 CB 78 */	mr r4, r25
/* 80A7452C  38 A0 00 00 */	li r5, 0
/* 80A74530  38 C0 00 00 */	li r6, 0
/* 80A74534  38 E0 00 00 */	li r7, 0
/* 80A74538  39 00 FF FF */	li r8, -1
/* 80A7453C  C0 3D 01 10 */	lfs f1, 0x110(r29)
/* 80A74540  39 20 00 00 */	li r9, 0
/* 80A74544  39 40 FF FF */	li r10, -1
/* 80A74548  4B 59 C2 88 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A7454C  7C 60 1B 78 */	mr r0, r3
lbl_80A74550:
/* 80A74550  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80A74554  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A74558  28 03 00 00 */	cmplwi r3, 0
/* 80A7455C  41 82 00 10 */	beq lbl_80A7456C
/* 80A74560  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A74564  28 05 00 00 */	cmplwi r5, 0
/* 80A74568  40 82 00 0C */	bne lbl_80A74574
lbl_80A7456C:
/* 80A7456C  38 60 00 00 */	li r3, 0
/* 80A74570  48 00 02 B4 */	b lbl_80A74824
lbl_80A74574:
/* 80A74574  38 C0 00 00 */	li r6, 0
/* 80A74578  3C 60 80 A7 */	lis r3, ctrlJointCallBack__11daNpc_Moi_cFP8J3DJointi@ha
/* 80A7457C  38 83 4B A0 */	addi r4, r3, ctrlJointCallBack__11daNpc_Moi_cFP8J3DJointi@l
/* 80A74580  48 00 00 18 */	b lbl_80A74598
lbl_80A74584:
/* 80A74584  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80A74588  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A7458C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A74590  90 83 00 04 */	stw r4, 4(r3)
/* 80A74594  38 C6 00 01 */	addi r6, r6, 1
lbl_80A74598:
/* 80A74598  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A7459C  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 80A745A0  7C 03 00 40 */	cmplw r3, r0
/* 80A745A4  41 80 FF E0 */	blt lbl_80A74584
/* 80A745A8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A745AC  38 60 01 08 */	li r3, 0x108
/* 80A745B0  4B 85 A6 9C */	b __nw__FUl
/* 80A745B4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A745B8  41 82 00 D0 */	beq lbl_80A74688
/* 80A745BC  7F 7A DB 78 */	mr r26, r27
/* 80A745C0  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80A745C4  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80A745C8  90 1B 00 00 */	stw r0, 0(r27)
/* 80A745CC  38 7A 00 04 */	addi r3, r26, 4
/* 80A745D0  3C 80 80 A7 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80A745D4  38 84 49 E0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80A745D8  3C A0 80 A7 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80A745DC  38 A5 49 A4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80A745E0  38 C0 00 08 */	li r6, 8
/* 80A745E4  38 E0 00 02 */	li r7, 2
/* 80A745E8  4B 8E D7 78 */	b __construct_array
/* 80A745EC  38 7A 00 14 */	addi r3, r26, 0x14
/* 80A745F0  3C 80 80 A7 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80A745F4  38 84 49 8C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80A745F8  3C A0 80 A7 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80A745FC  38 A5 49 50 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80A74600  38 C0 00 08 */	li r6, 8
/* 80A74604  38 E0 00 08 */	li r7, 8
/* 80A74608  4B 8E D7 58 */	b __construct_array
/* 80A7460C  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A74610  3C 80 80 A7 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80A74614  38 84 49 2C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80A74618  3C A0 80 A7 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80A7461C  38 A5 48 E4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80A74620  38 C0 00 0C */	li r6, 0xc
/* 80A74624  38 E0 00 08 */	li r7, 8
/* 80A74628  4B 8E D7 38 */	b __construct_array
/* 80A7462C  38 7A 00 B4 */	addi r3, r26, 0xb4
/* 80A74630  3C 80 80 A7 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80A74634  38 84 48 CC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80A74638  3C A0 80 A7 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80A7463C  38 A5 48 90 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80A74640  38 C0 00 08 */	li r6, 8
/* 80A74644  38 E0 00 04 */	li r7, 4
/* 80A74648  4B 8E D7 18 */	b __construct_array
/* 80A7464C  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 80A74650  3C 80 80 A7 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80A74654  38 84 48 78 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80A74658  3C A0 80 A7 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80A7465C  38 A5 48 3C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80A74660  38 C0 00 08 */	li r6, 8
/* 80A74664  38 E0 00 04 */	li r7, 4
/* 80A74668  4B 8E D6 F8 */	b __construct_array
/* 80A7466C  7F 43 D3 78 */	mr r3, r26
/* 80A74670  4B 8B 7C B0 */	b initialize__14J3DMaterialAnmFv
/* 80A74674  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80A74678  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80A7467C  90 1B 00 00 */	stw r0, 0(r27)
/* 80A74680  7F 63 DB 78 */	mr r3, r27
/* 80A74684  4B 6D 10 E0 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A74688:
/* 80A74688  93 7F 09 6C */	stw r27, 0x96c(r31)
/* 80A7468C  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80A74690  28 00 00 00 */	cmplwi r0, 0
/* 80A74694  40 82 00 0C */	bne lbl_80A746A0
/* 80A74698  38 60 00 00 */	li r3, 0
/* 80A7469C  48 00 01 88 */	b lbl_80A74824
lbl_80A746A0:
/* 80A746A0  3B 40 00 00 */	li r26, 0
/* 80A746A4  3B 20 00 00 */	li r25, 0
/* 80A746A8  3B 9D 00 F8 */	addi r28, r29, 0xf8
/* 80A746AC  3C 60 80 A8 */	lis r3, l_bmdData@ha
/* 80A746B0  3B 63 B1 7C */	addi r27, r3, l_bmdData@l
lbl_80A746B4:
/* 80A746B4  7C 1C C8 2E */	lwzx r0, r28, r25
/* 80A746B8  54 00 18 38 */	slwi r0, r0, 3
/* 80A746BC  7C 7B 02 14 */	add r3, r27, r0
/* 80A746C0  80 83 00 00 */	lwz r4, 0(r3)
/* 80A746C4  2C 04 00 00 */	cmpwi r4, 0
/* 80A746C8  41 80 00 28 */	blt lbl_80A746F0
/* 80A746CC  80 03 00 04 */	lwz r0, 4(r3)
/* 80A746D0  54 00 10 3A */	slwi r0, r0, 2
/* 80A746D4  3C 60 80 A8 */	lis r3, l_resNameList@ha
/* 80A746D8  38 63 B1 DC */	addi r3, r3, l_resNameList@l
/* 80A746DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A746E0  7F C5 F3 78 */	mr r5, r30
/* 80A746E4  38 C0 00 80 */	li r6, 0x80
/* 80A746E8  4B 5C 7C 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A746EC  48 00 00 08 */	b lbl_80A746F4
lbl_80A746F0:
/* 80A746F0  38 60 00 00 */	li r3, 0
lbl_80A746F4:
/* 80A746F4  28 03 00 00 */	cmplwi r3, 0
/* 80A746F8  41 82 00 20 */	beq lbl_80A74718
/* 80A746FC  3C 80 00 08 */	lis r4, 8
/* 80A74700  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A74704  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A74708  4B 5A 05 4C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A7470C  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A74710  7C 7F 01 2E */	stwx r3, r31, r0
/* 80A74714  48 00 00 10 */	b lbl_80A74724
lbl_80A74718:
/* 80A74718  38 60 00 00 */	li r3, 0
/* 80A7471C  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A74720  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80A74724:
/* 80A74724  3B 5A 00 01 */	addi r26, r26, 1
/* 80A74728  2C 1A 00 02 */	cmpwi r26, 2
/* 80A7472C  3B 39 00 04 */	addi r25, r25, 4
/* 80A74730  41 80 FF 84 */	blt lbl_80A746B4
/* 80A74734  7F E3 FB 78 */	mr r3, r31
/* 80A74738  48 00 0A 05 */	bl chkMoiN__11daNpc_Moi_cFv
/* 80A7473C  2C 03 00 00 */	cmpwi r3, 0
/* 80A74740  41 82 00 98 */	beq lbl_80A747D8
/* 80A74744  3B 40 00 02 */	li r26, 2
/* 80A74748  3B 20 00 08 */	li r25, 8
/* 80A7474C  3B 7D 00 F8 */	addi r27, r29, 0xf8
/* 80A74750  3C 60 80 A8 */	lis r3, l_bmdData@ha
/* 80A74754  3B 83 B1 7C */	addi r28, r3, l_bmdData@l
lbl_80A74758:
/* 80A74758  7C 1B C8 2E */	lwzx r0, r27, r25
/* 80A7475C  54 00 18 38 */	slwi r0, r0, 3
/* 80A74760  7C 7C 02 14 */	add r3, r28, r0
/* 80A74764  80 83 00 00 */	lwz r4, 0(r3)
/* 80A74768  2C 04 00 00 */	cmpwi r4, 0
/* 80A7476C  41 80 00 28 */	blt lbl_80A74794
/* 80A74770  80 03 00 04 */	lwz r0, 4(r3)
/* 80A74774  54 00 10 3A */	slwi r0, r0, 2
/* 80A74778  3C 60 80 A8 */	lis r3, l_resNameList@ha
/* 80A7477C  38 63 B1 DC */	addi r3, r3, l_resNameList@l
/* 80A74780  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A74784  7F C5 F3 78 */	mr r5, r30
/* 80A74788  38 C0 00 80 */	li r6, 0x80
/* 80A7478C  4B 5C 7B 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A74790  48 00 00 08 */	b lbl_80A74798
lbl_80A74794:
/* 80A74794  38 60 00 00 */	li r3, 0
lbl_80A74798:
/* 80A74798  28 03 00 00 */	cmplwi r3, 0
/* 80A7479C  41 82 00 20 */	beq lbl_80A747BC
/* 80A747A0  3C 80 00 08 */	lis r4, 8
/* 80A747A4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A747A8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A747AC  4B 5A 04 A8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A747B0  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A747B4  7C 7F 01 2E */	stwx r3, r31, r0
/* 80A747B8  48 00 00 10 */	b lbl_80A747C8
lbl_80A747BC:
/* 80A747BC  38 60 00 00 */	li r3, 0
/* 80A747C0  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A747C4  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80A747C8:
/* 80A747C8  3B 5A 00 01 */	addi r26, r26, 1
/* 80A747CC  2C 1A 00 06 */	cmpwi r26, 6
/* 80A747D0  3B 39 00 04 */	addi r25, r25, 4
/* 80A747D4  41 80 FF 84 */	blt lbl_80A74758
lbl_80A747D8:
/* 80A747D8  7F E3 FB 78 */	mr r3, r31
/* 80A747DC  38 80 00 01 */	li r4, 1
/* 80A747E0  38 A0 00 00 */	li r5, 0
/* 80A747E4  4B 6D 5B A4 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A747E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A747EC  41 82 00 34 */	beq lbl_80A74820
/* 80A747F0  7F E3 FB 78 */	mr r3, r31
/* 80A747F4  38 80 00 00 */	li r4, 0
/* 80A747F8  C0 3D 00 E8 */	lfs f1, 0xe8(r29)
/* 80A747FC  38 A0 00 00 */	li r5, 0
/* 80A74800  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A74804  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A74808  7D 89 03 A6 */	mtctr r12
/* 80A7480C  4E 80 04 21 */	bctrl 
/* 80A74810  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A74814  41 82 00 0C */	beq lbl_80A74820
/* 80A74818  38 60 00 01 */	li r3, 1
/* 80A7481C  48 00 00 08 */	b lbl_80A74824
lbl_80A74820:
/* 80A74820  38 60 00 00 */	li r3, 0
lbl_80A74824:
/* 80A74824  39 61 00 40 */	addi r11, r1, 0x40
/* 80A74828  4B 8E D9 F0 */	b _restgpr_25
/* 80A7482C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A74830  7C 08 03 A6 */	mtlr r0
/* 80A74834  38 21 00 40 */	addi r1, r1, 0x40
/* 80A74838  4E 80 00 20 */	blr 
