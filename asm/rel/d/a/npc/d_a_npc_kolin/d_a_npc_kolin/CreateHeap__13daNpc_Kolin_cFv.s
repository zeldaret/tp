lbl_80554414:
/* 80554414  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80554418  7C 08 02 A6 */	mflr r0
/* 8055441C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80554420  39 61 00 30 */	addi r11, r1, 0x30
/* 80554424  4B E0 DD B5 */	bl _savegpr_28
/* 80554428  7C 7F 1B 78 */	mr r31, r3
/* 8055442C  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80554430  20 00 00 01 */	subfic r0, r0, 1
/* 80554434  7C 00 00 34 */	cntlzw r0, r0
/* 80554438  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 8055443C  3C 60 80 56 */	lis r3, l_bmdData@ha /* 0x8055A8E8@ha */
/* 80554440  38 83 A8 E8 */	addi r4, r3, l_bmdData@l /* 0x8055A8E8@l */
/* 80554444  7C 64 2A 14 */	add r3, r4, r5
/* 80554448  80 03 00 04 */	lwz r0, 4(r3)
/* 8055444C  54 00 10 3A */	slwi r0, r0, 2
/* 80554450  3C 60 80 56 */	lis r3, l_resNameList@ha /* 0x8055A948@ha */
/* 80554454  38 63 A9 48 */	addi r3, r3, l_resNameList@l /* 0x8055A948@l */
/* 80554458  7C 63 00 2E */	lwzx r3, r3, r0
/* 8055445C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80554460  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80554464  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80554468  3F C5 00 02 */	addis r30, r5, 2
/* 8055446C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80554470  7F C5 F3 78 */	mr r5, r30
/* 80554474  38 C0 00 80 */	li r6, 0x80
/* 80554478  4B AE 7E 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8055447C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80554480  40 82 00 0C */	bne lbl_8055448C
/* 80554484  38 60 00 00 */	li r3, 0
/* 80554488  48 00 02 D4 */	b lbl_8055475C
lbl_8055448C:
/* 8055448C  38 60 00 58 */	li r3, 0x58
/* 80554490  4B D7 A7 BD */	bl __nw__FUl
/* 80554494  7C 60 1B 79 */	or. r0, r3, r3
/* 80554498  41 82 00 4C */	beq lbl_805544E4
/* 8055449C  38 1F 05 80 */	addi r0, r31, 0x580
/* 805544A0  90 01 00 08 */	stw r0, 8(r1)
/* 805544A4  3C 00 00 08 */	lis r0, 8
/* 805544A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805544AC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 805544B0  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 805544B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805544B8  7F 84 E3 78 */	mr r4, r28
/* 805544BC  38 A0 00 00 */	li r5, 0
/* 805544C0  38 C0 00 00 */	li r6, 0
/* 805544C4  38 E0 00 00 */	li r7, 0
/* 805544C8  39 00 FF FF */	li r8, -1
/* 805544CC  3D 20 80 56 */	lis r9, lit_4442@ha /* 0x8055A6B0@ha */
/* 805544D0  C0 29 A6 B0 */	lfs f1, lit_4442@l(r9)  /* 0x8055A6B0@l */
/* 805544D4  39 20 00 00 */	li r9, 0
/* 805544D8  39 40 FF FF */	li r10, -1
/* 805544DC  4B AB C2 F5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805544E0  7C 60 1B 78 */	mr r0, r3
lbl_805544E4:
/* 805544E4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 805544E8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 805544EC  28 03 00 00 */	cmplwi r3, 0
/* 805544F0  41 82 00 10 */	beq lbl_80554500
/* 805544F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 805544F8  28 05 00 00 */	cmplwi r5, 0
/* 805544FC  40 82 00 0C */	bne lbl_80554508
lbl_80554500:
/* 80554500  38 60 00 00 */	li r3, 0
/* 80554504  48 00 02 58 */	b lbl_8055475C
lbl_80554508:
/* 80554508  38 C0 00 00 */	li r6, 0
/* 8055450C  3C 60 80 55 */	lis r3, ctrlJointCallBack__13daNpc_Kolin_cFP8J3DJointi@ha /* 0x80554A38@ha */
/* 80554510  38 83 4A 38 */	addi r4, r3, ctrlJointCallBack__13daNpc_Kolin_cFP8J3DJointi@l /* 0x80554A38@l */
/* 80554514  48 00 00 18 */	b lbl_8055452C
lbl_80554518:
/* 80554518  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8055451C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80554520  7C 63 00 2E */	lwzx r3, r3, r0
/* 80554524  90 83 00 04 */	stw r4, 4(r3)
/* 80554528  38 C6 00 01 */	addi r6, r6, 1
lbl_8055452C:
/* 8055452C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80554530  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80554534  7C 03 00 40 */	cmplw r3, r0
/* 80554538  41 80 FF E0 */	blt lbl_80554518
/* 8055453C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80554540  38 60 01 08 */	li r3, 0x108
/* 80554544  4B D7 A7 09 */	bl __nw__FUl
/* 80554548  7C 7D 1B 79 */	or. r29, r3, r3
/* 8055454C  41 82 00 D0 */	beq lbl_8055461C
/* 80554550  7F BC EB 78 */	mr r28, r29
/* 80554554  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80554558  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 8055455C  90 1D 00 00 */	stw r0, 0(r29)
/* 80554560  38 7D 00 04 */	addi r3, r29, 4
/* 80554564  3C 80 80 55 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80554918@ha */
/* 80554568  38 84 49 18 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80554918@l */
/* 8055456C  3C A0 80 55 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x805548DC@ha */
/* 80554570  38 A5 48 DC */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x805548DC@l */
/* 80554574  38 C0 00 08 */	li r6, 8
/* 80554578  38 E0 00 02 */	li r7, 2
/* 8055457C  4B E0 D7 E5 */	bl __construct_array
/* 80554580  38 7D 00 14 */	addi r3, r29, 0x14
/* 80554584  3C 80 80 55 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x805548C4@ha */
/* 80554588  38 84 48 C4 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x805548C4@l */
/* 8055458C  3C A0 80 55 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80554888@ha */
/* 80554590  38 A5 48 88 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80554888@l */
/* 80554594  38 C0 00 08 */	li r6, 8
/* 80554598  38 E0 00 08 */	li r7, 8
/* 8055459C  4B E0 D7 C5 */	bl __construct_array
/* 805545A0  38 7D 00 54 */	addi r3, r29, 0x54
/* 805545A4  3C 80 80 55 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80554864@ha */
/* 805545A8  38 84 48 64 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80554864@l */
/* 805545AC  3C A0 80 55 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x8055481C@ha */
/* 805545B0  38 A5 48 1C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x8055481C@l */
/* 805545B4  38 C0 00 0C */	li r6, 0xc
/* 805545B8  38 E0 00 08 */	li r7, 8
/* 805545BC  4B E0 D7 A5 */	bl __construct_array
/* 805545C0  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 805545C4  3C 80 80 55 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80554804@ha */
/* 805545C8  38 84 48 04 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80554804@l */
/* 805545CC  3C A0 80 55 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x805547C8@ha */
/* 805545D0  38 A5 47 C8 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x805547C8@l */
/* 805545D4  38 C0 00 08 */	li r6, 8
/* 805545D8  38 E0 00 04 */	li r7, 4
/* 805545DC  4B E0 D7 85 */	bl __construct_array
/* 805545E0  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 805545E4  3C 80 80 55 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x805547B0@ha */
/* 805545E8  38 84 47 B0 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x805547B0@l */
/* 805545EC  3C A0 80 55 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80554774@ha */
/* 805545F0  38 A5 47 74 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80554774@l */
/* 805545F4  38 C0 00 08 */	li r6, 8
/* 805545F8  38 E0 00 04 */	li r7, 4
/* 805545FC  4B E0 D7 65 */	bl __construct_array
/* 80554600  7F A3 EB 78 */	mr r3, r29
/* 80554604  4B DD 7D 1D */	bl initialize__14J3DMaterialAnmFv
/* 80554608  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 8055460C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80554610  90 1C 00 00 */	stw r0, 0(r28)
/* 80554614  7F 83 E3 78 */	mr r3, r28
/* 80554618  4B BF 11 4D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8055461C:
/* 8055461C  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80554620  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80554624  28 00 00 00 */	cmplwi r0, 0
/* 80554628  40 82 00 0C */	bne lbl_80554634
/* 8055462C  38 60 00 00 */	li r3, 0
/* 80554630  48 00 01 2C */	b lbl_8055475C
lbl_80554634:
/* 80554634  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80554638  28 00 00 0A */	cmplwi r0, 0xa
/* 8055463C  40 82 00 70 */	bne lbl_805546AC
/* 80554640  3C 60 80 56 */	lis r3, l_bmdData@ha /* 0x8055A8E8@ha */
/* 80554644  38 63 A8 E8 */	addi r3, r3, l_bmdData@l /* 0x8055A8E8@l */
/* 80554648  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8055464C  2C 04 00 00 */	cmpwi r4, 0
/* 80554650  41 80 00 28 */	blt lbl_80554678
/* 80554654  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80554658  54 00 10 3A */	slwi r0, r0, 2
/* 8055465C  3C 60 80 56 */	lis r3, l_resNameList@ha /* 0x8055A948@ha */
/* 80554660  38 63 A9 48 */	addi r3, r3, l_resNameList@l /* 0x8055A948@l */
/* 80554664  7C 63 00 2E */	lwzx r3, r3, r0
/* 80554668  7F C5 F3 78 */	mr r5, r30
/* 8055466C  38 C0 00 80 */	li r6, 0x80
/* 80554670  4B AE 7C 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80554674  48 00 00 08 */	b lbl_8055467C
lbl_80554678:
/* 80554678  38 60 00 00 */	li r3, 0
lbl_8055467C:
/* 8055467C  28 03 00 00 */	cmplwi r3, 0
/* 80554680  41 82 00 18 */	beq lbl_80554698
/* 80554684  3C 80 00 08 */	lis r4, 8
/* 80554688  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8055468C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80554690  4B AC 05 C5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80554694  90 7F 0E 44 */	stw r3, 0xe44(r31)
lbl_80554698:
/* 80554698  80 1F 0E 44 */	lwz r0, 0xe44(r31)
/* 8055469C  28 00 00 00 */	cmplwi r0, 0
/* 805546A0  40 82 00 0C */	bne lbl_805546AC
/* 805546A4  38 60 00 00 */	li r3, 0
/* 805546A8  48 00 00 B4 */	b lbl_8055475C
lbl_805546AC:
/* 805546AC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 805546B0  28 00 00 00 */	cmplwi r0, 0
/* 805546B4  41 82 00 58 */	beq lbl_8055470C
/* 805546B8  7F E3 FB 78 */	mr r3, r31
/* 805546BC  38 80 00 07 */	li r4, 7
/* 805546C0  38 A0 00 00 */	li r5, 0
/* 805546C4  4B BF 5C C5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 805546C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805546CC  41 82 00 38 */	beq lbl_80554704
/* 805546D0  7F E3 FB 78 */	mr r3, r31
/* 805546D4  38 80 00 11 */	li r4, 0x11
/* 805546D8  3C A0 80 56 */	lis r5, lit_4110@ha /* 0x8055A6A0@ha */
/* 805546DC  C0 25 A6 A0 */	lfs f1, lit_4110@l(r5)  /* 0x8055A6A0@l */
/* 805546E0  38 A0 00 00 */	li r5, 0
/* 805546E4  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 805546E8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 805546EC  7D 89 03 A6 */	mtctr r12
/* 805546F0  4E 80 04 21 */	bctrl 
/* 805546F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805546F8  41 82 00 0C */	beq lbl_80554704
/* 805546FC  38 60 00 01 */	li r3, 1
/* 80554700  48 00 00 5C */	b lbl_8055475C
lbl_80554704:
/* 80554704  38 60 00 00 */	li r3, 0
/* 80554708  48 00 00 54 */	b lbl_8055475C
lbl_8055470C:
/* 8055470C  7F E3 FB 78 */	mr r3, r31
/* 80554710  38 80 00 0A */	li r4, 0xa
/* 80554714  38 A0 00 00 */	li r5, 0
/* 80554718  4B BF 5C 71 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 8055471C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80554720  41 82 00 38 */	beq lbl_80554758
/* 80554724  7F E3 FB 78 */	mr r3, r31
/* 80554728  38 80 00 00 */	li r4, 0
/* 8055472C  3C A0 80 56 */	lis r5, lit_4110@ha /* 0x8055A6A0@ha */
/* 80554730  C0 25 A6 A0 */	lfs f1, lit_4110@l(r5)  /* 0x8055A6A0@l */
/* 80554734  38 A0 00 00 */	li r5, 0
/* 80554738  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 8055473C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80554740  7D 89 03 A6 */	mtctr r12
/* 80554744  4E 80 04 21 */	bctrl 
/* 80554748  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8055474C  41 82 00 0C */	beq lbl_80554758
/* 80554750  38 60 00 01 */	li r3, 1
/* 80554754  48 00 00 08 */	b lbl_8055475C
lbl_80554758:
/* 80554758  38 60 00 00 */	li r3, 0
lbl_8055475C:
/* 8055475C  39 61 00 30 */	addi r11, r1, 0x30
/* 80554760  4B E0 DA C5 */	bl _restgpr_28
/* 80554764  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80554768  7C 08 03 A6 */	mtlr r0
/* 8055476C  38 21 00 30 */	addi r1, r1, 0x30
/* 80554770  4E 80 00 20 */	blr 
