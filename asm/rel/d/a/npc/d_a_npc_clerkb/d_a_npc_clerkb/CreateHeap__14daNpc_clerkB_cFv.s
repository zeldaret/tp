lbl_80996338:
/* 80996338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8099633C  7C 08 02 A6 */	mflr r0
/* 80996340  90 01 00 34 */	stw r0, 0x34(r1)
/* 80996344  39 61 00 30 */	addi r11, r1, 0x30
/* 80996348  4B 9C BE 8D */	bl _savegpr_27
/* 8099634C  7C 7F 1B 78 */	mr r31, r3
/* 80996350  3C 60 80 9A */	lis r3, l_bmdData@ha /* 0x80999AD0@ha */
/* 80996354  38 83 9A D0 */	addi r4, r3, l_bmdData@l /* 0x80999AD0@l */
/* 80996358  80 04 00 04 */	lwz r0, 4(r4)
/* 8099635C  54 00 10 3A */	slwi r0, r0, 2
/* 80996360  3C 60 80 9A */	lis r3, l_resNameList@ha /* 0x80999AF0@ha */
/* 80996364  38 63 9A F0 */	addi r3, r3, l_resNameList@l /* 0x80999AF0@l */
/* 80996368  7C 63 00 2E */	lwzx r3, r3, r0
/* 8099636C  80 84 00 00 */	lwz r4, 0(r4)
/* 80996370  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80996374  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80996378  3F C5 00 02 */	addis r30, r5, 2
/* 8099637C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80996380  7F C5 F3 78 */	mr r5, r30
/* 80996384  38 C0 00 80 */	li r6, 0x80
/* 80996388  4B 6A 5F 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8099638C  7C 7D 1B 78 */	mr r29, r3
/* 80996390  38 60 00 58 */	li r3, 0x58
/* 80996394  4B 93 88 B9 */	bl __nw__FUl
/* 80996398  7C 60 1B 79 */	or. r0, r3, r3
/* 8099639C  41 82 00 4C */	beq lbl_809963E8
/* 809963A0  38 1F 05 80 */	addi r0, r31, 0x580
/* 809963A4  90 01 00 08 */	stw r0, 8(r1)
/* 809963A8  38 00 00 00 */	li r0, 0
/* 809963AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 809963B0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020285@ha */
/* 809963B4  38 04 02 85 */	addi r0, r4, 0x0285 /* 0x11020285@l */
/* 809963B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809963BC  7F A4 EB 78 */	mr r4, r29
/* 809963C0  38 A0 00 00 */	li r5, 0
/* 809963C4  38 C0 00 00 */	li r6, 0
/* 809963C8  38 E0 00 00 */	li r7, 0
/* 809963CC  39 00 FF FF */	li r8, -1
/* 809963D0  3D 20 80 9A */	lis r9, lit_4513@ha /* 0x80999A40@ha */
/* 809963D4  C0 29 9A 40 */	lfs f1, lit_4513@l(r9)  /* 0x80999A40@l */
/* 809963D8  39 20 00 00 */	li r9, 0
/* 809963DC  39 40 FF FF */	li r10, -1
/* 809963E0  4B 67 A3 F1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809963E4  7C 60 1B 78 */	mr r0, r3
lbl_809963E8:
/* 809963E8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 809963EC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809963F0  28 03 00 00 */	cmplwi r3, 0
/* 809963F4  41 82 00 1C */	beq lbl_80996410
/* 809963F8  80 03 00 04 */	lwz r0, 4(r3)
/* 809963FC  28 00 00 00 */	cmplwi r0, 0
/* 80996400  40 82 00 10 */	bne lbl_80996410
/* 80996404  4B 67 AF 0D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80996408  38 00 00 00 */	li r0, 0
/* 8099640C  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80996410:
/* 80996410  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80996414  28 03 00 00 */	cmplwi r3, 0
/* 80996418  40 82 00 0C */	bne lbl_80996424
/* 8099641C  38 60 00 00 */	li r3, 0
/* 80996420  48 00 01 D0 */	b lbl_809965F0
lbl_80996424:
/* 80996424  80 A3 00 04 */	lwz r5, 4(r3)
/* 80996428  38 C0 00 00 */	li r6, 0
/* 8099642C  3C 60 80 99 */	lis r3, ctrlJointCallBack__14daNpc_clerkB_cFP8J3DJointi@ha /* 0x80996984@ha */
/* 80996430  38 83 69 84 */	addi r4, r3, ctrlJointCallBack__14daNpc_clerkB_cFP8J3DJointi@l /* 0x80996984@l */
/* 80996434  48 00 00 18 */	b lbl_8099644C
lbl_80996438:
/* 80996438  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8099643C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80996440  7C 63 00 2E */	lwzx r3, r3, r0
/* 80996444  90 83 00 04 */	stw r4, 4(r3)
/* 80996448  38 C6 00 01 */	addi r6, r6, 1
lbl_8099644C:
/* 8099644C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80996450  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80996454  7C 03 00 40 */	cmplw r3, r0
/* 80996458  41 80 FF E0 */	blt lbl_80996438
/* 8099645C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80996460  38 60 01 08 */	li r3, 0x108
/* 80996464  4B 93 87 E9 */	bl __nw__FUl
/* 80996468  7C 7C 1B 79 */	or. r28, r3, r3
/* 8099646C  41 82 00 D0 */	beq lbl_8099653C
/* 80996470  7F 9B E3 78 */	mr r27, r28
/* 80996474  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80996478  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 8099647C  90 1C 00 00 */	stw r0, 0(r28)
/* 80996480  38 7C 00 04 */	addi r3, r28, 4
/* 80996484  3C 80 80 99 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x809967AC@ha */
/* 80996488  38 84 67 AC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x809967AC@l */
/* 8099648C  3C A0 80 99 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80996770@ha */
/* 80996490  38 A5 67 70 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80996770@l */
/* 80996494  38 C0 00 08 */	li r6, 8
/* 80996498  38 E0 00 02 */	li r7, 2
/* 8099649C  4B 9C B8 C5 */	bl __construct_array
/* 809964A0  38 7C 00 14 */	addi r3, r28, 0x14
/* 809964A4  3C 80 80 99 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80996758@ha */
/* 809964A8  38 84 67 58 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80996758@l */
/* 809964AC  3C A0 80 99 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8099671C@ha */
/* 809964B0  38 A5 67 1C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8099671C@l */
/* 809964B4  38 C0 00 08 */	li r6, 8
/* 809964B8  38 E0 00 08 */	li r7, 8
/* 809964BC  4B 9C B8 A5 */	bl __construct_array
/* 809964C0  38 7C 00 54 */	addi r3, r28, 0x54
/* 809964C4  3C 80 80 99 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x809966F8@ha */
/* 809964C8  38 84 66 F8 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x809966F8@l */
/* 809964CC  3C A0 80 99 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x809966B0@ha */
/* 809964D0  38 A5 66 B0 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x809966B0@l */
/* 809964D4  38 C0 00 0C */	li r6, 0xc
/* 809964D8  38 E0 00 08 */	li r7, 8
/* 809964DC  4B 9C B8 85 */	bl __construct_array
/* 809964E0  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 809964E4  3C 80 80 99 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80996698@ha */
/* 809964E8  38 84 66 98 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80996698@l */
/* 809964EC  3C A0 80 99 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x8099665C@ha */
/* 809964F0  38 A5 66 5C */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x8099665C@l */
/* 809964F4  38 C0 00 08 */	li r6, 8
/* 809964F8  38 E0 00 04 */	li r7, 4
/* 809964FC  4B 9C B8 65 */	bl __construct_array
/* 80996500  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80996504  3C 80 80 99 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80996644@ha */
/* 80996508  38 84 66 44 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80996644@l */
/* 8099650C  3C A0 80 99 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80996608@ha */
/* 80996510  38 A5 66 08 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80996608@l */
/* 80996514  38 C0 00 08 */	li r6, 8
/* 80996518  38 E0 00 04 */	li r7, 4
/* 8099651C  4B 9C B8 45 */	bl __construct_array
/* 80996520  7F 83 E3 78 */	mr r3, r28
/* 80996524  4B 99 5D FD */	bl initialize__14J3DMaterialAnmFv
/* 80996528  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 8099652C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80996530  90 1B 00 00 */	stw r0, 0(r27)
/* 80996534  7F 63 DB 78 */	mr r3, r27
/* 80996538  4B 7A F2 2D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8099653C:
/* 8099653C  93 9F 09 6C */	stw r28, 0x96c(r31)
/* 80996540  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80996544  28 00 00 00 */	cmplwi r0, 0
/* 80996548  40 82 00 0C */	bne lbl_80996554
/* 8099654C  38 60 00 00 */	li r3, 0
/* 80996550  48 00 00 A0 */	b lbl_809965F0
lbl_80996554:
/* 80996554  7F E3 FB 78 */	mr r3, r31
/* 80996558  38 80 00 01 */	li r4, 1
/* 8099655C  38 A0 00 00 */	li r5, 0
/* 80996560  4B 7B 3E 29 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80996564  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80996568  41 82 00 84 */	beq lbl_809965EC
/* 8099656C  3C 60 80 9A */	lis r3, l_resNameList@ha /* 0x80999AF0@ha */
/* 80996570  38 63 9A F0 */	addi r3, r3, l_resNameList@l /* 0x80999AF0@l */
/* 80996574  80 63 00 04 */	lwz r3, 4(r3)
/* 80996578  38 80 00 1D */	li r4, 0x1d
/* 8099657C  7F C5 F3 78 */	mr r5, r30
/* 80996580  38 C0 00 80 */	li r6, 0x80
/* 80996584  4B 6A 5D 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80996588  7C 65 1B 78 */	mr r5, r3
/* 8099658C  38 7F 0F 7C */	addi r3, r31, 0xf7c
/* 80996590  38 9D 00 58 */	addi r4, r29, 0x58
/* 80996594  38 C0 00 01 */	li r6, 1
/* 80996598  38 E0 00 02 */	li r7, 2
/* 8099659C  3D 00 80 9A */	lis r8, lit_4513@ha /* 0x80999A40@ha */
/* 809965A0  C0 28 9A 40 */	lfs f1, lit_4513@l(r8)  /* 0x80999A40@l */
/* 809965A4  39 00 00 00 */	li r8, 0
/* 809965A8  39 20 FF FF */	li r9, -1
/* 809965AC  4B 67 6E D1 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 809965B0  2C 03 00 00 */	cmpwi r3, 0
/* 809965B4  41 82 00 38 */	beq lbl_809965EC
/* 809965B8  7F E3 FB 78 */	mr r3, r31
/* 809965BC  38 80 00 00 */	li r4, 0
/* 809965C0  3C A0 80 9A */	lis r5, lit_4152@ha /* 0x80999A2C@ha */
/* 809965C4  C0 25 9A 2C */	lfs f1, lit_4152@l(r5)  /* 0x80999A2C@l */
/* 809965C8  38 A0 00 00 */	li r5, 0
/* 809965CC  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 809965D0  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 809965D4  7D 89 03 A6 */	mtctr r12
/* 809965D8  4E 80 04 21 */	bctrl 
/* 809965DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809965E0  41 82 00 0C */	beq lbl_809965EC
/* 809965E4  38 60 00 01 */	li r3, 1
/* 809965E8  48 00 00 08 */	b lbl_809965F0
lbl_809965EC:
/* 809965EC  38 60 00 00 */	li r3, 0
lbl_809965F0:
/* 809965F0  39 61 00 30 */	addi r11, r1, 0x30
/* 809965F4  4B 9C BC 2D */	bl _restgpr_27
/* 809965F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809965FC  7C 08 03 A6 */	mtlr r0
/* 80996600  38 21 00 30 */	addi r1, r1, 0x30
/* 80996604  4E 80 00 20 */	blr 
