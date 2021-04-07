lbl_805372FC:
/* 805372FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80537300  7C 08 02 A6 */	mflr r0
/* 80537304  90 01 00 34 */	stw r0, 0x34(r1)
/* 80537308  39 61 00 30 */	addi r11, r1, 0x30
/* 8053730C  4B E2 AE CD */	bl _savegpr_28
/* 80537310  7C 7F 1B 78 */	mr r31, r3
/* 80537314  3B 80 00 00 */	li r28, 0
/* 80537318  48 00 0C E5 */	bl chkBesu3__12daNpc_Besu_cFv
/* 8053731C  2C 03 00 00 */	cmpwi r3, 0
/* 80537320  41 82 00 0C */	beq lbl_8053732C
/* 80537324  3B 80 00 04 */	li r28, 4
/* 80537328  48 00 00 18 */	b lbl_80537340
lbl_8053732C:
/* 8053732C  7F E3 FB 78 */	mr r3, r31
/* 80537330  48 00 0C A1 */	bl chkNurse__12daNpc_Besu_cFv
/* 80537334  2C 03 00 00 */	cmpwi r3, 0
/* 80537338  41 82 00 08 */	beq lbl_80537340
/* 8053733C  3B 80 00 03 */	li r28, 3
lbl_80537340:
/* 80537340  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80537344  28 00 00 00 */	cmplwi r0, 0
/* 80537348  41 82 00 08 */	beq lbl_80537350
/* 8053734C  3B 80 00 01 */	li r28, 1
lbl_80537350:
/* 80537350  3C 60 80 54 */	lis r3, l_bmdData@ha /* 0x8053EB7C@ha */
/* 80537354  38 83 EB 7C */	addi r4, r3, l_bmdData@l /* 0x8053EB7C@l */
/* 80537358  57 80 18 38 */	slwi r0, r28, 3
/* 8053735C  7C 64 02 14 */	add r3, r4, r0
/* 80537360  80 63 00 04 */	lwz r3, 4(r3)
/* 80537364  7C 84 00 2E */	lwzx r4, r4, r0
/* 80537368  54 60 10 3A */	slwi r0, r3, 2
/* 8053736C  3C 60 80 54 */	lis r3, l_resNameList@ha /* 0x8053EC14@ha */
/* 80537370  38 63 EC 14 */	addi r3, r3, l_resNameList@l /* 0x8053EC14@l */
/* 80537374  7C 63 00 2E */	lwzx r3, r3, r0
/* 80537378  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053737C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80537380  3F C5 00 02 */	addis r30, r5, 2
/* 80537384  3B DE C2 F8 */	addi r30, r30, -15624
/* 80537388  7F C5 F3 78 */	mr r5, r30
/* 8053738C  38 C0 00 80 */	li r6, 0x80
/* 80537390  4B B0 4F 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80537394  7C 7C 1B 79 */	or. r28, r3, r3
/* 80537398  40 82 00 0C */	bne lbl_805373A4
/* 8053739C  38 60 00 00 */	li r3, 0
/* 805373A0  48 00 03 A0 */	b lbl_80537740
lbl_805373A4:
/* 805373A4  38 60 00 58 */	li r3, 0x58
/* 805373A8  4B D9 78 A5 */	bl __nw__FUl
/* 805373AC  7C 60 1B 79 */	or. r0, r3, r3
/* 805373B0  41 82 00 4C */	beq lbl_805373FC
/* 805373B4  38 1F 05 80 */	addi r0, r31, 0x580
/* 805373B8  90 01 00 08 */	stw r0, 8(r1)
/* 805373BC  3C 00 00 08 */	lis r0, 8
/* 805373C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805373C4  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 805373C8  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 805373CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805373D0  7F 84 E3 78 */	mr r4, r28
/* 805373D4  38 A0 00 00 */	li r5, 0
/* 805373D8  38 C0 00 00 */	li r6, 0
/* 805373DC  38 E0 00 00 */	li r7, 0
/* 805373E0  39 00 FF FF */	li r8, -1
/* 805373E4  3D 20 80 54 */	lis r9, lit_4531@ha /* 0x8053E850@ha */
/* 805373E8  C0 29 E8 50 */	lfs f1, lit_4531@l(r9)  /* 0x8053E850@l */
/* 805373EC  39 20 00 00 */	li r9, 0
/* 805373F0  39 40 FF FF */	li r10, -1
/* 805373F4  4B AD 93 DD */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805373F8  7C 60 1B 78 */	mr r0, r3
lbl_805373FC:
/* 805373FC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80537400  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80537404  28 03 00 00 */	cmplwi r3, 0
/* 80537408  41 82 00 10 */	beq lbl_80537418
/* 8053740C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80537410  28 05 00 00 */	cmplwi r5, 0
/* 80537414  40 82 00 0C */	bne lbl_80537420
lbl_80537418:
/* 80537418  38 60 00 00 */	li r3, 0
/* 8053741C  48 00 03 24 */	b lbl_80537740
lbl_80537420:
/* 80537420  38 C0 00 00 */	li r6, 0
/* 80537424  3C 60 80 53 */	lis r3, ctrlJointCallBack__12daNpc_Besu_cFP8J3DJointi@ha /* 0x80537A1C@ha */
/* 80537428  38 83 7A 1C */	addi r4, r3, ctrlJointCallBack__12daNpc_Besu_cFP8J3DJointi@l /* 0x80537A1C@l */
/* 8053742C  48 00 00 18 */	b lbl_80537444
lbl_80537430:
/* 80537430  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80537434  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80537438  7C 63 00 2E */	lwzx r3, r3, r0
/* 8053743C  90 83 00 04 */	stw r4, 4(r3)
/* 80537440  38 C6 00 01 */	addi r6, r6, 1
lbl_80537444:
/* 80537444  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80537448  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 8053744C  7C 03 00 40 */	cmplw r3, r0
/* 80537450  41 80 FF E0 */	blt lbl_80537430
/* 80537454  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80537458  38 60 01 08 */	li r3, 0x108
/* 8053745C  4B D9 77 F1 */	bl __nw__FUl
/* 80537460  7C 7D 1B 79 */	or. r29, r3, r3
/* 80537464  41 82 00 D0 */	beq lbl_80537534
/* 80537468  7F BC EB 78 */	mr r28, r29
/* 8053746C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80537470  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80537474  90 1D 00 00 */	stw r0, 0(r29)
/* 80537478  38 7D 00 04 */	addi r3, r29, 4
/* 8053747C  3C 80 80 53 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x805378FC@ha */
/* 80537480  38 84 78 FC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x805378FC@l */
/* 80537484  3C A0 80 53 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x805378C0@ha */
/* 80537488  38 A5 78 C0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x805378C0@l */
/* 8053748C  38 C0 00 08 */	li r6, 8
/* 80537490  38 E0 00 02 */	li r7, 2
/* 80537494  4B E2 A8 CD */	bl __construct_array
/* 80537498  38 7D 00 14 */	addi r3, r29, 0x14
/* 8053749C  3C 80 80 53 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x805378A8@ha */
/* 805374A0  38 84 78 A8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x805378A8@l */
/* 805374A4  3C A0 80 53 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x8053786C@ha */
/* 805374A8  38 A5 78 6C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x8053786C@l */
/* 805374AC  38 C0 00 08 */	li r6, 8
/* 805374B0  38 E0 00 08 */	li r7, 8
/* 805374B4  4B E2 A8 AD */	bl __construct_array
/* 805374B8  38 7D 00 54 */	addi r3, r29, 0x54
/* 805374BC  3C 80 80 53 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80537848@ha */
/* 805374C0  38 84 78 48 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80537848@l */
/* 805374C4  3C A0 80 53 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80537800@ha */
/* 805374C8  38 A5 78 00 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80537800@l */
/* 805374CC  38 C0 00 0C */	li r6, 0xc
/* 805374D0  38 E0 00 08 */	li r7, 8
/* 805374D4  4B E2 A8 8D */	bl __construct_array
/* 805374D8  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 805374DC  3C 80 80 53 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x805377E8@ha */
/* 805374E0  38 84 77 E8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x805377E8@l */
/* 805374E4  3C A0 80 53 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x805377AC@ha */
/* 805374E8  38 A5 77 AC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x805377AC@l */
/* 805374EC  38 C0 00 08 */	li r6, 8
/* 805374F0  38 E0 00 04 */	li r7, 4
/* 805374F4  4B E2 A8 6D */	bl __construct_array
/* 805374F8  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 805374FC  3C 80 80 53 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80537794@ha */
/* 80537500  38 84 77 94 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80537794@l */
/* 80537504  3C A0 80 53 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80537758@ha */
/* 80537508  38 A5 77 58 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80537758@l */
/* 8053750C  38 C0 00 08 */	li r6, 8
/* 80537510  38 E0 00 04 */	li r7, 4
/* 80537514  4B E2 A8 4D */	bl __construct_array
/* 80537518  7F A3 EB 78 */	mr r3, r29
/* 8053751C  4B DF 4E 05 */	bl initialize__14J3DMaterialAnmFv
/* 80537520  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80537524  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80537528  90 1C 00 00 */	stw r0, 0(r28)
/* 8053752C  7F 83 E3 78 */	mr r3, r28
/* 80537530  4B C0 E2 35 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80537534:
/* 80537534  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80537538  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 8053753C  28 00 00 00 */	cmplwi r0, 0
/* 80537540  40 82 00 0C */	bne lbl_8053754C
/* 80537544  38 60 00 00 */	li r3, 0
/* 80537548  48 00 01 F8 */	b lbl_80537740
lbl_8053754C:
/* 8053754C  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80537550  28 00 00 07 */	cmplwi r0, 7
/* 80537554  40 82 00 BC */	bne lbl_80537610
/* 80537558  3C 60 80 54 */	lis r3, l_bmdData@ha /* 0x8053EB7C@ha */
/* 8053755C  38 63 EB 7C */	addi r3, r3, l_bmdData@l /* 0x8053EB7C@l */
/* 80537560  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80537564  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80537568  54 00 10 3A */	slwi r0, r0, 2
/* 8053756C  3C 60 80 54 */	lis r3, l_resNameList@ha /* 0x8053EC14@ha */
/* 80537570  38 63 EC 14 */	addi r3, r3, l_resNameList@l /* 0x8053EC14@l */
/* 80537574  7C 63 00 2E */	lwzx r3, r3, r0
/* 80537578  7F C5 F3 78 */	mr r5, r30
/* 8053757C  38 C0 00 80 */	li r6, 0x80
/* 80537580  4B B0 4D 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80537584  7C 7C 1B 79 */	or. r28, r3, r3
/* 80537588  40 82 00 0C */	bne lbl_80537594
/* 8053758C  38 60 00 00 */	li r3, 0
/* 80537590  48 00 01 B0 */	b lbl_80537740
lbl_80537594:
/* 80537594  38 60 00 58 */	li r3, 0x58
/* 80537598  4B D9 76 B5 */	bl __nw__FUl
/* 8053759C  7C 60 1B 79 */	or. r0, r3, r3
/* 805375A0  41 82 00 4C */	beq lbl_805375EC
/* 805375A4  38 00 00 00 */	li r0, 0
/* 805375A8  90 01 00 08 */	stw r0, 8(r1)
/* 805375AC  3C 00 00 08 */	lis r0, 8
/* 805375B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805375B4  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 805375B8  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 805375BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805375C0  7F 84 E3 78 */	mr r4, r28
/* 805375C4  38 A0 00 00 */	li r5, 0
/* 805375C8  38 C0 00 00 */	li r6, 0
/* 805375CC  38 E0 00 00 */	li r7, 0
/* 805375D0  39 00 FF FF */	li r8, -1
/* 805375D4  3D 20 80 54 */	lis r9, lit_4531@ha /* 0x8053E850@ha */
/* 805375D8  C0 29 E8 50 */	lfs f1, lit_4531@l(r9)  /* 0x8053E850@l */
/* 805375DC  39 20 00 00 */	li r9, 0
/* 805375E0  39 40 FF FF */	li r10, -1
/* 805375E4  4B AD 91 ED */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805375E8  7C 60 1B 78 */	mr r0, r3
lbl_805375EC:
/* 805375EC  90 1F 0E 40 */	stw r0, 0xe40(r31)
/* 805375F0  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 805375F4  28 03 00 00 */	cmplwi r3, 0
/* 805375F8  41 82 00 10 */	beq lbl_80537608
/* 805375FC  80 03 00 04 */	lwz r0, 4(r3)
/* 80537600  28 00 00 00 */	cmplwi r0, 0
/* 80537604  40 82 00 0C */	bne lbl_80537610
lbl_80537608:
/* 80537608  38 60 00 00 */	li r3, 0
/* 8053760C  48 00 01 34 */	b lbl_80537740
lbl_80537610:
/* 80537610  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 80537614  28 00 00 06 */	cmplwi r0, 6
/* 80537618  41 82 00 0C */	beq lbl_80537624
/* 8053761C  28 00 00 08 */	cmplwi r0, 8
/* 80537620  40 82 00 70 */	bne lbl_80537690
lbl_80537624:
/* 80537624  3C 60 80 54 */	lis r3, l_bmdData@ha /* 0x8053EB7C@ha */
/* 80537628  38 63 EB 7C */	addi r3, r3, l_bmdData@l /* 0x8053EB7C@l */
/* 8053762C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80537630  2C 04 00 00 */	cmpwi r4, 0
/* 80537634  41 80 00 28 */	blt lbl_8053765C
/* 80537638  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8053763C  54 00 10 3A */	slwi r0, r0, 2
/* 80537640  3C 60 80 54 */	lis r3, l_resNameList@ha /* 0x8053EC14@ha */
/* 80537644  38 63 EC 14 */	addi r3, r3, l_resNameList@l /* 0x8053EC14@l */
/* 80537648  7C 63 00 2E */	lwzx r3, r3, r0
/* 8053764C  7F C5 F3 78 */	mr r5, r30
/* 80537650  38 C0 00 80 */	li r6, 0x80
/* 80537654  4B B0 4C 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80537658  48 00 00 08 */	b lbl_80537660
lbl_8053765C:
/* 8053765C  38 60 00 00 */	li r3, 0
lbl_80537660:
/* 80537660  28 03 00 00 */	cmplwi r3, 0
/* 80537664  41 82 00 18 */	beq lbl_8053767C
/* 80537668  3C 80 00 08 */	lis r4, 8
/* 8053766C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80537670  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80537674  4B AD D5 E1 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80537678  90 7F 0E 48 */	stw r3, 0xe48(r31)
lbl_8053767C:
/* 8053767C  80 1F 0E 48 */	lwz r0, 0xe48(r31)
/* 80537680  28 00 00 00 */	cmplwi r0, 0
/* 80537684  40 82 00 0C */	bne lbl_80537690
/* 80537688  38 60 00 00 */	li r3, 0
/* 8053768C  48 00 00 B4 */	b lbl_80537740
lbl_80537690:
/* 80537690  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80537694  28 00 00 00 */	cmplwi r0, 0
/* 80537698  41 82 00 58 */	beq lbl_805376F0
/* 8053769C  7F E3 FB 78 */	mr r3, r31
/* 805376A0  38 80 00 1A */	li r4, 0x1a
/* 805376A4  38 A0 00 00 */	li r5, 0
/* 805376A8  4B C1 2C E1 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 805376AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805376B0  41 82 00 38 */	beq lbl_805376E8
/* 805376B4  7F E3 FB 78 */	mr r3, r31
/* 805376B8  38 80 00 18 */	li r4, 0x18
/* 805376BC  3C A0 80 54 */	lis r5, lit_4337@ha /* 0x8053E844@ha */
/* 805376C0  C0 25 E8 44 */	lfs f1, lit_4337@l(r5)  /* 0x8053E844@l */
/* 805376C4  38 A0 00 00 */	li r5, 0
/* 805376C8  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 805376CC  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 805376D0  7D 89 03 A6 */	mtctr r12
/* 805376D4  4E 80 04 21 */	bctrl 
/* 805376D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805376DC  41 82 00 0C */	beq lbl_805376E8
/* 805376E0  38 60 00 01 */	li r3, 1
/* 805376E4  48 00 00 5C */	b lbl_80537740
lbl_805376E8:
/* 805376E8  38 60 00 00 */	li r3, 0
/* 805376EC  48 00 00 54 */	b lbl_80537740
lbl_805376F0:
/* 805376F0  7F E3 FB 78 */	mr r3, r31
/* 805376F4  38 80 00 03 */	li r4, 3
/* 805376F8  38 A0 00 00 */	li r5, 0
/* 805376FC  4B C1 2C 8D */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80537700  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80537704  41 82 00 38 */	beq lbl_8053773C
/* 80537708  7F E3 FB 78 */	mr r3, r31
/* 8053770C  38 80 00 00 */	li r4, 0
/* 80537710  3C A0 80 54 */	lis r5, lit_4337@ha /* 0x8053E844@ha */
/* 80537714  C0 25 E8 44 */	lfs f1, lit_4337@l(r5)  /* 0x8053E844@l */
/* 80537718  38 A0 00 00 */	li r5, 0
/* 8053771C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80537720  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80537724  7D 89 03 A6 */	mtctr r12
/* 80537728  4E 80 04 21 */	bctrl 
/* 8053772C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80537730  41 82 00 0C */	beq lbl_8053773C
/* 80537734  38 60 00 01 */	li r3, 1
/* 80537738  48 00 00 08 */	b lbl_80537740
lbl_8053773C:
/* 8053773C  38 60 00 00 */	li r3, 0
lbl_80537740:
/* 80537740  39 61 00 30 */	addi r11, r1, 0x30
/* 80537744  4B E2 AA E1 */	bl _restgpr_28
/* 80537748  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053774C  7C 08 03 A6 */	mtlr r0
/* 80537750  38 21 00 30 */	addi r1, r1, 0x30
/* 80537754  4E 80 00 20 */	blr 
