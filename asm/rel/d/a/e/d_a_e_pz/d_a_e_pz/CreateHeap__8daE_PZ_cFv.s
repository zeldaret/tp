lbl_8075FB4C:
/* 8075FB4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8075FB50  7C 08 02 A6 */	mflr r0
/* 8075FB54  90 01 00 44 */	stw r0, 0x44(r1)
/* 8075FB58  39 61 00 40 */	addi r11, r1, 0x40
/* 8075FB5C  4B C0 26 68 */	b _savegpr_23
/* 8075FB60  7C 7F 1B 78 */	mr r31, r3
/* 8075FB64  88 03 07 D4 */	lbz r0, 0x7d4(r3)
/* 8075FB68  28 00 00 14 */	cmplwi r0, 0x14
/* 8075FB6C  41 80 03 24 */	blt lbl_8075FE90
/* 8075FB70  28 00 00 17 */	cmplwi r0, 0x17
/* 8075FB74  41 81 03 1C */	bgt lbl_8075FE90
/* 8075FB78  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FB7C  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 8075FB80  38 80 00 18 */	li r4, 0x18
/* 8075FB84  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8075FB88  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8075FB8C  3F C5 00 02 */	addis r30, r5, 2
/* 8075FB90  3B DE C2 F8 */	addi r30, r30, -15624
/* 8075FB94  7F C5 F3 78 */	mr r5, r30
/* 8075FB98  38 C0 00 80 */	li r6, 0x80
/* 8075FB9C  4B 8D C7 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FBA0  3C 80 00 08 */	lis r4, 8
/* 8075FBA4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8075FBA8  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 8075FBAC  4B 8B 50 A8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8075FBB0  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 8075FBB4  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 8075FBB8  28 00 00 00 */	cmplwi r0, 0
/* 8075FBBC  40 82 00 0C */	bne lbl_8075FBC8
/* 8075FBC0  38 60 00 00 */	li r3, 0
/* 8075FBC4  48 00 04 C8 */	b lbl_8076008C
lbl_8075FBC8:
/* 8075FBC8  38 60 00 18 */	li r3, 0x18
/* 8075FBCC  4B B6 F0 80 */	b __nw__FUl
/* 8075FBD0  7C 78 1B 79 */	or. r24, r3, r3
/* 8075FBD4  41 82 00 20 */	beq lbl_8075FBF4
/* 8075FBD8  3C 80 80 76 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8075FBDC  38 04 1D 9C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8075FBE0  90 18 00 00 */	stw r0, 0(r24)
/* 8075FBE4  38 80 00 00 */	li r4, 0
/* 8075FBE8  4B BC 88 14 */	b init__12J3DFrameCtrlFs
/* 8075FBEC  38 00 00 00 */	li r0, 0
/* 8075FBF0  90 18 00 14 */	stw r0, 0x14(r24)
lbl_8075FBF4:
/* 8075FBF4  93 1F 05 C0 */	stw r24, 0x5c0(r31)
/* 8075FBF8  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 8075FBFC  28 00 00 00 */	cmplwi r0, 0
/* 8075FC00  40 82 00 0C */	bne lbl_8075FC0C
/* 8075FC04  38 60 00 00 */	li r3, 0
/* 8075FC08  48 00 04 84 */	b lbl_8076008C
lbl_8075FC0C:
/* 8075FC0C  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FC10  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 8075FC14  38 80 00 25 */	li r4, 0x25
/* 8075FC18  7F C5 F3 78 */	mr r5, r30
/* 8075FC1C  38 C0 00 80 */	li r6, 0x80
/* 8075FC20  4B 8D C6 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FC24  7C 65 1B 78 */	mr r5, r3
/* 8075FC28  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8075FC2C  80 83 00 04 */	lwz r4, 4(r3)
/* 8075FC30  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8075FC34  38 84 00 58 */	addi r4, r4, 0x58
/* 8075FC38  38 C0 00 01 */	li r6, 1
/* 8075FC3C  38 E0 00 02 */	li r7, 2
/* 8075FC40  3D 00 80 76 */	lis r8, lit_3908@ha
/* 8075FC44  C0 28 15 04 */	lfs f1, lit_3908@l(r8)
/* 8075FC48  39 00 00 00 */	li r8, 0
/* 8075FC4C  39 20 FF FF */	li r9, -1
/* 8075FC50  4B 8A D9 EC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8075FC54  2C 03 00 00 */	cmpwi r3, 0
/* 8075FC58  40 82 00 0C */	bne lbl_8075FC64
/* 8075FC5C  38 60 00 00 */	li r3, 0
/* 8075FC60  48 00 04 2C */	b lbl_8076008C
lbl_8075FC64:
/* 8075FC64  3B A0 00 00 */	li r29, 0
/* 8075FC68  3B 80 00 00 */	li r28, 0
/* 8075FC6C  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FC70  3B 23 17 B4 */	addi r25, r3, stringBase0@l
/* 8075FC74  3C 60 80 76 */	lis r3, mPzDarkHoll_dt@ha
/* 8075FC78  3B 43 1C D8 */	addi r26, r3, mPzDarkHoll_dt@l
/* 8075FC7C  3C 60 80 76 */	lis r3, lit_3908@ha
/* 8075FC80  3B 63 15 04 */	addi r27, r3, lit_3908@l
lbl_8075FC84:
/* 8075FC84  38 60 00 18 */	li r3, 0x18
/* 8075FC88  4B B6 EF C4 */	b __nw__FUl
/* 8075FC8C  7C 78 1B 79 */	or. r24, r3, r3
/* 8075FC90  41 82 00 20 */	beq lbl_8075FCB0
/* 8075FC94  3C 80 80 76 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8075FC98  38 04 1D 9C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8075FC9C  90 18 00 00 */	stw r0, 0(r24)
/* 8075FCA0  38 80 00 00 */	li r4, 0
/* 8075FCA4  4B BC 87 58 */	b init__12J3DFrameCtrlFs
/* 8075FCA8  38 00 00 00 */	li r0, 0
/* 8075FCAC  90 18 00 14 */	stw r0, 0x14(r24)
lbl_8075FCB0:
/* 8075FCB0  3A FC 05 C4 */	addi r23, r28, 0x5c4
/* 8075FCB4  7F 1F B9 2E */	stwx r24, r31, r23
/* 8075FCB8  7C 1F B8 2E */	lwzx r0, r31, r23
/* 8075FCBC  28 00 00 00 */	cmplwi r0, 0
/* 8075FCC0  40 82 00 0C */	bne lbl_8075FCCC
/* 8075FCC4  38 60 00 00 */	li r3, 0
/* 8075FCC8  48 00 03 C4 */	b lbl_8076008C
lbl_8075FCCC:
/* 8075FCCC  7F 23 CB 78 */	mr r3, r25
/* 8075FCD0  7C 9A E0 2E */	lwzx r4, r26, r28
/* 8075FCD4  7F C5 F3 78 */	mr r5, r30
/* 8075FCD8  38 C0 00 80 */	li r6, 0x80
/* 8075FCDC  4B 8D C6 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FCE0  7C 65 1B 78 */	mr r5, r3
/* 8075FCE4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8075FCE8  80 83 00 04 */	lwz r4, 4(r3)
/* 8075FCEC  7C 7F B8 2E */	lwzx r3, r31, r23
/* 8075FCF0  38 84 00 58 */	addi r4, r4, 0x58
/* 8075FCF4  38 C0 00 01 */	li r6, 1
/* 8075FCF8  38 E0 00 00 */	li r7, 0
/* 8075FCFC  C0 3B 00 00 */	lfs f1, 0(r27)
/* 8075FD00  39 00 00 00 */	li r8, 0
/* 8075FD04  39 20 FF FF */	li r9, -1
/* 8075FD08  4B 8A DA 04 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8075FD0C  2C 03 00 00 */	cmpwi r3, 0
/* 8075FD10  40 82 00 0C */	bne lbl_8075FD1C
/* 8075FD14  38 60 00 00 */	li r3, 0
/* 8075FD18  48 00 03 74 */	b lbl_8076008C
lbl_8075FD1C:
/* 8075FD1C  3B BD 00 01 */	addi r29, r29, 1
/* 8075FD20  2C 1D 00 02 */	cmpwi r29, 2
/* 8075FD24  3B 9C 00 04 */	addi r28, r28, 4
/* 8075FD28  41 80 FF 5C */	blt lbl_8075FC84
/* 8075FD2C  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FD30  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 8075FD34  38 80 00 19 */	li r4, 0x19
/* 8075FD38  7F C5 F3 78 */	mr r5, r30
/* 8075FD3C  38 C0 00 80 */	li r6, 0x80
/* 8075FD40  4B 8D C5 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FD44  7C 77 1B 78 */	mr r23, r3
/* 8075FD48  38 60 00 58 */	li r3, 0x58
/* 8075FD4C  4B B6 EF 00 */	b __nw__FUl
/* 8075FD50  7C 78 1B 79 */	or. r24, r3, r3
/* 8075FD54  41 82 00 64 */	beq lbl_8075FDB8
/* 8075FD58  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FD5C  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 8075FD60  38 80 00 07 */	li r4, 7
/* 8075FD64  7F C5 F3 78 */	mr r5, r30
/* 8075FD68  38 C0 00 80 */	li r6, 0x80
/* 8075FD6C  4B 8D C5 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FD70  7C 67 1B 78 */	mr r7, r3
/* 8075FD74  38 00 00 00 */	li r0, 0
/* 8075FD78  90 01 00 08 */	stw r0, 8(r1)
/* 8075FD7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075FD80  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8075FD84  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8075FD88  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075FD8C  7F 03 C3 78 */	mr r3, r24
/* 8075FD90  7E E4 BB 78 */	mr r4, r23
/* 8075FD94  38 A0 00 00 */	li r5, 0
/* 8075FD98  38 C0 00 00 */	li r6, 0
/* 8075FD9C  39 00 00 02 */	li r8, 2
/* 8075FDA0  3D 20 80 76 */	lis r9, lit_3908@ha
/* 8075FDA4  C0 29 15 04 */	lfs f1, lit_3908@l(r9)
/* 8075FDA8  39 20 00 00 */	li r9, 0
/* 8075FDAC  39 40 FF FF */	li r10, -1
/* 8075FDB0  4B 8B 0A 20 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8075FDB4  7C 78 1B 78 */	mr r24, r3
lbl_8075FDB8:
/* 8075FDB8  93 1F 05 B8 */	stw r24, 0x5b8(r31)
/* 8075FDBC  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8075FDC0  28 00 00 00 */	cmplwi r0, 0
/* 8075FDC4  40 82 00 0C */	bne lbl_8075FDD0
/* 8075FDC8  38 60 00 00 */	li r3, 0
/* 8075FDCC  48 00 02 C0 */	b lbl_8076008C
lbl_8075FDD0:
/* 8075FDD0  3A E0 00 00 */	li r23, 0
/* 8075FDD4  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FDD8  3B A3 17 B4 */	addi r29, r3, stringBase0@l
/* 8075FDDC  3C 60 80 76 */	lis r3, lit_3908@ha
/* 8075FDE0  3B 83 15 04 */	addi r28, r3, lit_3908@l
lbl_8075FDE4:
/* 8075FDE4  38 60 00 18 */	li r3, 0x18
/* 8075FDE8  4B B6 EE 64 */	b __nw__FUl
/* 8075FDEC  7C 7B 1B 79 */	or. r27, r3, r3
/* 8075FDF0  41 82 00 20 */	beq lbl_8075FE10
/* 8075FDF4  3C 80 80 76 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8075FDF8  38 04 1D 9C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8075FDFC  90 1B 00 00 */	stw r0, 0(r27)
/* 8075FE00  38 80 00 00 */	li r4, 0
/* 8075FE04  4B BC 85 F8 */	b init__12J3DFrameCtrlFs
/* 8075FE08  38 00 00 00 */	li r0, 0
/* 8075FE0C  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_8075FE10:
/* 8075FE10  93 7F 05 CC */	stw r27, 0x5cc(r31)
/* 8075FE14  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 8075FE18  28 00 00 00 */	cmplwi r0, 0
/* 8075FE1C  40 82 00 0C */	bne lbl_8075FE28
/* 8075FE20  38 60 00 00 */	li r3, 0
/* 8075FE24  48 00 02 68 */	b lbl_8076008C
lbl_8075FE28:
/* 8075FE28  7F A3 EB 78 */	mr r3, r29
/* 8075FE2C  38 80 00 21 */	li r4, 0x21
/* 8075FE30  7F C5 F3 78 */	mr r5, r30
/* 8075FE34  38 C0 00 80 */	li r6, 0x80
/* 8075FE38  4B 8D C4 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FE3C  7C 65 1B 78 */	mr r5, r3
/* 8075FE40  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8075FE44  80 63 00 04 */	lwz r3, 4(r3)
/* 8075FE48  80 83 00 04 */	lwz r4, 4(r3)
/* 8075FE4C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8075FE50  38 84 00 58 */	addi r4, r4, 0x58
/* 8075FE54  38 C0 00 01 */	li r6, 1
/* 8075FE58  38 E0 00 00 */	li r7, 0
/* 8075FE5C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8075FE60  39 00 00 00 */	li r8, 0
/* 8075FE64  39 20 FF FF */	li r9, -1
/* 8075FE68  4B 8A D8 A4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8075FE6C  2C 03 00 00 */	cmpwi r3, 0
/* 8075FE70  40 82 00 0C */	bne lbl_8075FE7C
/* 8075FE74  38 60 00 00 */	li r3, 0
/* 8075FE78  48 00 02 14 */	b lbl_8076008C
lbl_8075FE7C:
/* 8075FE7C  3A F7 00 01 */	addi r23, r23, 1
/* 8075FE80  2C 17 00 02 */	cmpwi r23, 2
/* 8075FE84  41 80 FF 60 */	blt lbl_8075FDE4
/* 8075FE88  38 60 00 01 */	li r3, 1
/* 8075FE8C  48 00 02 00 */	b lbl_8076008C
lbl_8075FE90:
/* 8075FE90  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FE94  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 8075FE98  38 80 00 1C */	li r4, 0x1c
/* 8075FE9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8075FEA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8075FEA4  3F C5 00 02 */	addis r30, r5, 2
/* 8075FEA8  3B DE C2 F8 */	addi r30, r30, -15624
/* 8075FEAC  7F C5 F3 78 */	mr r5, r30
/* 8075FEB0  38 C0 00 80 */	li r6, 0x80
/* 8075FEB4  4B 8D C4 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FEB8  7C 77 1B 78 */	mr r23, r3
/* 8075FEBC  38 60 00 58 */	li r3, 0x58
/* 8075FEC0  4B B6 ED 8C */	b __nw__FUl
/* 8075FEC4  7C 78 1B 79 */	or. r24, r3, r3
/* 8075FEC8  41 82 00 68 */	beq lbl_8075FF30
/* 8075FECC  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FED0  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 8075FED4  38 80 00 08 */	li r4, 8
/* 8075FED8  7F C5 F3 78 */	mr r5, r30
/* 8075FEDC  38 C0 00 80 */	li r6, 0x80
/* 8075FEE0  4B 8D C4 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FEE4  7C 67 1B 78 */	mr r7, r3
/* 8075FEE8  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 8075FEEC  90 01 00 08 */	stw r0, 8(r1)
/* 8075FEF0  38 00 00 00 */	li r0, 0
/* 8075FEF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8075FEF8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8075FEFC  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 8075FF00  90 01 00 10 */	stw r0, 0x10(r1)
/* 8075FF04  7F 03 C3 78 */	mr r3, r24
/* 8075FF08  7E E4 BB 78 */	mr r4, r23
/* 8075FF0C  38 A0 00 00 */	li r5, 0
/* 8075FF10  38 C0 00 00 */	li r6, 0
/* 8075FF14  39 00 00 02 */	li r8, 2
/* 8075FF18  3D 20 80 76 */	lis r9, lit_3908@ha
/* 8075FF1C  C0 29 15 04 */	lfs f1, lit_3908@l(r9)
/* 8075FF20  39 20 00 00 */	li r9, 0
/* 8075FF24  39 40 FF FF */	li r10, -1
/* 8075FF28  4B 8B 08 A8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8075FF2C  7C 78 1B 78 */	mr r24, r3
lbl_8075FF30:
/* 8075FF30  93 1F 05 B4 */	stw r24, 0x5b4(r31)
/* 8075FF34  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075FF38  28 03 00 00 */	cmplwi r3, 0
/* 8075FF3C  41 82 00 10 */	beq lbl_8075FF4C
/* 8075FF40  80 03 00 04 */	lwz r0, 4(r3)
/* 8075FF44  28 00 00 00 */	cmplwi r0, 0
/* 8075FF48  40 82 00 0C */	bne lbl_8075FF54
lbl_8075FF4C:
/* 8075FF4C  38 60 00 00 */	li r3, 0
/* 8075FF50  48 00 01 3C */	b lbl_8076008C
lbl_8075FF54:
/* 8075FF54  38 60 00 18 */	li r3, 0x18
/* 8075FF58  4B B6 EC F4 */	b __nw__FUl
/* 8075FF5C  7C 7C 1B 79 */	or. r28, r3, r3
/* 8075FF60  41 82 00 20 */	beq lbl_8075FF80
/* 8075FF64  3C 80 80 76 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8075FF68  38 04 1D 9C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8075FF6C  90 1C 00 00 */	stw r0, 0(r28)
/* 8075FF70  38 80 00 00 */	li r4, 0
/* 8075FF74  4B BC 84 88 */	b init__12J3DFrameCtrlFs
/* 8075FF78  38 00 00 00 */	li r0, 0
/* 8075FF7C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_8075FF80:
/* 8075FF80  93 9F 05 D4 */	stw r28, 0x5d4(r31)
/* 8075FF84  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 8075FF88  28 00 00 00 */	cmplwi r0, 0
/* 8075FF8C  40 82 00 0C */	bne lbl_8075FF98
/* 8075FF90  38 60 00 00 */	li r3, 0
/* 8075FF94  48 00 00 F8 */	b lbl_8076008C
lbl_8075FF98:
/* 8075FF98  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8075FF9C  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 8075FFA0  38 80 00 22 */	li r4, 0x22
/* 8075FFA4  7F C5 F3 78 */	mr r5, r30
/* 8075FFA8  38 C0 00 80 */	li r6, 0x80
/* 8075FFAC  4B 8D C3 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8075FFB0  7C 65 1B 78 */	mr r5, r3
/* 8075FFB4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8075FFB8  80 63 00 04 */	lwz r3, 4(r3)
/* 8075FFBC  80 83 00 04 */	lwz r4, 4(r3)
/* 8075FFC0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8075FFC4  38 84 00 58 */	addi r4, r4, 0x58
/* 8075FFC8  38 C0 00 01 */	li r6, 1
/* 8075FFCC  38 E0 00 02 */	li r7, 2
/* 8075FFD0  3D 00 80 76 */	lis r8, lit_3908@ha
/* 8075FFD4  C0 28 15 04 */	lfs f1, lit_3908@l(r8)
/* 8075FFD8  39 00 00 00 */	li r8, 0
/* 8075FFDC  39 20 FF FF */	li r9, -1
/* 8075FFE0  4B 8A D7 2C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8075FFE4  2C 03 00 00 */	cmpwi r3, 0
/* 8075FFE8  40 82 00 0C */	bne lbl_8075FFF4
/* 8075FFEC  38 60 00 00 */	li r3, 0
/* 8075FFF0  48 00 00 9C */	b lbl_8076008C
lbl_8075FFF4:
/* 8075FFF4  38 60 00 18 */	li r3, 0x18
/* 8075FFF8  4B B6 EC 54 */	b __nw__FUl
/* 8075FFFC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80760000  41 82 00 20 */	beq lbl_80760020
/* 80760004  3C 80 80 76 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80760008  38 04 1D 9C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8076000C  90 1C 00 00 */	stw r0, 0(r28)
/* 80760010  38 80 00 00 */	li r4, 0
/* 80760014  4B BC 83 E8 */	b init__12J3DFrameCtrlFs
/* 80760018  38 00 00 00 */	li r0, 0
/* 8076001C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80760020:
/* 80760020  93 9F 05 D0 */	stw r28, 0x5d0(r31)
/* 80760024  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80760028  28 00 00 00 */	cmplwi r0, 0
/* 8076002C  40 82 00 0C */	bne lbl_80760038
/* 80760030  38 60 00 00 */	li r3, 0
/* 80760034  48 00 00 58 */	b lbl_8076008C
lbl_80760038:
/* 80760038  3C 60 80 76 */	lis r3, stringBase0@ha
/* 8076003C  38 63 17 B4 */	addi r3, r3, stringBase0@l
/* 80760040  38 80 00 26 */	li r4, 0x26
/* 80760044  7F C5 F3 78 */	mr r5, r30
/* 80760048  38 C0 00 80 */	li r6, 0x80
/* 8076004C  4B 8D C2 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80760050  7C 65 1B 78 */	mr r5, r3
/* 80760054  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80760058  80 63 00 04 */	lwz r3, 4(r3)
/* 8076005C  80 83 00 04 */	lwz r4, 4(r3)
/* 80760060  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80760064  38 84 00 58 */	addi r4, r4, 0x58
/* 80760068  38 C0 00 01 */	li r6, 1
/* 8076006C  38 E0 00 02 */	li r7, 2
/* 80760070  3D 00 80 76 */	lis r8, lit_3908@ha
/* 80760074  C0 28 15 04 */	lfs f1, lit_3908@l(r8)
/* 80760078  39 00 00 00 */	li r8, 0
/* 8076007C  39 20 FF FF */	li r9, -1
/* 80760080  4B 8A D5 BC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80760084  30 03 FF FF */	addic r0, r3, -1
/* 80760088  7C 60 19 10 */	subfe r3, r0, r3
lbl_8076008C:
/* 8076008C  39 61 00 40 */	addi r11, r1, 0x40
/* 80760090  4B C0 21 80 */	b _restgpr_23
/* 80760094  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80760098  7C 08 03 A6 */	mtlr r0
/* 8076009C  38 21 00 40 */	addi r1, r1, 0x40
/* 807600A0  4E 80 00 20 */	blr 
