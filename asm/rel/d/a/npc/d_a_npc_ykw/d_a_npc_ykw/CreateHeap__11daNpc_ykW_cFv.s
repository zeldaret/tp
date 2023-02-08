lbl_80B5F34C:
/* 80B5F34C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B5F350  7C 08 02 A6 */	mflr r0
/* 80B5F354  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5F358  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5F35C  4B 80 2E 81 */	bl _savegpr_29
/* 80B5F360  7C 7E 1B 78 */	mr r30, r3
/* 80B5F364  3C 60 80 B6 */	lis r3, l_bmdData@ha /* 0x80B67F60@ha */
/* 80B5F368  38 83 7F 60 */	addi r4, r3, l_bmdData@l /* 0x80B67F60@l */
/* 80B5F36C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B5F370  54 00 10 3A */	slwi r0, r0, 2
/* 80B5F374  3C 60 80 B6 */	lis r3, l_resNameList@ha /* 0x80B67FB8@ha */
/* 80B5F378  38 63 7F B8 */	addi r3, r3, l_resNameList@l /* 0x80B67FB8@l */
/* 80B5F37C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B5F380  80 84 00 00 */	lwz r4, 0(r4)
/* 80B5F384  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5F388  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5F38C  3C A5 00 02 */	addis r5, r5, 2
/* 80B5F390  38 C0 00 80 */	li r6, 0x80
/* 80B5F394  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B5F398  4B 4D CF 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B5F39C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B5F3A0  40 82 00 0C */	bne lbl_80B5F3AC
/* 80B5F3A4  38 60 00 00 */	li r3, 0
/* 80B5F3A8  48 00 02 08 */	b lbl_80B5F5B0
lbl_80B5F3AC:
/* 80B5F3AC  38 60 00 58 */	li r3, 0x58
/* 80B5F3B0  4B 76 F8 9D */	bl __nw__FUl
/* 80B5F3B4  7C 60 1B 79 */	or. r0, r3, r3
/* 80B5F3B8  41 82 00 4C */	beq lbl_80B5F404
/* 80B5F3BC  38 1E 05 80 */	addi r0, r30, 0x580
/* 80B5F3C0  90 01 00 08 */	stw r0, 8(r1)
/* 80B5F3C4  3C 00 00 08 */	lis r0, 8
/* 80B5F3C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B5F3CC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B5F3D0  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B5F3D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B5F3D8  7F A4 EB 78 */	mr r4, r29
/* 80B5F3DC  38 A0 00 00 */	li r5, 0
/* 80B5F3E0  38 C0 00 00 */	li r6, 0
/* 80B5F3E4  38 E0 00 00 */	li r7, 0
/* 80B5F3E8  39 00 FF FF */	li r8, -1
/* 80B5F3EC  3D 20 80 B6 */	lis r9, lit_4669@ha /* 0x80B67D28@ha */
/* 80B5F3F0  C0 29 7D 28 */	lfs f1, lit_4669@l(r9)  /* 0x80B67D28@l */
/* 80B5F3F4  39 20 00 00 */	li r9, 0
/* 80B5F3F8  39 40 FF FF */	li r10, -1
/* 80B5F3FC  4B 4B 13 D5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B5F400  7C 60 1B 78 */	mr r0, r3
lbl_80B5F404:
/* 80B5F404  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80B5F408  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B5F40C  28 03 00 00 */	cmplwi r3, 0
/* 80B5F410  41 82 00 10 */	beq lbl_80B5F420
/* 80B5F414  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B5F418  28 05 00 00 */	cmplwi r5, 0
/* 80B5F41C  40 82 00 18 */	bne lbl_80B5F434
lbl_80B5F420:
/* 80B5F420  28 03 00 00 */	cmplwi r3, 0
/* 80B5F424  41 82 00 08 */	beq lbl_80B5F42C
/* 80B5F428  4B 4B 1E E9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B5F42C:
/* 80B5F42C  38 60 00 00 */	li r3, 0
/* 80B5F430  48 00 01 80 */	b lbl_80B5F5B0
lbl_80B5F434:
/* 80B5F434  38 C0 00 00 */	li r6, 0
/* 80B5F438  3C 60 80 B6 */	lis r3, ctrlJointCallBack__11daNpc_ykW_cFP8J3DJointi@ha /* 0x80B5F8CC@ha */
/* 80B5F43C  38 83 F8 CC */	addi r4, r3, ctrlJointCallBack__11daNpc_ykW_cFP8J3DJointi@l /* 0x80B5F8CC@l */
/* 80B5F440  48 00 00 18 */	b lbl_80B5F458
lbl_80B5F444:
/* 80B5F444  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80B5F448  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B5F44C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B5F450  90 83 00 04 */	stw r4, 4(r3)
/* 80B5F454  38 C6 00 01 */	addi r6, r6, 1
lbl_80B5F458:
/* 80B5F458  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B5F45C  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80B5F460  7C 03 00 40 */	cmplw r3, r0
/* 80B5F464  41 80 FF E0 */	blt lbl_80B5F444
/* 80B5F468  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80B5F46C  38 60 01 08 */	li r3, 0x108
/* 80B5F470  4B 76 F7 DD */	bl __nw__FUl
/* 80B5F474  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5F478  41 82 00 D0 */	beq lbl_80B5F548
/* 80B5F47C  7F FD FB 78 */	mr r29, r31
/* 80B5F480  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80B5F484  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80B5F488  90 1F 00 00 */	stw r0, 0(r31)
/* 80B5F48C  38 7F 00 04 */	addi r3, r31, 4
/* 80B5F490  3C 80 80 B6 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80B5F76C@ha */
/* 80B5F494  38 84 F7 6C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80B5F76C@l */
/* 80B5F498  3C A0 80 B6 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80B5F730@ha */
/* 80B5F49C  38 A5 F7 30 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80B5F730@l */
/* 80B5F4A0  38 C0 00 08 */	li r6, 8
/* 80B5F4A4  38 E0 00 02 */	li r7, 2
/* 80B5F4A8  4B 80 28 B9 */	bl __construct_array
/* 80B5F4AC  38 7F 00 14 */	addi r3, r31, 0x14
/* 80B5F4B0  3C 80 80 B6 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80B5F718@ha */
/* 80B5F4B4  38 84 F7 18 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80B5F718@l */
/* 80B5F4B8  3C A0 80 B6 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80B5F6DC@ha */
/* 80B5F4BC  38 A5 F6 DC */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80B5F6DC@l */
/* 80B5F4C0  38 C0 00 08 */	li r6, 8
/* 80B5F4C4  38 E0 00 08 */	li r7, 8
/* 80B5F4C8  4B 80 28 99 */	bl __construct_array
/* 80B5F4CC  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B5F4D0  3C 80 80 B6 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80B5F6B8@ha */
/* 80B5F4D4  38 84 F6 B8 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80B5F6B8@l */
/* 80B5F4D8  3C A0 80 B6 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80B5F670@ha */
/* 80B5F4DC  38 A5 F6 70 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80B5F670@l */
/* 80B5F4E0  38 C0 00 0C */	li r6, 0xc
/* 80B5F4E4  38 E0 00 08 */	li r7, 8
/* 80B5F4E8  4B 80 28 79 */	bl __construct_array
/* 80B5F4EC  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80B5F4F0  3C 80 80 B6 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80B5F658@ha */
/* 80B5F4F4  38 84 F6 58 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80B5F658@l */
/* 80B5F4F8  3C A0 80 B6 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80B5F61C@ha */
/* 80B5F4FC  38 A5 F6 1C */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80B5F61C@l */
/* 80B5F500  38 C0 00 08 */	li r6, 8
/* 80B5F504  38 E0 00 04 */	li r7, 4
/* 80B5F508  4B 80 28 59 */	bl __construct_array
/* 80B5F50C  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80B5F510  3C 80 80 B6 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80B5F604@ha */
/* 80B5F514  38 84 F6 04 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80B5F604@l */
/* 80B5F518  3C A0 80 B6 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80B5F5C8@ha */
/* 80B5F51C  38 A5 F5 C8 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80B5F5C8@l */
/* 80B5F520  38 C0 00 08 */	li r6, 8
/* 80B5F524  38 E0 00 04 */	li r7, 4
/* 80B5F528  4B 80 28 39 */	bl __construct_array
/* 80B5F52C  7F E3 FB 78 */	mr r3, r31
/* 80B5F530  4B 7C CD F1 */	bl initialize__14J3DMaterialAnmFv
/* 80B5F534  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80B5F538  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80B5F53C  90 1D 00 00 */	stw r0, 0(r29)
/* 80B5F540  7F A3 EB 78 */	mr r3, r29
/* 80B5F544  4B 5E 62 21 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B5F548:
/* 80B5F548  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80B5F54C  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80B5F550  28 00 00 00 */	cmplwi r0, 0
/* 80B5F554  40 82 00 0C */	bne lbl_80B5F560
/* 80B5F558  38 60 00 00 */	li r3, 0
/* 80B5F55C  48 00 00 54 */	b lbl_80B5F5B0
lbl_80B5F560:
/* 80B5F560  7F C3 F3 78 */	mr r3, r30
/* 80B5F564  38 80 00 01 */	li r4, 1
/* 80B5F568  38 A0 00 00 */	li r5, 0
/* 80B5F56C  4B 5E AE 1D */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80B5F570  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B5F574  41 82 00 38 */	beq lbl_80B5F5AC
/* 80B5F578  7F C3 F3 78 */	mr r3, r30
/* 80B5F57C  38 80 00 00 */	li r4, 0
/* 80B5F580  3C A0 80 B6 */	lis r5, lit_4358@ha /* 0x80B67D18@ha */
/* 80B5F584  C0 25 7D 18 */	lfs f1, lit_4358@l(r5)  /* 0x80B67D18@l */
/* 80B5F588  38 A0 00 00 */	li r5, 0
/* 80B5F58C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B5F590  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B5F594  7D 89 03 A6 */	mtctr r12
/* 80B5F598  4E 80 04 21 */	bctrl 
/* 80B5F59C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B5F5A0  41 82 00 0C */	beq lbl_80B5F5AC
/* 80B5F5A4  38 60 00 01 */	li r3, 1
/* 80B5F5A8  48 00 00 08 */	b lbl_80B5F5B0
lbl_80B5F5AC:
/* 80B5F5AC  38 60 00 00 */	li r3, 0
lbl_80B5F5B0:
/* 80B5F5B0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5F5B4  4B 80 2C 75 */	bl _restgpr_29
/* 80B5F5B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5F5BC  7C 08 03 A6 */	mtlr r0
/* 80B5F5C0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B5F5C4  4E 80 00 20 */	blr 
