lbl_8060EAE0:
/* 8060EAE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060EAE4  7C 08 02 A6 */	mflr r0
/* 8060EAE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060EAEC  39 61 00 40 */	addi r11, r1, 0x40
/* 8060EAF0  4B D5 36 D1 */	bl _savegpr_22
/* 8060EAF4  7C 7F 1B 78 */	mr r31, r3
/* 8060EAF8  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EAFC  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EB00  38 63 00 07 */	addi r3, r3, 7
/* 8060EB04  38 80 00 2F */	li r4, 0x2f
/* 8060EB08  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060EB0C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060EB10  3F C5 00 02 */	addis r30, r5, 2
/* 8060EB14  3B DE C2 F8 */	addi r30, r30, -15624
/* 8060EB18  7F C5 F3 78 */	mr r5, r30
/* 8060EB1C  38 C0 00 80 */	li r6, 0x80
/* 8060EB20  4B A2 D7 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EB24  7C 76 1B 78 */	mr r22, r3
/* 8060EB28  38 60 00 58 */	li r3, 0x58
/* 8060EB2C  4B CC 01 21 */	bl __nw__FUl
/* 8060EB30  7C 77 1B 79 */	or. r23, r3, r3
/* 8060EB34  41 82 00 6C */	beq lbl_8060EBA0
/* 8060EB38  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EB3C  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EB40  38 63 00 07 */	addi r3, r3, 7
/* 8060EB44  38 80 00 25 */	li r4, 0x25
/* 8060EB48  7F C5 F3 78 */	mr r5, r30
/* 8060EB4C  38 C0 00 80 */	li r6, 0x80
/* 8060EB50  4B A2 D7 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EB54  7C 67 1B 78 */	mr r7, r3
/* 8060EB58  38 1F 09 E0 */	addi r0, r31, 0x9e0
/* 8060EB5C  90 01 00 08 */	stw r0, 8(r1)
/* 8060EB60  3C 00 00 08 */	lis r0, 8
/* 8060EB64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060EB68  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8060EB6C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 8060EB70  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060EB74  7E E3 BB 78 */	mr r3, r23
/* 8060EB78  7E C4 B3 78 */	mr r4, r22
/* 8060EB7C  38 A0 00 00 */	li r5, 0
/* 8060EB80  38 C0 00 00 */	li r6, 0
/* 8060EB84  39 00 00 02 */	li r8, 2
/* 8060EB88  3D 20 80 61 */	lis r9, lit_3930@ha /* 0x8060FDE8@ha */
/* 8060EB8C  C0 29 FD E8 */	lfs f1, lit_3930@l(r9)  /* 0x8060FDE8@l */
/* 8060EB90  39 20 00 00 */	li r9, 0
/* 8060EB94  39 40 FF FF */	li r10, -1
/* 8060EB98  4B A0 1C 39 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8060EB9C  7C 77 1B 78 */	mr r23, r3
lbl_8060EBA0:
/* 8060EBA0  92 FF 05 BC */	stw r23, 0x5bc(r31)
/* 8060EBA4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060EBA8  28 03 00 00 */	cmplwi r3, 0
/* 8060EBAC  41 82 00 10 */	beq lbl_8060EBBC
/* 8060EBB0  80 A3 00 04 */	lwz r5, 4(r3)
/* 8060EBB4  28 05 00 00 */	cmplwi r5, 0
/* 8060EBB8  40 82 00 0C */	bne lbl_8060EBC4
lbl_8060EBBC:
/* 8060EBBC  38 60 00 00 */	li r3, 0
/* 8060EBC0  48 00 04 90 */	b lbl_8060F050
lbl_8060EBC4:
/* 8060EBC4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8060EBC8  38 E0 00 01 */	li r7, 1
/* 8060EBCC  3C 60 80 60 */	lis r3, JointCallBack__9daB_MGN_cFP8J3DJointi@ha /* 0x8060584C@ha */
/* 8060EBD0  38 83 58 4C */	addi r4, r3, JointCallBack__9daB_MGN_cFP8J3DJointi@l /* 0x8060584C@l */
/* 8060EBD4  48 00 00 2C */	b lbl_8060EC00
lbl_8060EBD8:
/* 8060EBD8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8060EBDC  28 00 00 01 */	cmplwi r0, 1
/* 8060EBE0  41 82 00 0C */	beq lbl_8060EBEC
/* 8060EBE4  28 00 00 19 */	cmplwi r0, 0x19
/* 8060EBE8  40 82 00 14 */	bne lbl_8060EBFC
lbl_8060EBEC:
/* 8060EBEC  80 66 00 28 */	lwz r3, 0x28(r6)
/* 8060EBF0  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 8060EBF4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8060EBF8  90 83 00 04 */	stw r4, 4(r3)
lbl_8060EBFC:
/* 8060EBFC  38 E7 00 01 */	addi r7, r7, 1
lbl_8060EC00:
/* 8060EC00  80 C5 00 04 */	lwz r6, 4(r5)
/* 8060EC04  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 8060EC08  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8060EC0C  7C 00 18 40 */	cmplw r0, r3
/* 8060EC10  41 80 FF C8 */	blt lbl_8060EBD8
/* 8060EC14  38 60 00 18 */	li r3, 0x18
/* 8060EC18  4B CC 00 35 */	bl __nw__FUl
/* 8060EC1C  7C 77 1B 79 */	or. r23, r3, r3
/* 8060EC20  41 82 00 20 */	beq lbl_8060EC40
/* 8060EC24  3C 80 80 61 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80610414@ha */
/* 8060EC28  38 04 04 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80610414@l */
/* 8060EC2C  90 17 00 00 */	stw r0, 0(r23)
/* 8060EC30  38 80 00 00 */	li r4, 0
/* 8060EC34  4B D1 97 C9 */	bl init__12J3DFrameCtrlFs
/* 8060EC38  38 00 00 00 */	li r0, 0
/* 8060EC3C  90 17 00 14 */	stw r0, 0x14(r23)
lbl_8060EC40:
/* 8060EC40  92 FF 05 C0 */	stw r23, 0x5c0(r31)
/* 8060EC44  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 8060EC48  28 00 00 00 */	cmplwi r0, 0
/* 8060EC4C  40 82 00 0C */	bne lbl_8060EC58
/* 8060EC50  38 60 00 00 */	li r3, 0
/* 8060EC54  48 00 03 FC */	b lbl_8060F050
lbl_8060EC58:
/* 8060EC58  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EC5C  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EC60  38 63 00 07 */	addi r3, r3, 7
/* 8060EC64  38 80 00 33 */	li r4, 0x33
/* 8060EC68  7F C5 F3 78 */	mr r5, r30
/* 8060EC6C  38 C0 00 80 */	li r6, 0x80
/* 8060EC70  4B A2 D6 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EC74  7C 65 1B 78 */	mr r5, r3
/* 8060EC78  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8060EC7C  38 96 00 58 */	addi r4, r22, 0x58
/* 8060EC80  38 C0 00 01 */	li r6, 1
/* 8060EC84  38 E0 00 02 */	li r7, 2
/* 8060EC88  3D 00 80 61 */	lis r8, lit_3929@ha /* 0x8060FDE4@ha */
/* 8060EC8C  C0 28 FD E4 */	lfs f1, lit_3929@l(r8)  /* 0x8060FDE4@l */
/* 8060EC90  39 00 00 00 */	li r8, 0
/* 8060EC94  39 20 FF FF */	li r9, -1
/* 8060EC98  4B 9F EA 75 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8060EC9C  2C 03 00 00 */	cmpwi r3, 0
/* 8060ECA0  40 82 00 0C */	bne lbl_8060ECAC
/* 8060ECA4  38 60 00 00 */	li r3, 0
/* 8060ECA8  48 00 03 A8 */	b lbl_8060F050
lbl_8060ECAC:
/* 8060ECAC  38 60 00 18 */	li r3, 0x18
/* 8060ECB0  4B CB FF 9D */	bl __nw__FUl
/* 8060ECB4  7C 76 1B 79 */	or. r22, r3, r3
/* 8060ECB8  41 82 00 20 */	beq lbl_8060ECD8
/* 8060ECBC  3C 80 80 61 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80610414@ha */
/* 8060ECC0  38 04 04 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80610414@l */
/* 8060ECC4  90 16 00 00 */	stw r0, 0(r22)
/* 8060ECC8  38 80 00 00 */	li r4, 0
/* 8060ECCC  4B D1 97 31 */	bl init__12J3DFrameCtrlFs
/* 8060ECD0  38 00 00 00 */	li r0, 0
/* 8060ECD4  90 16 00 14 */	stw r0, 0x14(r22)
lbl_8060ECD8:
/* 8060ECD8  92 DF 05 C4 */	stw r22, 0x5c4(r31)
/* 8060ECDC  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 8060ECE0  28 00 00 00 */	cmplwi r0, 0
/* 8060ECE4  40 82 00 0C */	bne lbl_8060ECF0
/* 8060ECE8  38 60 00 00 */	li r3, 0
/* 8060ECEC  48 00 03 64 */	b lbl_8060F050
lbl_8060ECF0:
/* 8060ECF0  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060ECF4  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060ECF8  38 63 00 07 */	addi r3, r3, 7
/* 8060ECFC  38 80 00 3D */	li r4, 0x3d
/* 8060ED00  7F C5 F3 78 */	mr r5, r30
/* 8060ED04  38 C0 00 80 */	li r6, 0x80
/* 8060ED08  4B A2 D5 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060ED0C  7C 65 1B 78 */	mr r5, r3
/* 8060ED10  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060ED14  80 63 00 04 */	lwz r3, 4(r3)
/* 8060ED18  80 83 00 04 */	lwz r4, 4(r3)
/* 8060ED1C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8060ED20  38 84 00 58 */	addi r4, r4, 0x58
/* 8060ED24  38 C0 00 01 */	li r6, 1
/* 8060ED28  38 E0 00 00 */	li r7, 0
/* 8060ED2C  3D 00 80 61 */	lis r8, lit_3929@ha /* 0x8060FDE4@ha */
/* 8060ED30  C0 28 FD E4 */	lfs f1, lit_3929@l(r8)  /* 0x8060FDE4@l */
/* 8060ED34  39 00 00 00 */	li r8, 0
/* 8060ED38  39 20 FF FF */	li r9, -1
/* 8060ED3C  4B 9F E9 01 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8060ED40  2C 03 00 00 */	cmpwi r3, 0
/* 8060ED44  40 82 00 0C */	bne lbl_8060ED50
/* 8060ED48  38 60 00 00 */	li r3, 0
/* 8060ED4C  48 00 03 04 */	b lbl_8060F050
lbl_8060ED50:
/* 8060ED50  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060ED54  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060ED58  38 63 00 07 */	addi r3, r3, 7
/* 8060ED5C  38 80 00 30 */	li r4, 0x30
/* 8060ED60  7F C5 F3 78 */	mr r5, r30
/* 8060ED64  38 C0 00 80 */	li r6, 0x80
/* 8060ED68  4B A2 D5 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060ED6C  7C 78 1B 78 */	mr r24, r3
/* 8060ED70  3B 20 00 00 */	li r25, 0
/* 8060ED74  3A C0 00 00 */	li r22, 0
/* 8060ED78  3E E0 11 00 */	lis r23, 0x1100 /* 0x11000084@ha */
lbl_8060ED7C:
/* 8060ED7C  7F 03 C3 78 */	mr r3, r24
/* 8060ED80  3C 80 00 08 */	lis r4, 8
/* 8060ED84  38 B7 00 84 */	addi r5, r23, 0x0084 /* 0x11000084@l */
/* 8060ED88  4B A0 5E CD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8060ED8C  38 16 05 D0 */	addi r0, r22, 0x5d0
/* 8060ED90  7C 7F 01 2E */	stwx r3, r31, r0
/* 8060ED94  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8060ED98  28 00 00 00 */	cmplwi r0, 0
/* 8060ED9C  40 82 00 0C */	bne lbl_8060EDA8
/* 8060EDA0  38 60 00 00 */	li r3, 0
/* 8060EDA4  48 00 02 AC */	b lbl_8060F050
lbl_8060EDA8:
/* 8060EDA8  3B 39 00 01 */	addi r25, r25, 1
/* 8060EDAC  2C 19 00 14 */	cmpwi r25, 0x14
/* 8060EDB0  3A D6 00 04 */	addi r22, r22, 4
/* 8060EDB4  41 80 FF C8 */	blt lbl_8060ED7C
/* 8060EDB8  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EDBC  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EDC0  38 80 00 09 */	li r4, 9
/* 8060EDC4  7F C5 F3 78 */	mr r5, r30
/* 8060EDC8  38 C0 00 80 */	li r6, 0x80
/* 8060EDCC  4B A2 D5 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EDD0  7C 7D 1B 78 */	mr r29, r3
/* 8060EDD4  3B 80 00 00 */	li r28, 0
/* 8060EDD8  3B 20 00 00 */	li r25, 0
/* 8060EDDC  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EDE0  3B 63 00 84 */	addi r27, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EDE4  3C 60 80 61 */	lis r3, lit_3930@ha /* 0x8060FDE8@ha */
/* 8060EDE8  3B 43 FD E8 */	addi r26, r3, lit_3930@l /* 0x8060FDE8@l */
/* 8060EDEC  7F 78 DB 78 */	mr r24, r27
lbl_8060EDF0:
/* 8060EDF0  38 60 00 58 */	li r3, 0x58
/* 8060EDF4  4B CB FE 59 */	bl __nw__FUl
/* 8060EDF8  7C 76 1B 79 */	or. r22, r3, r3
/* 8060EDFC  41 82 00 68 */	beq lbl_8060EE64
/* 8060EE00  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EE04  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EE08  38 80 00 06 */	li r4, 6
/* 8060EE0C  7F C5 F3 78 */	mr r5, r30
/* 8060EE10  38 C0 00 80 */	li r6, 0x80
/* 8060EE14  4B A2 D4 D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EE18  7C 67 1B 78 */	mr r7, r3
/* 8060EE1C  38 1F 09 E0 */	addi r0, r31, 0x9e0
/* 8060EE20  90 01 00 08 */	stw r0, 8(r1)
/* 8060EE24  3C 00 00 08 */	lis r0, 8
/* 8060EE28  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060EE2C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8060EE30  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 8060EE34  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060EE38  7E C3 B3 78 */	mr r3, r22
/* 8060EE3C  7F A4 EB 78 */	mr r4, r29
/* 8060EE40  38 A0 00 00 */	li r5, 0
/* 8060EE44  38 C0 00 00 */	li r6, 0
/* 8060EE48  39 00 00 00 */	li r8, 0
/* 8060EE4C  3D 20 80 61 */	lis r9, lit_3929@ha /* 0x8060FDE4@ha */
/* 8060EE50  C0 29 FD E4 */	lfs f1, lit_3929@l(r9)  /* 0x8060FDE4@l */
/* 8060EE54  39 20 00 00 */	li r9, 0
/* 8060EE58  39 40 FF FF */	li r10, -1
/* 8060EE5C  4B A0 19 75 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8060EE60  7C 76 1B 78 */	mr r22, r3
lbl_8060EE64:
/* 8060EE64  7E FF CA 14 */	add r23, r31, r25
/* 8060EE68  92 D7 26 24 */	stw r22, 0x2624(r23)
/* 8060EE6C  80 77 26 24 */	lwz r3, 0x2624(r23)
/* 8060EE70  28 03 00 00 */	cmplwi r3, 0
/* 8060EE74  41 82 00 10 */	beq lbl_8060EE84
/* 8060EE78  80 03 00 04 */	lwz r0, 4(r3)
/* 8060EE7C  28 00 00 00 */	cmplwi r0, 0
/* 8060EE80  40 82 00 0C */	bne lbl_8060EE8C
lbl_8060EE84:
/* 8060EE84  38 60 00 00 */	li r3, 0
/* 8060EE88  48 00 01 C8 */	b lbl_8060F050
lbl_8060EE8C:
/* 8060EE8C  38 60 00 18 */	li r3, 0x18
/* 8060EE90  4B CB FD BD */	bl __nw__FUl
/* 8060EE94  7C 76 1B 79 */	or. r22, r3, r3
/* 8060EE98  41 82 00 20 */	beq lbl_8060EEB8
/* 8060EE9C  3C 80 80 61 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80610414@ha */
/* 8060EEA0  38 04 04 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80610414@l */
/* 8060EEA4  90 16 00 00 */	stw r0, 0(r22)
/* 8060EEA8  38 80 00 00 */	li r4, 0
/* 8060EEAC  4B D1 95 51 */	bl init__12J3DFrameCtrlFs
/* 8060EEB0  38 00 00 00 */	li r0, 0
/* 8060EEB4  90 16 00 14 */	stw r0, 0x14(r22)
lbl_8060EEB8:
/* 8060EEB8  92 D7 26 34 */	stw r22, 0x2634(r23)
/* 8060EEBC  80 17 26 34 */	lwz r0, 0x2634(r23)
/* 8060EEC0  28 00 00 00 */	cmplwi r0, 0
/* 8060EEC4  40 82 00 0C */	bne lbl_8060EED0
/* 8060EEC8  38 60 00 00 */	li r3, 0
/* 8060EECC  48 00 01 84 */	b lbl_8060F050
lbl_8060EED0:
/* 8060EED0  7F 63 DB 78 */	mr r3, r27
/* 8060EED4  38 80 00 0D */	li r4, 0xd
/* 8060EED8  7F C5 F3 78 */	mr r5, r30
/* 8060EEDC  38 C0 00 80 */	li r6, 0x80
/* 8060EEE0  4B A2 D4 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EEE4  7C 65 1B 78 */	mr r5, r3
/* 8060EEE8  80 77 26 34 */	lwz r3, 0x2634(r23)
/* 8060EEEC  38 9D 00 58 */	addi r4, r29, 0x58
/* 8060EEF0  38 C0 00 01 */	li r6, 1
/* 8060EEF4  38 E0 00 00 */	li r7, 0
/* 8060EEF8  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8060EEFC  39 00 00 00 */	li r8, 0
/* 8060EF00  39 20 FF FF */	li r9, -1
/* 8060EF04  4B 9F E8 09 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8060EF08  2C 03 00 00 */	cmpwi r3, 0
/* 8060EF0C  40 82 00 0C */	bne lbl_8060EF18
/* 8060EF10  38 60 00 00 */	li r3, 0
/* 8060EF14  48 00 01 3C */	b lbl_8060F050
lbl_8060EF18:
/* 8060EF18  38 60 00 18 */	li r3, 0x18
/* 8060EF1C  4B CB FD 31 */	bl __nw__FUl
/* 8060EF20  7C 76 1B 79 */	or. r22, r3, r3
/* 8060EF24  41 82 00 20 */	beq lbl_8060EF44
/* 8060EF28  3C 80 80 61 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80610414@ha */
/* 8060EF2C  38 04 04 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80610414@l */
/* 8060EF30  90 16 00 00 */	stw r0, 0(r22)
/* 8060EF34  38 80 00 00 */	li r4, 0
/* 8060EF38  4B D1 94 C5 */	bl init__12J3DFrameCtrlFs
/* 8060EF3C  38 00 00 00 */	li r0, 0
/* 8060EF40  90 16 00 14 */	stw r0, 0x14(r22)
lbl_8060EF44:
/* 8060EF44  92 D7 26 44 */	stw r22, 0x2644(r23)
/* 8060EF48  80 17 26 44 */	lwz r0, 0x2644(r23)
/* 8060EF4C  28 00 00 00 */	cmplwi r0, 0
/* 8060EF50  40 82 00 0C */	bne lbl_8060EF5C
/* 8060EF54  38 60 00 00 */	li r3, 0
/* 8060EF58  48 00 00 F8 */	b lbl_8060F050
lbl_8060EF5C:
/* 8060EF5C  7F 63 DB 78 */	mr r3, r27
/* 8060EF60  38 80 00 0C */	li r4, 0xc
/* 8060EF64  7F C5 F3 78 */	mr r5, r30
/* 8060EF68  38 C0 00 80 */	li r6, 0x80
/* 8060EF6C  4B A2 D3 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EF70  7C 65 1B 78 */	mr r5, r3
/* 8060EF74  80 77 26 44 */	lwz r3, 0x2644(r23)
/* 8060EF78  38 9D 00 58 */	addi r4, r29, 0x58
/* 8060EF7C  38 C0 00 01 */	li r6, 1
/* 8060EF80  38 E0 00 00 */	li r7, 0
/* 8060EF84  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8060EF88  39 00 00 00 */	li r8, 0
/* 8060EF8C  39 20 FF FF */	li r9, -1
/* 8060EF90  4B 9F E7 7D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8060EF94  2C 03 00 00 */	cmpwi r3, 0
/* 8060EF98  40 82 00 0C */	bne lbl_8060EFA4
/* 8060EF9C  38 60 00 00 */	li r3, 0
/* 8060EFA0  48 00 00 B0 */	b lbl_8060F050
lbl_8060EFA4:
/* 8060EFA4  38 60 00 18 */	li r3, 0x18
/* 8060EFA8  4B CB FC A5 */	bl __nw__FUl
/* 8060EFAC  7C 76 1B 79 */	or. r22, r3, r3
/* 8060EFB0  41 82 00 20 */	beq lbl_8060EFD0
/* 8060EFB4  3C 80 80 61 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80610414@ha */
/* 8060EFB8  38 04 04 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80610414@l */
/* 8060EFBC  90 16 00 00 */	stw r0, 0(r22)
/* 8060EFC0  38 80 00 00 */	li r4, 0
/* 8060EFC4  4B D1 94 39 */	bl init__12J3DFrameCtrlFs
/* 8060EFC8  38 00 00 00 */	li r0, 0
/* 8060EFCC  90 16 00 14 */	stw r0, 0x14(r22)
lbl_8060EFD0:
/* 8060EFD0  92 D7 26 54 */	stw r22, 0x2654(r23)
/* 8060EFD4  80 17 26 54 */	lwz r0, 0x2654(r23)
/* 8060EFD8  28 00 00 00 */	cmplwi r0, 0
/* 8060EFDC  40 82 00 0C */	bne lbl_8060EFE8
/* 8060EFE0  38 60 00 00 */	li r3, 0
/* 8060EFE4  48 00 00 6C */	b lbl_8060F050
lbl_8060EFE8:
/* 8060EFE8  7F 03 C3 78 */	mr r3, r24
/* 8060EFEC  38 80 00 10 */	li r4, 0x10
/* 8060EFF0  7F C5 F3 78 */	mr r5, r30
/* 8060EFF4  38 C0 00 80 */	li r6, 0x80
/* 8060EFF8  4B A2 D2 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060EFFC  7C 65 1B 78 */	mr r5, r3
/* 8060F000  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060F004  80 63 00 04 */	lwz r3, 4(r3)
/* 8060F008  80 83 00 04 */	lwz r4, 4(r3)
/* 8060F00C  80 77 26 54 */	lwz r3, 0x2654(r23)
/* 8060F010  38 84 00 58 */	addi r4, r4, 0x58
/* 8060F014  38 C0 00 01 */	li r6, 1
/* 8060F018  38 E0 00 02 */	li r7, 2
/* 8060F01C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8060F020  39 00 00 00 */	li r8, 0
/* 8060F024  39 20 FF FF */	li r9, -1
/* 8060F028  4B 9F E6 15 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8060F02C  2C 03 00 00 */	cmpwi r3, 0
/* 8060F030  40 82 00 0C */	bne lbl_8060F03C
/* 8060F034  38 60 00 00 */	li r3, 0
/* 8060F038  48 00 00 18 */	b lbl_8060F050
lbl_8060F03C:
/* 8060F03C  3B 9C 00 01 */	addi r28, r28, 1
/* 8060F040  2C 1C 00 04 */	cmpwi r28, 4
/* 8060F044  3B 39 00 04 */	addi r25, r25, 4
/* 8060F048  41 80 FD A8 */	blt lbl_8060EDF0
/* 8060F04C  38 60 00 01 */	li r3, 1
lbl_8060F050:
/* 8060F050  39 61 00 40 */	addi r11, r1, 0x40
/* 8060F054  4B D5 31 B9 */	bl _restgpr_22
/* 8060F058  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060F05C  7C 08 03 A6 */	mtlr r0
/* 8060F060  38 21 00 40 */	addi r1, r1, 0x40
/* 8060F064  4E 80 00 20 */	blr 
