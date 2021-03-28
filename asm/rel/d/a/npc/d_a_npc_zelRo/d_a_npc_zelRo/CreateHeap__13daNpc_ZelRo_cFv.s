lbl_80B72378:
/* 80B72378  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B7237C  7C 08 02 A6 */	mflr r0
/* 80B72380  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B72384  39 61 00 30 */	addi r11, r1, 0x30
/* 80B72388  4B 7E FE 4C */	b _savegpr_27
/* 80B7238C  7C 7F 1B 78 */	mr r31, r3
/* 80B72390  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80B72394  28 00 00 01 */	cmplwi r0, 1
/* 80B72398  38 00 00 00 */	li r0, 0
/* 80B7239C  54 05 18 38 */	slwi r5, r0, 3
/* 80B723A0  3C 60 80 B7 */	lis r3, l_bmdData@ha
/* 80B723A4  38 83 4D 78 */	addi r4, r3, l_bmdData@l
/* 80B723A8  7C 64 2A 14 */	add r3, r4, r5
/* 80B723AC  80 03 00 04 */	lwz r0, 4(r3)
/* 80B723B0  54 00 10 3A */	slwi r0, r0, 2
/* 80B723B4  3C 60 80 B7 */	lis r3, l_resNameList@ha
/* 80B723B8  38 63 4D 90 */	addi r3, r3, l_resNameList@l
/* 80B723BC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B723C0  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B723C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B723C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B723CC  3C A5 00 02 */	addis r5, r5, 2
/* 80B723D0  38 C0 00 80 */	li r6, 0x80
/* 80B723D4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B723D8  4B 4C 9F 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B723DC  7C 7E 1B 78 */	mr r30, r3
/* 80B723E0  38 60 00 58 */	li r3, 0x58
/* 80B723E4  4B 75 C8 68 */	b __nw__FUl
/* 80B723E8  7C 60 1B 79 */	or. r0, r3, r3
/* 80B723EC  41 82 00 4C */	beq lbl_80B72438
/* 80B723F0  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B723F4  90 01 00 08 */	stw r0, 8(r1)
/* 80B723F8  38 00 00 00 */	li r0, 0
/* 80B723FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B72400  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B72404  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B72408  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B7240C  7F C4 F3 78 */	mr r4, r30
/* 80B72410  38 A0 00 00 */	li r5, 0
/* 80B72414  38 C0 00 00 */	li r6, 0
/* 80B72418  38 E0 00 00 */	li r7, 0
/* 80B7241C  39 00 FF FF */	li r8, -1
/* 80B72420  3D 20 80 B7 */	lis r9, lit_4339@ha
/* 80B72424  C0 29 4D 04 */	lfs f1, lit_4339@l(r9)
/* 80B72428  39 20 00 00 */	li r9, 0
/* 80B7242C  39 40 FF FF */	li r10, -1
/* 80B72430  4B 49 E3 A0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B72434  7C 60 1B 78 */	mr r0, r3
lbl_80B72438:
/* 80B72438  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B7243C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B72440  28 03 00 00 */	cmplwi r3, 0
/* 80B72444  41 82 00 1C */	beq lbl_80B72460
/* 80B72448  80 03 00 04 */	lwz r0, 4(r3)
/* 80B7244C  28 00 00 00 */	cmplwi r0, 0
/* 80B72450  40 82 00 10 */	bne lbl_80B72460
/* 80B72454  4B 49 EE BC */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B72458  38 00 00 00 */	li r0, 0
/* 80B7245C  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80B72460:
/* 80B72460  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B72464  28 03 00 00 */	cmplwi r3, 0
/* 80B72468  40 82 00 0C */	bne lbl_80B72474
/* 80B7246C  38 60 00 00 */	li r3, 0
/* 80B72470  48 00 01 A0 */	b lbl_80B72610
lbl_80B72474:
/* 80B72474  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B72478  38 C0 00 00 */	li r6, 0
/* 80B7247C  3C 60 80 B7 */	lis r3, ctrlJointCallBack__13daNpc_ZelRo_cFP8J3DJointi@ha
/* 80B72480  38 83 29 1C */	addi r4, r3, ctrlJointCallBack__13daNpc_ZelRo_cFP8J3DJointi@l
/* 80B72484  48 00 00 18 */	b lbl_80B7249C
lbl_80B72488:
/* 80B72488  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B7248C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B72490  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B72494  90 83 00 04 */	stw r4, 4(r3)
/* 80B72498  38 C6 00 01 */	addi r6, r6, 1
lbl_80B7249C:
/* 80B7249C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B724A0  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B724A4  7C 03 00 40 */	cmplw r3, r0
/* 80B724A8  41 80 FF E0 */	blt lbl_80B72488
/* 80B724AC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B724B0  3B A0 00 00 */	li r29, 0
/* 80B724B4  3B 60 00 00 */	li r27, 0
lbl_80B724B8:
/* 80B724B8  38 60 01 08 */	li r3, 0x108
/* 80B724BC  4B 75 C7 90 */	b __nw__FUl
/* 80B724C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B724C4  41 82 00 D0 */	beq lbl_80B72594
/* 80B724C8  7F DC F3 78 */	mr r28, r30
/* 80B724CC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B724D0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B724D4  90 1E 00 00 */	stw r0, 0(r30)
/* 80B724D8  38 7E 00 04 */	addi r3, r30, 4
/* 80B724DC  3C 80 80 B7 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B724E0  38 84 27 CC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B724E4  3C A0 80 B7 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B724E8  38 A5 27 90 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B724EC  38 C0 00 08 */	li r6, 8
/* 80B724F0  38 E0 00 02 */	li r7, 2
/* 80B724F4  4B 7E F8 6C */	b __construct_array
/* 80B724F8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B724FC  3C 80 80 B7 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B72500  38 84 27 78 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B72504  3C A0 80 B7 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B72508  38 A5 27 3C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B7250C  38 C0 00 08 */	li r6, 8
/* 80B72510  38 E0 00 08 */	li r7, 8
/* 80B72514  4B 7E F8 4C */	b __construct_array
/* 80B72518  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B7251C  3C 80 80 B7 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B72520  38 84 27 18 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B72524  3C A0 80 B7 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B72528  38 A5 26 D0 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B7252C  38 C0 00 0C */	li r6, 0xc
/* 80B72530  38 E0 00 08 */	li r7, 8
/* 80B72534  4B 7E F8 2C */	b __construct_array
/* 80B72538  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B7253C  3C 80 80 B7 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B72540  38 84 26 B8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B72544  3C A0 80 B7 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B72548  38 A5 26 7C */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B7254C  38 C0 00 08 */	li r6, 8
/* 80B72550  38 E0 00 04 */	li r7, 4
/* 80B72554  4B 7E F8 0C */	b __construct_array
/* 80B72558  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B7255C  3C 80 80 B7 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B72560  38 84 26 64 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B72564  3C A0 80 B7 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B72568  38 A5 26 28 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B7256C  38 C0 00 08 */	li r6, 8
/* 80B72570  38 E0 00 04 */	li r7, 4
/* 80B72574  4B 7E F7 EC */	b __construct_array
/* 80B72578  7F C3 F3 78 */	mr r3, r30
/* 80B7257C  4B 7B 9D A4 */	b initialize__14J3DMaterialAnmFv
/* 80B72580  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80B72584  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80B72588  90 1C 00 00 */	stw r0, 0(r28)
/* 80B7258C  7F 83 E3 78 */	mr r3, r28
/* 80B72590  4B 5D 31 D4 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B72594:
/* 80B72594  38 1B 09 6C */	addi r0, r27, 0x96c
/* 80B72598  7F DF 01 2E */	stwx r30, r31, r0
/* 80B7259C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80B725A0  28 00 00 00 */	cmplwi r0, 0
/* 80B725A4  40 82 00 0C */	bne lbl_80B725B0
/* 80B725A8  38 60 00 00 */	li r3, 0
/* 80B725AC  48 00 00 64 */	b lbl_80B72610
lbl_80B725B0:
/* 80B725B0  3B BD 00 01 */	addi r29, r29, 1
/* 80B725B4  2C 1D 00 02 */	cmpwi r29, 2
/* 80B725B8  3B 7B 00 04 */	addi r27, r27, 4
/* 80B725BC  41 80 FE FC */	blt lbl_80B724B8
/* 80B725C0  7F E3 FB 78 */	mr r3, r31
/* 80B725C4  38 80 00 01 */	li r4, 1
/* 80B725C8  38 A0 00 00 */	li r5, 0
/* 80B725CC  4B 5D 7D BC */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B725D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B725D4  41 82 00 38 */	beq lbl_80B7260C
/* 80B725D8  7F E3 FB 78 */	mr r3, r31
/* 80B725DC  38 80 00 00 */	li r4, 0
/* 80B725E0  3C A0 80 B7 */	lis r5, lit_4182@ha
/* 80B725E4  C0 25 4C F8 */	lfs f1, lit_4182@l(r5)
/* 80B725E8  38 A0 00 00 */	li r5, 0
/* 80B725EC  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B725F0  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B725F4  7D 89 03 A6 */	mtctr r12
/* 80B725F8  4E 80 04 21 */	bctrl 
/* 80B725FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B72600  41 82 00 0C */	beq lbl_80B7260C
/* 80B72604  38 60 00 01 */	li r3, 1
/* 80B72608  48 00 00 08 */	b lbl_80B72610
lbl_80B7260C:
/* 80B7260C  38 60 00 00 */	li r3, 0
lbl_80B72610:
/* 80B72610  39 61 00 30 */	addi r11, r1, 0x30
/* 80B72614  4B 7E FC 0C */	b _restgpr_27
/* 80B72618  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7261C  7C 08 03 A6 */	mtlr r0
/* 80B72620  38 21 00 30 */	addi r1, r1, 0x30
/* 80B72624  4E 80 00 20 */	blr 
