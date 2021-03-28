lbl_8099A530:
/* 8099A530  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8099A534  7C 08 02 A6 */	mflr r0
/* 8099A538  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099A53C  39 61 00 30 */	addi r11, r1, 0x30
/* 8099A540  4B 9C 7C 9C */	b _savegpr_29
/* 8099A544  7C 7F 1B 78 */	mr r31, r3
/* 8099A548  3C 60 80 9A */	lis r3, l_bmdData@ha
/* 8099A54C  38 83 D3 78 */	addi r4, r3, l_bmdData@l
/* 8099A550  80 04 00 04 */	lwz r0, 4(r4)
/* 8099A554  54 00 10 3A */	slwi r0, r0, 2
/* 8099A558  3C 60 80 9A */	lis r3, l_resNameList@ha
/* 8099A55C  38 63 D3 90 */	addi r3, r3, l_resNameList@l
/* 8099A560  7C 63 00 2E */	lwzx r3, r3, r0
/* 8099A564  80 84 00 00 */	lwz r4, 0(r4)
/* 8099A568  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8099A56C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8099A570  3C A5 00 02 */	addis r5, r5, 2
/* 8099A574  38 C0 00 80 */	li r6, 0x80
/* 8099A578  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8099A57C  4B 6A 1D 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099A580  7C 7E 1B 78 */	mr r30, r3
/* 8099A584  38 60 00 58 */	li r3, 0x58
/* 8099A588  4B 93 46 C4 */	b __nw__FUl
/* 8099A58C  7C 60 1B 79 */	or. r0, r3, r3
/* 8099A590  41 82 00 4C */	beq lbl_8099A5DC
/* 8099A594  38 1F 05 80 */	addi r0, r31, 0x580
/* 8099A598  90 01 00 08 */	stw r0, 8(r1)
/* 8099A59C  38 00 00 00 */	li r0, 0
/* 8099A5A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8099A5A4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 8099A5A8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 8099A5AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8099A5B0  7F C4 F3 78 */	mr r4, r30
/* 8099A5B4  38 A0 00 00 */	li r5, 0
/* 8099A5B8  38 C0 00 00 */	li r6, 0
/* 8099A5BC  38 E0 00 00 */	li r7, 0
/* 8099A5C0  39 00 FF FF */	li r8, -1
/* 8099A5C4  3D 20 80 9A */	lis r9, lit_4490@ha
/* 8099A5C8  C0 29 D3 04 */	lfs f1, lit_4490@l(r9)
/* 8099A5CC  39 20 00 00 */	li r9, 0
/* 8099A5D0  39 40 FF FF */	li r10, -1
/* 8099A5D4  4B 67 61 FC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8099A5D8  7C 60 1B 78 */	mr r0, r3
lbl_8099A5DC:
/* 8099A5DC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 8099A5E0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8099A5E4  28 03 00 00 */	cmplwi r3, 0
/* 8099A5E8  41 82 00 1C */	beq lbl_8099A604
/* 8099A5EC  80 03 00 04 */	lwz r0, 4(r3)
/* 8099A5F0  28 00 00 00 */	cmplwi r0, 0
/* 8099A5F4  40 82 00 10 */	bne lbl_8099A604
/* 8099A5F8  4B 67 6D 18 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 8099A5FC  38 00 00 00 */	li r0, 0
/* 8099A600  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_8099A604:
/* 8099A604  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8099A608  28 03 00 00 */	cmplwi r3, 0
/* 8099A60C  40 82 00 0C */	bne lbl_8099A618
/* 8099A610  38 60 00 00 */	li r3, 0
/* 8099A614  48 00 01 84 */	b lbl_8099A798
lbl_8099A618:
/* 8099A618  80 A3 00 04 */	lwz r5, 4(r3)
/* 8099A61C  38 C0 00 00 */	li r6, 0
/* 8099A620  3C 60 80 9A */	lis r3, ctrlJointCallBack__13daNpcClerkT_cFP8J3DJointi@ha
/* 8099A624  38 83 AB 34 */	addi r4, r3, ctrlJointCallBack__13daNpcClerkT_cFP8J3DJointi@l
/* 8099A628  48 00 00 18 */	b lbl_8099A640
lbl_8099A62C:
/* 8099A62C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8099A630  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8099A634  7C 63 00 2E */	lwzx r3, r3, r0
/* 8099A638  90 83 00 04 */	stw r4, 4(r3)
/* 8099A63C  38 C6 00 01 */	addi r6, r6, 1
lbl_8099A640:
/* 8099A640  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8099A644  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 8099A648  7C 03 00 40 */	cmplw r3, r0
/* 8099A64C  41 80 FF E0 */	blt lbl_8099A62C
/* 8099A650  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8099A654  38 60 01 08 */	li r3, 0x108
/* 8099A658  4B 93 45 F4 */	b __nw__FUl
/* 8099A65C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8099A660  41 82 00 D0 */	beq lbl_8099A730
/* 8099A664  7F DD F3 78 */	mr r29, r30
/* 8099A668  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 8099A66C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 8099A670  90 1E 00 00 */	stw r0, 0(r30)
/* 8099A674  38 7E 00 04 */	addi r3, r30, 4
/* 8099A678  3C 80 80 9A */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 8099A67C  38 84 A9 54 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 8099A680  3C A0 80 9A */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 8099A684  38 A5 A9 18 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 8099A688  38 C0 00 08 */	li r6, 8
/* 8099A68C  38 E0 00 02 */	li r7, 2
/* 8099A690  4B 9C 76 D0 */	b __construct_array
/* 8099A694  38 7E 00 14 */	addi r3, r30, 0x14
/* 8099A698  3C 80 80 9A */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 8099A69C  38 84 A9 00 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 8099A6A0  3C A0 80 9A */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 8099A6A4  38 A5 A8 C4 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 8099A6A8  38 C0 00 08 */	li r6, 8
/* 8099A6AC  38 E0 00 08 */	li r7, 8
/* 8099A6B0  4B 9C 76 B0 */	b __construct_array
/* 8099A6B4  38 7E 00 54 */	addi r3, r30, 0x54
/* 8099A6B8  3C 80 80 9A */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 8099A6BC  38 84 A8 A0 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 8099A6C0  3C A0 80 9A */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 8099A6C4  38 A5 A8 58 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 8099A6C8  38 C0 00 0C */	li r6, 0xc
/* 8099A6CC  38 E0 00 08 */	li r7, 8
/* 8099A6D0  4B 9C 76 90 */	b __construct_array
/* 8099A6D4  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8099A6D8  3C 80 80 9A */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 8099A6DC  38 84 A8 40 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 8099A6E0  3C A0 80 9A */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 8099A6E4  38 A5 A8 04 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 8099A6E8  38 C0 00 08 */	li r6, 8
/* 8099A6EC  38 E0 00 04 */	li r7, 4
/* 8099A6F0  4B 9C 76 70 */	b __construct_array
/* 8099A6F4  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8099A6F8  3C 80 80 9A */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 8099A6FC  38 84 A7 EC */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 8099A700  3C A0 80 9A */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 8099A704  38 A5 A7 B0 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 8099A708  38 C0 00 08 */	li r6, 8
/* 8099A70C  38 E0 00 04 */	li r7, 4
/* 8099A710  4B 9C 76 50 */	b __construct_array
/* 8099A714  7F C3 F3 78 */	mr r3, r30
/* 8099A718  4B 99 1C 08 */	b initialize__14J3DMaterialAnmFv
/* 8099A71C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 8099A720  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 8099A724  90 1D 00 00 */	stw r0, 0(r29)
/* 8099A728  7F A3 EB 78 */	mr r3, r29
/* 8099A72C  4B 7A B0 38 */	b initialize__15daNpcT_MatAnm_cFv
lbl_8099A730:
/* 8099A730  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 8099A734  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 8099A738  28 00 00 00 */	cmplwi r0, 0
/* 8099A73C  40 82 00 0C */	bne lbl_8099A748
/* 8099A740  38 60 00 00 */	li r3, 0
/* 8099A744  48 00 00 54 */	b lbl_8099A798
lbl_8099A748:
/* 8099A748  7F E3 FB 78 */	mr r3, r31
/* 8099A74C  38 80 00 01 */	li r4, 1
/* 8099A750  38 A0 00 00 */	li r5, 0
/* 8099A754  4B 7A FC 34 */	b setFaceMotionAnm__8daNpcT_cFib
/* 8099A758  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099A75C  41 82 00 38 */	beq lbl_8099A794
/* 8099A760  7F E3 FB 78 */	mr r3, r31
/* 8099A764  38 80 00 00 */	li r4, 0
/* 8099A768  3C A0 80 9A */	lis r5, lit_4123@ha
/* 8099A76C  C0 25 D2 F0 */	lfs f1, lit_4123@l(r5)
/* 8099A770  38 A0 00 00 */	li r5, 0
/* 8099A774  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 8099A778  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8099A77C  7D 89 03 A6 */	mtctr r12
/* 8099A780  4E 80 04 21 */	bctrl 
/* 8099A784  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099A788  41 82 00 0C */	beq lbl_8099A794
/* 8099A78C  38 60 00 01 */	li r3, 1
/* 8099A790  48 00 00 08 */	b lbl_8099A798
lbl_8099A794:
/* 8099A794  38 60 00 00 */	li r3, 0
lbl_8099A798:
/* 8099A798  39 61 00 30 */	addi r11, r1, 0x30
/* 8099A79C  4B 9C 7A 8C */	b _restgpr_29
/* 8099A7A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099A7A4  7C 08 03 A6 */	mtlr r0
/* 8099A7A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8099A7AC  4E 80 00 20 */	blr 
