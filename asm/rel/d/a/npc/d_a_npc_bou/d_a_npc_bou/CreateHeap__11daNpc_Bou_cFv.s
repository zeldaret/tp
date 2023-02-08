lbl_8096D38C:
/* 8096D38C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096D390  7C 08 02 A6 */	mflr r0
/* 8096D394  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096D398  39 61 00 30 */	addi r11, r1, 0x30
/* 8096D39C  4B 9F 4E 41 */	bl _savegpr_29
/* 8096D3A0  7C 7E 1B 78 */	mr r30, r3
/* 8096D3A4  3C 60 80 97 */	lis r3, l_bmdData@ha /* 0x80972AB0@ha */
/* 8096D3A8  38 83 2A B0 */	addi r4, r3, l_bmdData@l /* 0x80972AB0@l */
/* 8096D3AC  80 04 00 04 */	lwz r0, 4(r4)
/* 8096D3B0  54 00 10 3A */	slwi r0, r0, 2
/* 8096D3B4  3C 60 80 97 */	lis r3, l_resNameList@ha /* 0x80972B10@ha */
/* 8096D3B8  38 63 2B 10 */	addi r3, r3, l_resNameList@l /* 0x80972B10@l */
/* 8096D3BC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8096D3C0  80 84 00 00 */	lwz r4, 0(r4)
/* 8096D3C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096D3C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096D3CC  3C A5 00 02 */	addis r5, r5, 2
/* 8096D3D0  38 C0 00 80 */	li r6, 0x80
/* 8096D3D4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8096D3D8  4B 6C EF 15 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8096D3DC  7C 7D 1B 79 */	or. r29, r3, r3
/* 8096D3E0  40 82 00 0C */	bne lbl_8096D3EC
/* 8096D3E4  38 60 00 00 */	li r3, 0
/* 8096D3E8  48 00 01 FC */	b lbl_8096D5E4
lbl_8096D3EC:
/* 8096D3EC  38 60 00 58 */	li r3, 0x58
/* 8096D3F0  4B 96 18 5D */	bl __nw__FUl
/* 8096D3F4  7C 60 1B 79 */	or. r0, r3, r3
/* 8096D3F8  41 82 00 4C */	beq lbl_8096D444
/* 8096D3FC  38 1E 05 80 */	addi r0, r30, 0x580
/* 8096D400  90 01 00 08 */	stw r0, 8(r1)
/* 8096D404  3C 00 00 08 */	lis r0, 8
/* 8096D408  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096D40C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 8096D410  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 8096D414  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096D418  7F A4 EB 78 */	mr r4, r29
/* 8096D41C  38 A0 00 00 */	li r5, 0
/* 8096D420  38 C0 00 00 */	li r6, 0
/* 8096D424  38 E0 00 00 */	li r7, 0
/* 8096D428  39 00 FF FF */	li r8, -1
/* 8096D42C  3D 20 80 97 */	lis r9, lit_4472@ha /* 0x80972934@ha */
/* 8096D430  C0 29 29 34 */	lfs f1, lit_4472@l(r9)  /* 0x80972934@l */
/* 8096D434  39 20 00 00 */	li r9, 0
/* 8096D438  39 40 FF FF */	li r10, -1
/* 8096D43C  4B 6A 33 95 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8096D440  7C 60 1B 78 */	mr r0, r3
lbl_8096D444:
/* 8096D444  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8096D448  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8096D44C  28 03 00 00 */	cmplwi r3, 0
/* 8096D450  41 82 00 10 */	beq lbl_8096D460
/* 8096D454  80 A3 00 04 */	lwz r5, 4(r3)
/* 8096D458  28 05 00 00 */	cmplwi r5, 0
/* 8096D45C  40 82 00 0C */	bne lbl_8096D468
lbl_8096D460:
/* 8096D460  38 60 00 00 */	li r3, 0
/* 8096D464  48 00 01 80 */	b lbl_8096D5E4
lbl_8096D468:
/* 8096D468  38 C0 00 00 */	li r6, 0
/* 8096D46C  3C 60 80 97 */	lis r3, ctrlJointCallBack__11daNpc_Bou_cFP8J3DJointi@ha /* 0x8096D8C0@ha */
/* 8096D470  38 83 D8 C0 */	addi r4, r3, ctrlJointCallBack__11daNpc_Bou_cFP8J3DJointi@l /* 0x8096D8C0@l */
/* 8096D474  48 00 00 18 */	b lbl_8096D48C
lbl_8096D478:
/* 8096D478  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8096D47C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8096D480  7C 63 00 2E */	lwzx r3, r3, r0
/* 8096D484  90 83 00 04 */	stw r4, 4(r3)
/* 8096D488  38 C6 00 01 */	addi r6, r6, 1
lbl_8096D48C:
/* 8096D48C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8096D490  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 8096D494  7C 03 00 40 */	cmplw r3, r0
/* 8096D498  41 80 FF E0 */	blt lbl_8096D478
/* 8096D49C  93 C5 00 14 */	stw r30, 0x14(r5)
/* 8096D4A0  38 60 01 08 */	li r3, 0x108
/* 8096D4A4  4B 96 17 A9 */	bl __nw__FUl
/* 8096D4A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8096D4AC  41 82 00 D0 */	beq lbl_8096D57C
/* 8096D4B0  7F FD FB 78 */	mr r29, r31
/* 8096D4B4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 8096D4B8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 8096D4BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8096D4C0  38 7F 00 04 */	addi r3, r31, 4
/* 8096D4C4  3C 80 80 97 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x8096D7A0@ha */
/* 8096D4C8  38 84 D7 A0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x8096D7A0@l */
/* 8096D4CC  3C A0 80 97 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x8096D764@ha */
/* 8096D4D0  38 A5 D7 64 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x8096D764@l */
/* 8096D4D4  38 C0 00 08 */	li r6, 8
/* 8096D4D8  38 E0 00 02 */	li r7, 2
/* 8096D4DC  4B 9F 48 85 */	bl __construct_array
/* 8096D4E0  38 7F 00 14 */	addi r3, r31, 0x14
/* 8096D4E4  3C 80 80 97 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x8096D74C@ha */
/* 8096D4E8  38 84 D7 4C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x8096D74C@l */
/* 8096D4EC  3C A0 80 97 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8096D710@ha */
/* 8096D4F0  38 A5 D7 10 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8096D710@l */
/* 8096D4F4  38 C0 00 08 */	li r6, 8
/* 8096D4F8  38 E0 00 08 */	li r7, 8
/* 8096D4FC  4B 9F 48 65 */	bl __construct_array
/* 8096D500  38 7F 00 54 */	addi r3, r31, 0x54
/* 8096D504  3C 80 80 97 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x8096D6EC@ha */
/* 8096D508  38 84 D6 EC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x8096D6EC@l */
/* 8096D50C  3C A0 80 97 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x8096D6A4@ha */
/* 8096D510  38 A5 D6 A4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x8096D6A4@l */
/* 8096D514  38 C0 00 0C */	li r6, 0xc
/* 8096D518  38 E0 00 08 */	li r7, 8
/* 8096D51C  4B 9F 48 45 */	bl __construct_array
/* 8096D520  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 8096D524  3C 80 80 97 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x8096D68C@ha */
/* 8096D528  38 84 D6 8C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x8096D68C@l */
/* 8096D52C  3C A0 80 97 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x8096D650@ha */
/* 8096D530  38 A5 D6 50 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x8096D650@l */
/* 8096D534  38 C0 00 08 */	li r6, 8
/* 8096D538  38 E0 00 04 */	li r7, 4
/* 8096D53C  4B 9F 48 25 */	bl __construct_array
/* 8096D540  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 8096D544  3C 80 80 97 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x8096D638@ha */
/* 8096D548  38 84 D6 38 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x8096D638@l */
/* 8096D54C  3C A0 80 97 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x8096D5FC@ha */
/* 8096D550  38 A5 D5 FC */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x8096D5FC@l */
/* 8096D554  38 C0 00 08 */	li r6, 8
/* 8096D558  38 E0 00 04 */	li r7, 4
/* 8096D55C  4B 9F 48 05 */	bl __construct_array
/* 8096D560  7F E3 FB 78 */	mr r3, r31
/* 8096D564  4B 9B ED BD */	bl initialize__14J3DMaterialAnmFv
/* 8096D568  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 8096D56C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 8096D570  90 1D 00 00 */	stw r0, 0(r29)
/* 8096D574  7F A3 EB 78 */	mr r3, r29
/* 8096D578  4B 7D 81 ED */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8096D57C:
/* 8096D57C  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 8096D580  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 8096D584  28 00 00 00 */	cmplwi r0, 0
/* 8096D588  40 82 00 0C */	bne lbl_8096D594
/* 8096D58C  38 60 00 00 */	li r3, 0
/* 8096D590  48 00 00 54 */	b lbl_8096D5E4
lbl_8096D594:
/* 8096D594  7F C3 F3 78 */	mr r3, r30
/* 8096D598  38 80 00 01 */	li r4, 1
/* 8096D59C  38 A0 00 00 */	li r5, 0
/* 8096D5A0  4B 7D CD E9 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 8096D5A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8096D5A8  41 82 00 38 */	beq lbl_8096D5E0
/* 8096D5AC  7F C3 F3 78 */	mr r3, r30
/* 8096D5B0  38 80 00 00 */	li r4, 0
/* 8096D5B4  3C A0 80 97 */	lis r5, lit_4328@ha /* 0x80972928@ha */
/* 8096D5B8  C0 25 29 28 */	lfs f1, lit_4328@l(r5)  /* 0x80972928@l */
/* 8096D5BC  38 A0 00 00 */	li r5, 0
/* 8096D5C0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8096D5C4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 8096D5C8  7D 89 03 A6 */	mtctr r12
/* 8096D5CC  4E 80 04 21 */	bctrl 
/* 8096D5D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8096D5D4  41 82 00 0C */	beq lbl_8096D5E0
/* 8096D5D8  38 60 00 01 */	li r3, 1
/* 8096D5DC  48 00 00 08 */	b lbl_8096D5E4
lbl_8096D5E0:
/* 8096D5E0  38 60 00 00 */	li r3, 0
lbl_8096D5E4:
/* 8096D5E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8096D5E8  4B 9F 4C 41 */	bl _restgpr_29
/* 8096D5EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096D5F0  7C 08 03 A6 */	mtlr r0
/* 8096D5F4  38 21 00 30 */	addi r1, r1, 0x30
/* 8096D5F8  4E 80 00 20 */	blr 
