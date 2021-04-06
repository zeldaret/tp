lbl_809D0414:
/* 809D0414  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D0418  7C 08 02 A6 */	mflr r0
/* 809D041C  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D0420  39 61 00 30 */	addi r11, r1, 0x30
/* 809D0424  4B 99 1D B9 */	bl _savegpr_29
/* 809D0428  7C 7F 1B 78 */	mr r31, r3
/* 809D042C  3B C0 00 00 */	li r30, 0
/* 809D0430  3C 60 80 9D */	lis r3, l_bmdGetParamList@ha /* 0x809D3C34@ha */
/* 809D0434  84 83 3C 34 */	lwzu r4, l_bmdGetParamList@l(r3)  /* 0x809D3C34@l */
/* 809D0438  2C 04 00 00 */	cmpwi r4, 0
/* 809D043C  41 80 00 34 */	blt lbl_809D0470
/* 809D0440  80 03 00 04 */	lwz r0, 4(r3)
/* 809D0444  54 00 10 3A */	slwi r0, r0, 2
/* 809D0448  3C 60 80 9D */	lis r3, l_resNames@ha /* 0x809D3CFC@ha */
/* 809D044C  38 63 3C FC */	addi r3, r3, l_resNames@l /* 0x809D3CFC@l */
/* 809D0450  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D0454  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D0458  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D045C  3C A5 00 02 */	addis r5, r5, 2
/* 809D0460  38 C0 00 80 */	li r6, 0x80
/* 809D0464  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809D0468  4B 66 BE 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809D046C  7C 7E 1B 78 */	mr r30, r3
lbl_809D0470:
/* 809D0470  38 60 00 58 */	li r3, 0x58
/* 809D0474  4B 8F E7 D9 */	bl __nw__FUl
/* 809D0478  7C 60 1B 79 */	or. r0, r3, r3
/* 809D047C  41 82 00 4C */	beq lbl_809D04C8
/* 809D0480  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 809D0484  90 01 00 08 */	stw r0, 8(r1)
/* 809D0488  3C 00 00 08 */	lis r0, 8
/* 809D048C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D0490  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 809D0494  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 809D0498  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D049C  7F C4 F3 78 */	mr r4, r30
/* 809D04A0  38 A0 00 00 */	li r5, 0
/* 809D04A4  38 C0 00 00 */	li r6, 0
/* 809D04A8  38 E0 00 00 */	li r7, 0
/* 809D04AC  39 00 FF FF */	li r8, -1
/* 809D04B0  3D 20 80 9D */	lis r9, lit_4450@ha /* 0x809D3A80@ha */
/* 809D04B4  C0 29 3A 80 */	lfs f1, lit_4450@l(r9)  /* 0x809D3A80@l */
/* 809D04B8  39 20 00 00 */	li r9, 0
/* 809D04BC  39 40 FF FF */	li r10, -1
/* 809D04C0  4B 64 03 11 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809D04C4  7C 60 1B 78 */	mr r0, r3
lbl_809D04C8:
/* 809D04C8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 809D04CC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809D04D0  28 03 00 00 */	cmplwi r3, 0
/* 809D04D4  41 82 00 1C */	beq lbl_809D04F0
/* 809D04D8  80 03 00 04 */	lwz r0, 4(r3)
/* 809D04DC  28 00 00 00 */	cmplwi r0, 0
/* 809D04E0  40 82 00 10 */	bne lbl_809D04F0
/* 809D04E4  4B 64 0E 2D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809D04E8  38 00 00 00 */	li r0, 0
/* 809D04EC  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_809D04F0:
/* 809D04F0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809D04F4  28 03 00 00 */	cmplwi r3, 0
/* 809D04F8  40 82 00 0C */	bne lbl_809D0504
/* 809D04FC  38 60 00 00 */	li r3, 0
/* 809D0500  48 00 01 84 */	b lbl_809D0684
lbl_809D0504:
/* 809D0504  80 A3 00 04 */	lwz r5, 4(r3)
/* 809D0508  38 C0 00 00 */	li r6, 0
/* 809D050C  3C 60 80 9D */	lis r3, ctrlJointCallBack__11daNpc_Grd_cFP8J3DJointi@ha /* 0x809D0B90@ha */
/* 809D0510  38 83 0B 90 */	addi r4, r3, ctrlJointCallBack__11daNpc_Grd_cFP8J3DJointi@l /* 0x809D0B90@l */
/* 809D0514  48 00 00 18 */	b lbl_809D052C
lbl_809D0518:
/* 809D0518  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809D051C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 809D0520  7C 63 00 2E */	lwzx r3, r3, r0
/* 809D0524  90 83 00 04 */	stw r4, 4(r3)
/* 809D0528  38 C6 00 01 */	addi r6, r6, 1
lbl_809D052C:
/* 809D052C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 809D0530  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809D0534  7C 03 00 40 */	cmplw r3, r0
/* 809D0538  41 80 FF E0 */	blt lbl_809D0518
/* 809D053C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 809D0540  38 60 01 08 */	li r3, 0x108
/* 809D0544  4B 8F E7 09 */	bl __nw__FUl
/* 809D0548  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D054C  41 82 00 D0 */	beq lbl_809D061C
/* 809D0550  7F DD F3 78 */	mr r29, r30
/* 809D0554  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 809D0558  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 809D055C  90 1E 00 00 */	stw r0, 0(r30)
/* 809D0560  38 7E 00 04 */	addi r3, r30, 4
/* 809D0564  3C 80 80 9D */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x809D0840@ha */
/* 809D0568  38 84 08 40 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x809D0840@l */
/* 809D056C  3C A0 80 9D */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x809D0804@ha */
/* 809D0570  38 A5 08 04 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x809D0804@l */
/* 809D0574  38 C0 00 08 */	li r6, 8
/* 809D0578  38 E0 00 02 */	li r7, 2
/* 809D057C  4B 99 17 E5 */	bl __construct_array
/* 809D0580  38 7E 00 14 */	addi r3, r30, 0x14
/* 809D0584  3C 80 80 9D */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x809D07EC@ha */
/* 809D0588  38 84 07 EC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x809D07EC@l */
/* 809D058C  3C A0 80 9D */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x809D07B0@ha */
/* 809D0590  38 A5 07 B0 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x809D07B0@l */
/* 809D0594  38 C0 00 08 */	li r6, 8
/* 809D0598  38 E0 00 08 */	li r7, 8
/* 809D059C  4B 99 17 C5 */	bl __construct_array
/* 809D05A0  38 7E 00 54 */	addi r3, r30, 0x54
/* 809D05A4  3C 80 80 9D */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x809D078C@ha */
/* 809D05A8  38 84 07 8C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x809D078C@l */
/* 809D05AC  3C A0 80 9D */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x809D0744@ha */
/* 809D05B0  38 A5 07 44 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x809D0744@l */
/* 809D05B4  38 C0 00 0C */	li r6, 0xc
/* 809D05B8  38 E0 00 08 */	li r7, 8
/* 809D05BC  4B 99 17 A5 */	bl __construct_array
/* 809D05C0  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 809D05C4  3C 80 80 9D */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x809D072C@ha */
/* 809D05C8  38 84 07 2C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x809D072C@l */
/* 809D05CC  3C A0 80 9D */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x809D06F0@ha */
/* 809D05D0  38 A5 06 F0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x809D06F0@l */
/* 809D05D4  38 C0 00 08 */	li r6, 8
/* 809D05D8  38 E0 00 04 */	li r7, 4
/* 809D05DC  4B 99 17 85 */	bl __construct_array
/* 809D05E0  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 809D05E4  3C 80 80 9D */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x809D06D8@ha */
/* 809D05E8  38 84 06 D8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x809D06D8@l */
/* 809D05EC  3C A0 80 9D */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x809D069C@ha */
/* 809D05F0  38 A5 06 9C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x809D069C@l */
/* 809D05F4  38 C0 00 08 */	li r6, 8
/* 809D05F8  38 E0 00 04 */	li r7, 4
/* 809D05FC  4B 99 17 65 */	bl __construct_array
/* 809D0600  7F C3 F3 78 */	mr r3, r30
/* 809D0604  4B 95 BD 1D */	bl initialize__14J3DMaterialAnmFv
/* 809D0608  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha /* 0x803B3920@ha */
/* 809D060C  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l /* 0x803B3920@l */
/* 809D0610  90 1D 00 00 */	stw r0, 0(r29)
/* 809D0614  7F A3 EB 78 */	mr r3, r29
/* 809D0618  4B 78 01 21 */	bl initialize__15daNpcF_MatAnm_cFv
lbl_809D061C:
/* 809D061C  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 809D0620  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 809D0624  28 00 00 00 */	cmplwi r0, 0
/* 809D0628  40 82 00 0C */	bne lbl_809D0634
/* 809D062C  38 60 00 00 */	li r3, 0
/* 809D0630  48 00 00 54 */	b lbl_809D0684
lbl_809D0634:
/* 809D0634  7F E3 FB 78 */	mr r3, r31
/* 809D0638  38 80 00 01 */	li r4, 1
/* 809D063C  38 A0 00 00 */	li r5, 0
/* 809D0640  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809D0644  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809D0648  7D 89 03 A6 */	mtctr r12
/* 809D064C  4E 80 04 21 */	bctrl 
/* 809D0650  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D0654  40 82 00 0C */	bne lbl_809D0660
/* 809D0658  38 60 00 00 */	li r3, 0
/* 809D065C  48 00 00 28 */	b lbl_809D0684
lbl_809D0660:
/* 809D0660  7F E3 FB 78 */	mr r3, r31
/* 809D0664  38 80 00 05 */	li r4, 5
/* 809D0668  3C A0 80 9D */	lis r5, lit_4451@ha /* 0x809D3A84@ha */
/* 809D066C  C0 25 3A 84 */	lfs f1, lit_4451@l(r5)  /* 0x809D3A84@l */
/* 809D0670  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809D0674  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 809D0678  7D 89 03 A6 */	mtctr r12
/* 809D067C  4E 80 04 21 */	bctrl 
/* 809D0680  38 60 00 01 */	li r3, 1
lbl_809D0684:
/* 809D0684  39 61 00 30 */	addi r11, r1, 0x30
/* 809D0688  4B 99 1B A1 */	bl _restgpr_29
/* 809D068C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D0690  7C 08 03 A6 */	mtlr r0
/* 809D0694  38 21 00 30 */	addi r1, r1, 0x30
/* 809D0698  4E 80 00 20 */	blr 
