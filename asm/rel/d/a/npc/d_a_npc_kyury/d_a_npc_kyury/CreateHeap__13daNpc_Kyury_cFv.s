lbl_80A604E4:
/* 80A604E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A604E8  7C 08 02 A6 */	mflr r0
/* 80A604EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A604F0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A604F4  4B 90 1C D9 */	bl _savegpr_25
/* 80A604F8  7C 7F 1B 78 */	mr r31, r3
/* 80A604FC  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha /* 0x80A638AC@ha */
/* 80A60500  3B A3 38 AC */	addi r29, r3, m__19daNpc_Kyury_Param_c@l /* 0x80A638AC@l */
/* 80A60504  3C 60 80 A6 */	lis r3, l_bmdData@ha /* 0x80A63A34@ha */
/* 80A60508  38 83 3A 34 */	addi r4, r3, l_bmdData@l /* 0x80A63A34@l */
/* 80A6050C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A60510  54 00 10 3A */	slwi r0, r0, 2
/* 80A60514  3C 60 80 A6 */	lis r3, l_resNameList@ha /* 0x80A63A64@ha */
/* 80A60518  38 63 3A 64 */	addi r3, r3, l_resNameList@l /* 0x80A63A64@l */
/* 80A6051C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A60520  80 84 00 00 */	lwz r4, 0(r4)
/* 80A60524  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A60528  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6052C  3F C5 00 02 */	addis r30, r5, 2
/* 80A60530  3B DE C2 F8 */	addi r30, r30, -15624
/* 80A60534  7F C5 F3 78 */	mr r5, r30
/* 80A60538  38 C0 00 80 */	li r6, 0x80
/* 80A6053C  4B 5D BD B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A60540  7C 79 1B 79 */	or. r25, r3, r3
/* 80A60544  40 82 00 0C */	bne lbl_80A60550
/* 80A60548  38 60 00 00 */	li r3, 0
/* 80A6054C  48 00 02 88 */	b lbl_80A607D4
lbl_80A60550:
/* 80A60550  38 60 00 58 */	li r3, 0x58
/* 80A60554  4B 86 E6 F9 */	bl __nw__FUl
/* 80A60558  7C 60 1B 79 */	or. r0, r3, r3
/* 80A6055C  41 82 00 48 */	beq lbl_80A605A4
/* 80A60560  38 1F 05 80 */	addi r0, r31, 0x580
/* 80A60564  90 01 00 08 */	stw r0, 8(r1)
/* 80A60568  3C 00 00 08 */	lis r0, 8
/* 80A6056C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A60570  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A60574  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A60578  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6057C  7F 24 CB 78 */	mr r4, r25
/* 80A60580  38 A0 00 00 */	li r5, 0
/* 80A60584  38 C0 00 00 */	li r6, 0
/* 80A60588  38 E0 00 00 */	li r7, 0
/* 80A6058C  39 00 FF FF */	li r8, -1
/* 80A60590  C0 3D 00 B4 */	lfs f1, 0xb4(r29)
/* 80A60594  39 20 00 00 */	li r9, 0
/* 80A60598  39 40 FF FF */	li r10, -1
/* 80A6059C  4B 5B 02 35 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A605A0  7C 60 1B 78 */	mr r0, r3
lbl_80A605A4:
/* 80A605A4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80A605A8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A605AC  28 03 00 00 */	cmplwi r3, 0
/* 80A605B0  41 82 00 10 */	beq lbl_80A605C0
/* 80A605B4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A605B8  28 05 00 00 */	cmplwi r5, 0
/* 80A605BC  40 82 00 0C */	bne lbl_80A605C8
lbl_80A605C0:
/* 80A605C0  38 60 00 00 */	li r3, 0
/* 80A605C4  48 00 02 10 */	b lbl_80A607D4
lbl_80A605C8:
/* 80A605C8  38 C0 00 00 */	li r6, 0
/* 80A605CC  3C 60 80 A6 */	lis r3, ctrlJointCallBack__13daNpc_Kyury_cFP8J3DJointi@ha /* 0x80A60AB0@ha */
/* 80A605D0  38 83 0A B0 */	addi r4, r3, ctrlJointCallBack__13daNpc_Kyury_cFP8J3DJointi@l /* 0x80A60AB0@l */
/* 80A605D4  48 00 00 18 */	b lbl_80A605EC
lbl_80A605D8:
/* 80A605D8  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80A605DC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A605E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A605E4  90 83 00 04 */	stw r4, 4(r3)
/* 80A605E8  38 C6 00 01 */	addi r6, r6, 1
lbl_80A605EC:
/* 80A605EC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A605F0  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 80A605F4  7C 03 00 40 */	cmplw r3, r0
/* 80A605F8  41 80 FF E0 */	blt lbl_80A605D8
/* 80A605FC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A60600  38 60 01 08 */	li r3, 0x108
/* 80A60604  4B 86 E6 49 */	bl __nw__FUl
/* 80A60608  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A6060C  41 82 00 D0 */	beq lbl_80A606DC
/* 80A60610  7F 7A DB 78 */	mr r26, r27
/* 80A60614  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80A60618  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80A6061C  90 1B 00 00 */	stw r0, 0(r27)
/* 80A60620  38 7A 00 04 */	addi r3, r26, 4
/* 80A60624  3C 80 80 A6 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80A60990@ha */
/* 80A60628  38 84 09 90 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80A60990@l */
/* 80A6062C  3C A0 80 A6 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80A60954@ha */
/* 80A60630  38 A5 09 54 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80A60954@l */
/* 80A60634  38 C0 00 08 */	li r6, 8
/* 80A60638  38 E0 00 02 */	li r7, 2
/* 80A6063C  4B 90 17 25 */	bl __construct_array
/* 80A60640  38 7A 00 14 */	addi r3, r26, 0x14
/* 80A60644  3C 80 80 A6 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80A6093C@ha */
/* 80A60648  38 84 09 3C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80A6093C@l */
/* 80A6064C  3C A0 80 A6 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80A60900@ha */
/* 80A60650  38 A5 09 00 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80A60900@l */
/* 80A60654  38 C0 00 08 */	li r6, 8
/* 80A60658  38 E0 00 08 */	li r7, 8
/* 80A6065C  4B 90 17 05 */	bl __construct_array
/* 80A60660  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A60664  3C 80 80 A6 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80A608DC@ha */
/* 80A60668  38 84 08 DC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80A608DC@l */
/* 80A6066C  3C A0 80 A6 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80A60894@ha */
/* 80A60670  38 A5 08 94 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80A60894@l */
/* 80A60674  38 C0 00 0C */	li r6, 0xc
/* 80A60678  38 E0 00 08 */	li r7, 8
/* 80A6067C  4B 90 16 E5 */	bl __construct_array
/* 80A60680  38 7A 00 B4 */	addi r3, r26, 0xb4
/* 80A60684  3C 80 80 A6 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80A6087C@ha */
/* 80A60688  38 84 08 7C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80A6087C@l */
/* 80A6068C  3C A0 80 A6 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80A60840@ha */
/* 80A60690  38 A5 08 40 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80A60840@l */
/* 80A60694  38 C0 00 08 */	li r6, 8
/* 80A60698  38 E0 00 04 */	li r7, 4
/* 80A6069C  4B 90 16 C5 */	bl __construct_array
/* 80A606A0  38 7A 00 D4 */	addi r3, r26, 0xd4
/* 80A606A4  3C 80 80 A6 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80A60828@ha */
/* 80A606A8  38 84 08 28 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80A60828@l */
/* 80A606AC  3C A0 80 A6 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80A607EC@ha */
/* 80A606B0  38 A5 07 EC */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80A607EC@l */
/* 80A606B4  38 C0 00 08 */	li r6, 8
/* 80A606B8  38 E0 00 04 */	li r7, 4
/* 80A606BC  4B 90 16 A5 */	bl __construct_array
/* 80A606C0  7F 43 D3 78 */	mr r3, r26
/* 80A606C4  4B 8C BC 5D */	bl initialize__14J3DMaterialAnmFv
/* 80A606C8  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80A606CC  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80A606D0  90 1B 00 00 */	stw r0, 0(r27)
/* 80A606D4  7F 63 DB 78 */	mr r3, r27
/* 80A606D8  4B 6E 50 8D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A606DC:
/* 80A606DC  93 7F 09 6C */	stw r27, 0x96c(r31)
/* 80A606E0  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80A606E4  28 00 00 00 */	cmplwi r0, 0
/* 80A606E8  40 82 00 0C */	bne lbl_80A606F4
/* 80A606EC  38 60 00 00 */	li r3, 0
/* 80A606F0  48 00 00 E4 */	b lbl_80A607D4
lbl_80A606F4:
/* 80A606F4  3B 40 00 00 */	li r26, 0
/* 80A606F8  3B 20 00 00 */	li r25, 0
/* 80A606FC  3B 7D 00 AC */	addi r27, r29, 0xac
/* 80A60700  3C 60 80 A6 */	lis r3, l_bmdData@ha /* 0x80A63A34@ha */
/* 80A60704  3B 83 3A 34 */	addi r28, r3, l_bmdData@l /* 0x80A63A34@l */
lbl_80A60708:
/* 80A60708  7C 1B C8 2E */	lwzx r0, r27, r25
/* 80A6070C  54 00 18 38 */	slwi r0, r0, 3
/* 80A60710  7C 7C 02 14 */	add r3, r28, r0
/* 80A60714  80 83 00 00 */	lwz r4, 0(r3)
/* 80A60718  2C 04 00 00 */	cmpwi r4, 0
/* 80A6071C  41 80 00 28 */	blt lbl_80A60744
/* 80A60720  80 03 00 04 */	lwz r0, 4(r3)
/* 80A60724  54 00 10 3A */	slwi r0, r0, 2
/* 80A60728  3C 60 80 A6 */	lis r3, l_resNameList@ha /* 0x80A63A64@ha */
/* 80A6072C  38 63 3A 64 */	addi r3, r3, l_resNameList@l /* 0x80A63A64@l */
/* 80A60730  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A60734  7F C5 F3 78 */	mr r5, r30
/* 80A60738  38 C0 00 80 */	li r6, 0x80
/* 80A6073C  4B 5D BB B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A60740  48 00 00 08 */	b lbl_80A60748
lbl_80A60744:
/* 80A60744  38 60 00 00 */	li r3, 0
lbl_80A60748:
/* 80A60748  28 03 00 00 */	cmplwi r3, 0
/* 80A6074C  41 82 00 20 */	beq lbl_80A6076C
/* 80A60750  3C 80 00 08 */	lis r4, 8
/* 80A60754  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A60758  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A6075C  4B 5B 44 F9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A60760  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A60764  7C 7F 01 2E */	stwx r3, r31, r0
/* 80A60768  48 00 00 10 */	b lbl_80A60778
lbl_80A6076C:
/* 80A6076C  38 60 00 00 */	li r3, 0
/* 80A60770  38 19 0E 44 */	addi r0, r25, 0xe44
/* 80A60774  7C 7F 01 2E */	stwx r3, r31, r0
lbl_80A60778:
/* 80A60778  3B 5A 00 01 */	addi r26, r26, 1
/* 80A6077C  2C 1A 00 02 */	cmpwi r26, 2
/* 80A60780  3B 39 00 04 */	addi r25, r25, 4
/* 80A60784  41 80 FF 84 */	blt lbl_80A60708
/* 80A60788  7F E3 FB 78 */	mr r3, r31
/* 80A6078C  38 80 00 01 */	li r4, 1
/* 80A60790  38 A0 00 00 */	li r5, 0
/* 80A60794  4B 6E 9B F5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80A60798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A6079C  41 82 00 34 */	beq lbl_80A607D0
/* 80A607A0  7F E3 FB 78 */	mr r3, r31
/* 80A607A4  38 80 00 00 */	li r4, 0
/* 80A607A8  C0 3D 00 A0 */	lfs f1, 0xa0(r29)
/* 80A607AC  38 A0 00 00 */	li r5, 0
/* 80A607B0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A607B4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A607B8  7D 89 03 A6 */	mtctr r12
/* 80A607BC  4E 80 04 21 */	bctrl 
/* 80A607C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A607C4  41 82 00 0C */	beq lbl_80A607D0
/* 80A607C8  38 60 00 01 */	li r3, 1
/* 80A607CC  48 00 00 08 */	b lbl_80A607D4
lbl_80A607D0:
/* 80A607D0  38 60 00 00 */	li r3, 0
lbl_80A607D4:
/* 80A607D4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A607D8  4B 90 1A 41 */	bl _restgpr_25
/* 80A607DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A607E0  7C 08 03 A6 */	mtlr r0
/* 80A607E4  38 21 00 40 */	addi r1, r1, 0x40
/* 80A607E8  4E 80 00 20 */	blr 
