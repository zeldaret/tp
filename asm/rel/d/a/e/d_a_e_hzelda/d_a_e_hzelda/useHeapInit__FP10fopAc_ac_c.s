lbl_806F47C4:
/* 806F47C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F47C8  7C 08 02 A6 */	mflr r0
/* 806F47CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F47D0  39 61 00 30 */	addi r11, r1, 0x30
/* 806F47D4  4B C6 DA 04 */	b _savegpr_28
/* 806F47D8  7C 7F 1B 78 */	mr r31, r3
/* 806F47DC  38 60 00 58 */	li r3, 0x58
/* 806F47E0  4B BD A4 6C */	b __nw__FUl
/* 806F47E4  7C 7C 1B 79 */	or. r28, r3, r3
/* 806F47E8  41 82 00 94 */	beq lbl_806F487C
/* 806F47EC  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F47F0  38 63 56 54 */	addi r3, r3, stringBase0@l
/* 806F47F4  38 80 00 15 */	li r4, 0x15
/* 806F47F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F47FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F4800  3F C5 00 02 */	addis r30, r5, 2
/* 806F4804  3B DE C2 F8 */	addi r30, r30, -15624
/* 806F4808  7F C5 F3 78 */	mr r5, r30
/* 806F480C  38 C0 00 80 */	li r6, 0x80
/* 806F4810  4B 94 7A DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F4814  7C 7D 1B 78 */	mr r29, r3
/* 806F4818  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F481C  38 63 56 54 */	addi r3, r3, stringBase0@l
/* 806F4820  38 80 00 1B */	li r4, 0x1b
/* 806F4824  7F C5 F3 78 */	mr r5, r30
/* 806F4828  38 C0 00 80 */	li r6, 0x80
/* 806F482C  4B 94 7A C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F4830  7C 64 1B 78 */	mr r4, r3
/* 806F4834  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 806F4838  90 01 00 08 */	stw r0, 8(r1)
/* 806F483C  3C 00 00 08 */	lis r0, 8
/* 806F4840  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F4844  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 806F4848  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 806F484C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F4850  7F 83 E3 78 */	mr r3, r28
/* 806F4854  38 A0 00 00 */	li r5, 0
/* 806F4858  38 C0 00 00 */	li r6, 0
/* 806F485C  7F A7 EB 78 */	mr r7, r29
/* 806F4860  39 00 00 02 */	li r8, 2
/* 806F4864  3D 20 80 6F */	lis r9, lit_3767@ha
/* 806F4868  C0 29 55 14 */	lfs f1, lit_3767@l(r9)
/* 806F486C  39 20 00 00 */	li r9, 0
/* 806F4870  39 40 FF FF */	li r10, -1
/* 806F4874  4B 91 BF 5C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806F4878  7C 7C 1B 78 */	mr r28, r3
lbl_806F487C:
/* 806F487C  93 9F 05 D4 */	stw r28, 0x5d4(r31)
/* 806F4880  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F4884  28 03 00 00 */	cmplwi r3, 0
/* 806F4888  41 82 00 10 */	beq lbl_806F4898
/* 806F488C  80 A3 00 04 */	lwz r5, 4(r3)
/* 806F4890  28 05 00 00 */	cmplwi r5, 0
/* 806F4894  40 82 00 0C */	bne lbl_806F48A0
lbl_806F4898:
/* 806F4898  38 60 00 00 */	li r3, 0
/* 806F489C  48 00 02 20 */	b lbl_806F4ABC
lbl_806F48A0:
/* 806F48A0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 806F48A4  38 E0 00 00 */	li r7, 0
/* 806F48A8  3C 60 80 6F */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 806F48AC  38 83 0E 1C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 806F48B0  48 00 00 18 */	b lbl_806F48C8
lbl_806F48B4:
/* 806F48B4  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806F48B8  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806F48BC  7C 63 00 2E */	lwzx r3, r3, r0
/* 806F48C0  90 83 00 04 */	stw r4, 4(r3)
/* 806F48C4  38 E7 00 01 */	addi r7, r7, 1
lbl_806F48C8:
/* 806F48C8  80 C5 00 04 */	lwz r6, 4(r5)
/* 806F48CC  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806F48D0  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806F48D4  7C 00 18 40 */	cmplw r0, r3
/* 806F48D8  41 80 FF DC */	blt lbl_806F48B4
/* 806F48DC  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F48E0  38 63 56 54 */	addi r3, r3, stringBase0@l
/* 806F48E4  38 80 00 1C */	li r4, 0x1c
/* 806F48E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F48EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F48F0  3F C5 00 02 */	addis r30, r5, 2
/* 806F48F4  3B DE C2 F8 */	addi r30, r30, -15624
/* 806F48F8  7F C5 F3 78 */	mr r5, r30
/* 806F48FC  38 C0 00 80 */	li r6, 0x80
/* 806F4900  4B 94 79 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F4904  3C 80 00 08 */	lis r4, 8
/* 806F4908  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806F490C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806F4910  4B 92 03 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806F4914  90 7F 06 88 */	stw r3, 0x688(r31)
/* 806F4918  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 806F491C  28 00 00 00 */	cmplwi r0, 0
/* 806F4920  40 82 00 0C */	bne lbl_806F492C
/* 806F4924  38 60 00 00 */	li r3, 0
/* 806F4928  48 00 01 94 */	b lbl_806F4ABC
lbl_806F492C:
/* 806F492C  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F4930  38 63 56 54 */	addi r3, r3, stringBase0@l
/* 806F4934  38 80 00 1A */	li r4, 0x1a
/* 806F4938  7F C5 F3 78 */	mr r5, r30
/* 806F493C  38 C0 00 80 */	li r6, 0x80
/* 806F4940  4B 94 79 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F4944  7C 7C 1B 78 */	mr r28, r3
/* 806F4948  3C 80 00 08 */	lis r4, 8
/* 806F494C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 806F4950  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 806F4954  4B 92 03 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806F4958  90 7F 07 14 */	stw r3, 0x714(r31)
/* 806F495C  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 806F4960  28 00 00 00 */	cmplwi r0, 0
/* 806F4964  40 82 00 0C */	bne lbl_806F4970
/* 806F4968  38 60 00 00 */	li r3, 0
/* 806F496C  48 00 01 50 */	b lbl_806F4ABC
lbl_806F4970:
/* 806F4970  38 60 00 18 */	li r3, 0x18
/* 806F4974  4B BD A2 D8 */	b __nw__FUl
/* 806F4978  7C 7D 1B 79 */	or. r29, r3, r3
/* 806F497C  41 82 00 20 */	beq lbl_806F499C
/* 806F4980  3C 80 80 6F */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806F4984  38 04 59 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806F4988  90 1D 00 00 */	stw r0, 0(r29)
/* 806F498C  38 80 00 00 */	li r4, 0
/* 806F4990  4B C3 3A 6C */	b init__12J3DFrameCtrlFs
/* 806F4994  38 00 00 00 */	li r0, 0
/* 806F4998  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_806F499C:
/* 806F499C  93 BF 07 34 */	stw r29, 0x734(r31)
/* 806F49A0  80 1F 07 34 */	lwz r0, 0x734(r31)
/* 806F49A4  28 00 00 00 */	cmplwi r0, 0
/* 806F49A8  40 82 00 0C */	bne lbl_806F49B4
/* 806F49AC  38 60 00 00 */	li r3, 0
/* 806F49B0  48 00 01 0C */	b lbl_806F4ABC
lbl_806F49B4:
/* 806F49B4  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F49B8  38 63 56 54 */	addi r3, r3, stringBase0@l
/* 806F49BC  38 80 00 1F */	li r4, 0x1f
/* 806F49C0  7F C5 F3 78 */	mr r5, r30
/* 806F49C4  38 C0 00 80 */	li r6, 0x80
/* 806F49C8  4B 94 79 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F49CC  7C 65 1B 78 */	mr r5, r3
/* 806F49D0  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 806F49D4  38 9C 00 58 */	addi r4, r28, 0x58
/* 806F49D8  38 C0 00 01 */	li r6, 1
/* 806F49DC  38 E0 00 02 */	li r7, 2
/* 806F49E0  3D 00 80 6F */	lis r8, lit_3767@ha
/* 806F49E4  C0 28 55 14 */	lfs f1, lit_3767@l(r8)
/* 806F49E8  39 00 00 00 */	li r8, 0
/* 806F49EC  39 20 FF FF */	li r9, -1
/* 806F49F0  4B 91 8D 1C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806F49F4  2C 03 00 00 */	cmpwi r3, 0
/* 806F49F8  40 82 00 0C */	bne lbl_806F4A04
/* 806F49FC  38 60 00 00 */	li r3, 0
/* 806F4A00  48 00 00 BC */	b lbl_806F4ABC
lbl_806F4A04:
/* 806F4A04  38 60 00 18 */	li r3, 0x18
/* 806F4A08  4B BD A2 44 */	b __nw__FUl
/* 806F4A0C  7C 7D 1B 79 */	or. r29, r3, r3
/* 806F4A10  41 82 00 20 */	beq lbl_806F4A30
/* 806F4A14  3C 80 80 6F */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806F4A18  38 04 59 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806F4A1C  90 1D 00 00 */	stw r0, 0(r29)
/* 806F4A20  38 80 00 00 */	li r4, 0
/* 806F4A24  4B C3 39 D8 */	b init__12J3DFrameCtrlFs
/* 806F4A28  38 00 00 00 */	li r0, 0
/* 806F4A2C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_806F4A30:
/* 806F4A30  93 BF 07 38 */	stw r29, 0x738(r31)
/* 806F4A34  80 1F 07 38 */	lwz r0, 0x738(r31)
/* 806F4A38  28 00 00 00 */	cmplwi r0, 0
/* 806F4A3C  40 82 00 0C */	bne lbl_806F4A48
/* 806F4A40  38 60 00 00 */	li r3, 0
/* 806F4A44  48 00 00 78 */	b lbl_806F4ABC
lbl_806F4A48:
/* 806F4A48  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806F4A4C  38 63 56 54 */	addi r3, r3, stringBase0@l
/* 806F4A50  38 80 00 23 */	li r4, 0x23
/* 806F4A54  7F C5 F3 78 */	mr r5, r30
/* 806F4A58  38 C0 00 80 */	li r6, 0x80
/* 806F4A5C  4B 94 78 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806F4A60  7C 65 1B 78 */	mr r5, r3
/* 806F4A64  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 806F4A68  80 83 00 04 */	lwz r4, 4(r3)
/* 806F4A6C  80 7F 07 38 */	lwz r3, 0x738(r31)
/* 806F4A70  38 84 00 58 */	addi r4, r4, 0x58
/* 806F4A74  38 C0 00 01 */	li r6, 1
/* 806F4A78  38 E0 00 02 */	li r7, 2
/* 806F4A7C  3D 00 80 6F */	lis r8, lit_3767@ha
/* 806F4A80  C0 28 55 14 */	lfs f1, lit_3767@l(r8)
/* 806F4A84  39 00 00 00 */	li r8, 0
/* 806F4A88  39 20 FF FF */	li r9, -1
/* 806F4A8C  4B 91 8B B0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 806F4A90  2C 03 00 00 */	cmpwi r3, 0
/* 806F4A94  40 82 00 0C */	bne lbl_806F4AA0
/* 806F4A98  38 60 00 00 */	li r3, 0
/* 806F4A9C  48 00 00 20 */	b lbl_806F4ABC
lbl_806F4AA0:
/* 806F4AA0  3C 60 80 6F */	lis r3, lit_3781@ha
/* 806F4AA4  C0 03 55 18 */	lfs f0, lit_3781@l(r3)
/* 806F4AA8  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 806F4AAC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806F4AB0  80 7F 07 38 */	lwz r3, 0x738(r31)
/* 806F4AB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806F4AB8  38 60 00 01 */	li r3, 1
lbl_806F4ABC:
/* 806F4ABC  39 61 00 30 */	addi r11, r1, 0x30
/* 806F4AC0  4B C6 D7 64 */	b _restgpr_28
/* 806F4AC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F4AC8  7C 08 03 A6 */	mtlr r0
/* 806F4ACC  38 21 00 30 */	addi r1, r1, 0x30
/* 806F4AD0  4E 80 00 20 */	blr 
