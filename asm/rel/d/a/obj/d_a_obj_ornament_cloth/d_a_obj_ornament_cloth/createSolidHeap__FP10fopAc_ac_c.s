lbl_80595850:
/* 80595850  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80595854  7C 08 02 A6 */	mflr r0
/* 80595858  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059585C  39 61 00 20 */	addi r11, r1, 0x20
/* 80595860  4B DC C9 79 */	bl _savegpr_28
/* 80595864  7C 7F 1B 78 */	mr r31, r3
/* 80595868  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x80595D60@ha */
/* 8059586C  38 63 5D 60 */	addi r3, r3, l_arcName@l /* 0x80595D60@l */
/* 80595870  80 63 00 00 */	lwz r3, 0(r3)
/* 80595874  3C 80 80 59 */	lis r4, d_a_obj_ornament_cloth__stringBase0@ha /* 0x80595D38@ha */
/* 80595878  38 84 5D 38 */	addi r4, r4, d_a_obj_ornament_cloth__stringBase0@l /* 0x80595D38@l */
/* 8059587C  38 84 00 0A */	addi r4, r4, 0xa
/* 80595880  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80595884  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80595888  3F 85 00 02 */	addis r28, r5, 2
/* 8059588C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80595890  7F 85 E3 78 */	mr r5, r28
/* 80595894  38 C0 00 80 */	li r6, 0x80
/* 80595898  4B AA 6A E5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8059589C  7C 7D 1B 78 */	mr r29, r3
/* 805958A0  3C 80 00 08 */	lis r4, 8
/* 805958A4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 805958A8  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 805958AC  4B A7 F3 A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805958B0  90 7F 05 68 */	stw r3, 0x568(r31)
/* 805958B4  3C 60 80 59 */	lis r3, l_arcName@ha /* 0x80595D60@ha */
/* 805958B8  38 63 5D 60 */	addi r3, r3, l_arcName@l /* 0x80595D60@l */
/* 805958BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805958C0  3C 80 80 59 */	lis r4, d_a_obj_ornament_cloth__stringBase0@ha /* 0x80595D38@ha */
/* 805958C4  38 84 5D 38 */	addi r4, r4, d_a_obj_ornament_cloth__stringBase0@l /* 0x80595D38@l */
/* 805958C8  38 84 00 18 */	addi r4, r4, 0x18
/* 805958CC  7F 85 E3 78 */	mr r5, r28
/* 805958D0  38 C0 00 80 */	li r6, 0x80
/* 805958D4  4B AA 6A A9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 805958D8  7C 7C 1B 78 */	mr r28, r3
/* 805958DC  38 60 00 18 */	li r3, 0x18
/* 805958E0  4B D3 93 6D */	bl __nw__FUl
/* 805958E4  7C 7E 1B 79 */	or. r30, r3, r3
/* 805958E8  41 82 00 20 */	beq lbl_80595908
/* 805958EC  3C 80 80 59 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80595DB4@ha */
/* 805958F0  38 04 5D B4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80595DB4@l */
/* 805958F4  90 1E 00 00 */	stw r0, 0(r30)
/* 805958F8  38 80 00 00 */	li r4, 0
/* 805958FC  4B D9 2B 01 */	bl init__12J3DFrameCtrlFs
/* 80595900  38 00 00 00 */	li r0, 0
/* 80595904  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80595908:
/* 80595908  93 DF 05 6C */	stw r30, 0x56c(r31)
/* 8059590C  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80595910  38 9D 00 58 */	addi r4, r29, 0x58
/* 80595914  7F 85 E3 78 */	mr r5, r28
/* 80595918  38 C0 00 01 */	li r6, 1
/* 8059591C  38 E0 00 02 */	li r7, 2
/* 80595920  3D 00 80 59 */	lis r8, lit_3973@ha /* 0x80595D34@ha */
/* 80595924  C0 28 5D 34 */	lfs f1, lit_3973@l(r8)  /* 0x80595D34@l */
/* 80595928  39 00 00 00 */	li r8, 0
/* 8059592C  39 20 FF FF */	li r9, -1
/* 80595930  4B A7 7D 0D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80595934  2C 03 00 00 */	cmpwi r3, 0
/* 80595938  40 82 00 0C */	bne lbl_80595944
/* 8059593C  38 60 00 00 */	li r3, 0
/* 80595940  48 00 00 90 */	b lbl_805959D0
lbl_80595944:
/* 80595944  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80595948  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8059594C  3C 60 80 59 */	lis r3, lit_3834@ha /* 0x80595D2C@ha */
/* 80595950  C8 23 5D 2C */	lfd f1, lit_3834@l(r3)  /* 0x80595D2C@l */
/* 80595954  90 01 00 0C */	stw r0, 0xc(r1)
/* 80595958  3C 00 43 30 */	lis r0, 0x4330
/* 8059595C  90 01 00 08 */	stw r0, 8(r1)
/* 80595960  C8 01 00 08 */	lfd f0, 8(r1)
/* 80595964  EC 00 08 28 */	fsubs f0, f0, f1
/* 80595968  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8059596C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80595970  38 A0 00 00 */	li r5, 0
/* 80595974  3C 60 80 59 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80595784@ha */
/* 80595978  38 83 57 84 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80595784@l */
/* 8059597C  48 00 00 30 */	b lbl_805959AC
lbl_80595980:
/* 80595980  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80595984  80 63 00 04 */	lwz r3, 4(r3)
/* 80595988  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8059598C  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80595990  7C 63 00 2E */	lwzx r3, r3, r0
/* 80595994  28 03 00 00 */	cmplwi r3, 0
/* 80595998  41 82 00 10 */	beq lbl_805959A8
/* 8059599C  90 83 00 04 */	stw r4, 4(r3)
/* 805959A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 805959A4  93 E3 00 14 */	stw r31, 0x14(r3)
lbl_805959A8:
/* 805959A8  38 A5 00 01 */	addi r5, r5, 1
lbl_805959AC:
/* 805959AC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 805959B0  28 00 00 03 */	cmplwi r0, 3
/* 805959B4  41 80 FF CC */	blt lbl_80595980
/* 805959B8  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 805959BC  28 00 00 00 */	cmplwi r0, 0
/* 805959C0  40 82 00 0C */	bne lbl_805959CC
/* 805959C4  38 60 00 00 */	li r3, 0
/* 805959C8  48 00 00 08 */	b lbl_805959D0
lbl_805959CC:
/* 805959CC  38 60 00 01 */	li r3, 1
lbl_805959D0:
/* 805959D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805959D4  4B DC C8 51 */	bl _restgpr_28
/* 805959D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805959DC  7C 08 03 A6 */	mtlr r0
/* 805959E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805959E4  4E 80 00 20 */	blr 
