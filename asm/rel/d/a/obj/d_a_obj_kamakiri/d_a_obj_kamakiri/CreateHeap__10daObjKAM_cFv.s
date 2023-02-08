lbl_80C352A0:
/* 80C352A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C352A4  7C 08 02 A6 */	mflr r0
/* 80C352A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C352AC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C352B0  4B 72 CF 2D */	bl _savegpr_29
/* 80C352B4  7C 7F 1B 78 */	mr r31, r3
/* 80C352B8  88 03 05 81 */	lbz r0, 0x581(r3)
/* 80C352BC  28 00 00 01 */	cmplwi r0, 1
/* 80C352C0  40 82 00 30 */	bne lbl_80C352F0
/* 80C352C4  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C352C8  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C352CC  38 80 00 0A */	li r4, 0xa
/* 80C352D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C352D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C352D8  3C A5 00 02 */	addis r5, r5, 2
/* 80C352DC  38 C0 00 80 */	li r6, 0x80
/* 80C352E0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C352E4  4B 40 70 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C352E8  7C 7E 1B 78 */	mr r30, r3
/* 80C352EC  48 00 00 2C */	b lbl_80C35318
lbl_80C352F0:
/* 80C352F0  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C352F4  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C352F8  38 80 00 0A */	li r4, 0xa
/* 80C352FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C35300  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C35304  3C A5 00 02 */	addis r5, r5, 2
/* 80C35308  38 C0 00 80 */	li r6, 0x80
/* 80C3530C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C35310  4B 40 6F DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C35314  7C 7E 1B 78 */	mr r30, r3
lbl_80C35318:
/* 80C35318  38 60 00 58 */	li r3, 0x58
/* 80C3531C  4B 69 99 31 */	bl __nw__FUl
/* 80C35320  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C35324  41 82 00 74 */	beq lbl_80C35398
/* 80C35328  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C3532C  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C35330  38 80 00 07 */	li r4, 7
/* 80C35334  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C35338  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3533C  3C A5 00 02 */	addis r5, r5, 2
/* 80C35340  38 C0 00 80 */	li r6, 0x80
/* 80C35344  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C35348  4B 40 6F A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C3534C  7C 67 1B 78 */	mr r7, r3
/* 80C35350  38 1F 09 C4 */	addi r0, r31, 0x9c4
/* 80C35354  90 01 00 08 */	stw r0, 8(r1)
/* 80C35358  38 00 00 00 */	li r0, 0
/* 80C3535C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C35360  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80C35364  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80C35368  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3536C  7F A3 EB 78 */	mr r3, r29
/* 80C35370  7F C4 F3 78 */	mr r4, r30
/* 80C35374  38 A0 00 00 */	li r5, 0
/* 80C35378  38 C0 00 00 */	li r6, 0
/* 80C3537C  39 00 00 02 */	li r8, 2
/* 80C35380  3D 20 80 C4 */	lis r9, lit_3895@ha /* 0x80C38454@ha */
/* 80C35384  C0 29 84 54 */	lfs f1, lit_3895@l(r9)  /* 0x80C38454@l */
/* 80C35388  39 20 00 00 */	li r9, 0
/* 80C3538C  39 40 FF FF */	li r10, -1
/* 80C35390  4B 3D B4 41 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80C35394  7C 7D 1B 78 */	mr r29, r3
lbl_80C35398:
/* 80C35398  93 BF 0A 58 */	stw r29, 0xa58(r31)
/* 80C3539C  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C353A0  28 03 00 00 */	cmplwi r3, 0
/* 80C353A4  41 82 00 10 */	beq lbl_80C353B4
/* 80C353A8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80C353AC  28 1E 00 00 */	cmplwi r30, 0
/* 80C353B0  40 82 00 0C */	bne lbl_80C353BC
lbl_80C353B4:
/* 80C353B4  38 60 00 00 */	li r3, 0
/* 80C353B8  48 00 02 28 */	b lbl_80C355E0
lbl_80C353BC:
/* 80C353BC  38 60 00 18 */	li r3, 0x18
/* 80C353C0  4B 69 98 8D */	bl __nw__FUl
/* 80C353C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C353C8  41 82 00 20 */	beq lbl_80C353E8
/* 80C353CC  3C 80 80 C4 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C385B0@ha */
/* 80C353D0  38 04 85 B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C385B0@l */
/* 80C353D4  90 1D 00 00 */	stw r0, 0(r29)
/* 80C353D8  38 80 00 00 */	li r4, 0
/* 80C353DC  4B 6F 30 21 */	bl init__12J3DFrameCtrlFs
/* 80C353E0  38 00 00 00 */	li r0, 0
/* 80C353E4  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C353E8:
/* 80C353E8  93 BF 09 B0 */	stw r29, 0x9b0(r31)
/* 80C353EC  80 1F 09 B0 */	lwz r0, 0x9b0(r31)
/* 80C353F0  28 00 00 00 */	cmplwi r0, 0
/* 80C353F4  40 82 00 0C */	bne lbl_80C35400
/* 80C353F8  38 60 00 00 */	li r3, 0
/* 80C353FC  48 00 01 E4 */	b lbl_80C355E0
lbl_80C35400:
/* 80C35400  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C35404  28 00 00 01 */	cmplwi r0, 1
/* 80C35408  40 82 00 64 */	bne lbl_80C3546C
/* 80C3540C  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C35410  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C35414  38 80 00 0D */	li r4, 0xd
/* 80C35418  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3541C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C35420  3C A5 00 02 */	addis r5, r5, 2
/* 80C35424  38 C0 00 80 */	li r6, 0x80
/* 80C35428  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C3542C  4B 40 6E C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C35430  7C 65 1B 78 */	mr r5, r3
/* 80C35434  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C35438  80 7F 09 B0 */	lwz r3, 0x9b0(r31)
/* 80C3543C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C35440  38 C0 00 01 */	li r6, 1
/* 80C35444  38 E0 00 02 */	li r7, 2
/* 80C35448  3D 00 80 C4 */	lis r8, lit_3895@ha /* 0x80C38454@ha */
/* 80C3544C  C0 28 84 54 */	lfs f1, lit_3895@l(r8)  /* 0x80C38454@l */
/* 80C35450  39 00 00 00 */	li r8, 0
/* 80C35454  39 20 FF FF */	li r9, -1
/* 80C35458  4B 3D 82 B5 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C3545C  2C 03 00 00 */	cmpwi r3, 0
/* 80C35460  40 82 00 6C */	bne lbl_80C354CC
/* 80C35464  38 60 00 00 */	li r3, 0
/* 80C35468  48 00 01 78 */	b lbl_80C355E0
lbl_80C3546C:
/* 80C3546C  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C35470  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C35474  38 80 00 0E */	li r4, 0xe
/* 80C35478  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3547C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C35480  3C A5 00 02 */	addis r5, r5, 2
/* 80C35484  38 C0 00 80 */	li r6, 0x80
/* 80C35488  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C3548C  4B 40 6E 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C35490  7C 65 1B 78 */	mr r5, r3
/* 80C35494  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C35498  80 7F 09 B0 */	lwz r3, 0x9b0(r31)
/* 80C3549C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C354A0  38 C0 00 01 */	li r6, 1
/* 80C354A4  38 E0 00 02 */	li r7, 2
/* 80C354A8  3D 00 80 C4 */	lis r8, lit_3895@ha /* 0x80C38454@ha */
/* 80C354AC  C0 28 84 54 */	lfs f1, lit_3895@l(r8)  /* 0x80C38454@l */
/* 80C354B0  39 00 00 00 */	li r8, 0
/* 80C354B4  39 20 FF FF */	li r9, -1
/* 80C354B8  4B 3D 82 55 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C354BC  2C 03 00 00 */	cmpwi r3, 0
/* 80C354C0  40 82 00 0C */	bne lbl_80C354CC
/* 80C354C4  38 60 00 00 */	li r3, 0
/* 80C354C8  48 00 01 18 */	b lbl_80C355E0
lbl_80C354CC:
/* 80C354CC  38 60 00 18 */	li r3, 0x18
/* 80C354D0  4B 69 97 7D */	bl __nw__FUl
/* 80C354D4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C354D8  41 82 00 20 */	beq lbl_80C354F8
/* 80C354DC  3C 80 80 C4 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C385B0@ha */
/* 80C354E0  38 04 85 B0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C385B0@l */
/* 80C354E4  90 1D 00 00 */	stw r0, 0(r29)
/* 80C354E8  38 80 00 00 */	li r4, 0
/* 80C354EC  4B 6F 2F 11 */	bl init__12J3DFrameCtrlFs
/* 80C354F0  38 00 00 00 */	li r0, 0
/* 80C354F4  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C354F8:
/* 80C354F8  93 BF 09 B4 */	stw r29, 0x9b4(r31)
/* 80C354FC  80 1F 09 B4 */	lwz r0, 0x9b4(r31)
/* 80C35500  28 00 00 00 */	cmplwi r0, 0
/* 80C35504  40 82 00 0C */	bne lbl_80C35510
/* 80C35508  38 60 00 00 */	li r3, 0
/* 80C3550C  48 00 00 D4 */	b lbl_80C355E0
lbl_80C35510:
/* 80C35510  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C35514  28 00 00 01 */	cmplwi r0, 1
/* 80C35518  40 82 00 64 */	bne lbl_80C3557C
/* 80C3551C  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C35520  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C35524  38 80 00 11 */	li r4, 0x11
/* 80C35528  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3552C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C35530  3C A5 00 02 */	addis r5, r5, 2
/* 80C35534  38 C0 00 80 */	li r6, 0x80
/* 80C35538  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C3553C  4B 40 6D B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C35540  7C 65 1B 78 */	mr r5, r3
/* 80C35544  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C35548  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 80C3554C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C35550  38 C0 00 01 */	li r6, 1
/* 80C35554  38 E0 00 02 */	li r7, 2
/* 80C35558  3D 00 80 C4 */	lis r8, lit_3895@ha /* 0x80C38454@ha */
/* 80C3555C  C0 28 84 54 */	lfs f1, lit_3895@l(r8)  /* 0x80C38454@l */
/* 80C35560  39 00 00 00 */	li r8, 0
/* 80C35564  39 20 FF FF */	li r9, -1
/* 80C35568  4B 3D 80 D5 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C3556C  2C 03 00 00 */	cmpwi r3, 0
/* 80C35570  40 82 00 6C */	bne lbl_80C355DC
/* 80C35574  38 60 00 00 */	li r3, 0
/* 80C35578  48 00 00 68 */	b lbl_80C355E0
lbl_80C3557C:
/* 80C3557C  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C35580  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C35584  38 80 00 12 */	li r4, 0x12
/* 80C35588  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3558C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C35590  3C A5 00 02 */	addis r5, r5, 2
/* 80C35594  38 C0 00 80 */	li r6, 0x80
/* 80C35598  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C3559C  4B 40 6D 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C355A0  7C 65 1B 78 */	mr r5, r3
/* 80C355A4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C355A8  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 80C355AC  38 84 00 58 */	addi r4, r4, 0x58
/* 80C355B0  38 C0 00 01 */	li r6, 1
/* 80C355B4  38 E0 00 02 */	li r7, 2
/* 80C355B8  3D 00 80 C4 */	lis r8, lit_3895@ha /* 0x80C38454@ha */
/* 80C355BC  C0 28 84 54 */	lfs f1, lit_3895@l(r8)  /* 0x80C38454@l */
/* 80C355C0  39 00 00 00 */	li r8, 0
/* 80C355C4  39 20 FF FF */	li r9, -1
/* 80C355C8  4B 3D 80 75 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C355CC  2C 03 00 00 */	cmpwi r3, 0
/* 80C355D0  40 82 00 0C */	bne lbl_80C355DC
/* 80C355D4  38 60 00 00 */	li r3, 0
/* 80C355D8  48 00 00 08 */	b lbl_80C355E0
lbl_80C355DC:
/* 80C355DC  38 60 00 01 */	li r3, 1
lbl_80C355E0:
/* 80C355E0  39 61 00 30 */	addi r11, r1, 0x30
/* 80C355E4  4B 72 CC 45 */	bl _restgpr_29
/* 80C355E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C355EC  7C 08 03 A6 */	mtlr r0
/* 80C355F0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C355F4  4E 80 00 20 */	blr 
