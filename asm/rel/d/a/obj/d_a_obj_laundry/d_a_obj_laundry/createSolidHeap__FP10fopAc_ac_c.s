lbl_80C518FC:
/* 80C518FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C51900  7C 08 02 A6 */	mflr r0
/* 80C51904  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C51908  39 61 00 20 */	addi r11, r1, 0x20
/* 80C5190C  4B 71 08 CC */	b _savegpr_28
/* 80C51910  7C 7F 1B 78 */	mr r31, r3
/* 80C51914  3C 60 80 C5 */	lis r3, l_arcName@ha
/* 80C51918  38 63 20 F0 */	addi r3, r3, l_arcName@l
/* 80C5191C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C51920  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C51924  38 84 20 C8 */	addi r4, r4, stringBase0@l
/* 80C51928  38 84 00 0A */	addi r4, r4, 0xa
/* 80C5192C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C51930  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C51934  3F 85 00 02 */	addis r28, r5, 2
/* 80C51938  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80C5193C  7F 85 E3 78 */	mr r5, r28
/* 80C51940  38 C0 00 80 */	li r6, 0x80
/* 80C51944  4B 3E AA 38 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C51948  7C 7D 1B 78 */	mr r29, r3
/* 80C5194C  3C 80 00 08 */	lis r4, 8
/* 80C51950  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80C51954  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80C51958  4B 3C 32 FC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C5195C  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C51960  3C 60 80 C5 */	lis r3, l_arcName@ha
/* 80C51964  38 63 20 F0 */	addi r3, r3, l_arcName@l
/* 80C51968  80 63 00 00 */	lwz r3, 0(r3)
/* 80C5196C  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C51970  38 84 20 C8 */	addi r4, r4, stringBase0@l
/* 80C51974  38 84 00 18 */	addi r4, r4, 0x18
/* 80C51978  7F 85 E3 78 */	mr r5, r28
/* 80C5197C  38 C0 00 80 */	li r6, 0x80
/* 80C51980  4B 3E A9 FC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80C51984  7C 7C 1B 78 */	mr r28, r3
/* 80C51988  38 60 00 18 */	li r3, 0x18
/* 80C5198C  4B 67 D2 C0 */	b __nw__FUl
/* 80C51990  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C51994  41 82 00 20 */	beq lbl_80C519B4
/* 80C51998  3C 80 80 C5 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C5199C  38 04 21 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C519A0  90 1E 00 00 */	stw r0, 0(r30)
/* 80C519A4  38 80 00 00 */	li r4, 0
/* 80C519A8  4B 6D 6A 54 */	b init__12J3DFrameCtrlFs
/* 80C519AC  38 00 00 00 */	li r0, 0
/* 80C519B0  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80C519B4:
/* 80C519B4  93 DF 05 6C */	stw r30, 0x56c(r31)
/* 80C519B8  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C519BC  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C519C0  7F 85 E3 78 */	mr r5, r28
/* 80C519C4  38 C0 00 01 */	li r6, 1
/* 80C519C8  38 E0 00 02 */	li r7, 2
/* 80C519CC  3D 00 80 C5 */	lis r8, lit_4203@ha
/* 80C519D0  C0 28 20 C4 */	lfs f1, lit_4203@l(r8)
/* 80C519D4  39 00 00 00 */	li r8, 0
/* 80C519D8  39 20 FF FF */	li r9, -1
/* 80C519DC  4B 3B BC 60 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C519E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C519E4  40 82 00 0C */	bne lbl_80C519F0
/* 80C519E8  38 60 00 00 */	li r3, 0
/* 80C519EC  48 00 00 94 */	b lbl_80C51A80
lbl_80C519F0:
/* 80C519F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C519F4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C519F8  3C 60 80 C5 */	lis r3, lit_3757@ha
/* 80C519FC  C8 23 20 48 */	lfd f1, lit_3757@l(r3)
/* 80C51A00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C51A04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C51A08  3C 00 43 30 */	lis r0, 0x4330
/* 80C51A0C  90 01 00 08 */	stw r0, 8(r1)
/* 80C51A10  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C51A14  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C51A18  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C51A1C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C51A20  38 A0 00 00 */	li r5, 0
/* 80C51A24  3C 60 80 C5 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80C51A28  38 83 18 44 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80C51A2C  48 00 00 30 */	b lbl_80C51A5C
lbl_80C51A30:
/* 80C51A30  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C51A34  80 63 00 04 */	lwz r3, 4(r3)
/* 80C51A38  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C51A3C  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80C51A40  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C51A44  28 03 00 00 */	cmplwi r3, 0
/* 80C51A48  41 82 00 10 */	beq lbl_80C51A58
/* 80C51A4C  90 83 00 04 */	stw r4, 4(r3)
/* 80C51A50  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C51A54  93 E3 00 14 */	stw r31, 0x14(r3)
lbl_80C51A58:
/* 80C51A58  38 A5 00 01 */	addi r5, r5, 1
lbl_80C51A5C:
/* 80C51A5C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80C51A60  28 00 00 03 */	cmplwi r0, 3
/* 80C51A64  41 80 FF CC */	blt lbl_80C51A30
/* 80C51A68  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80C51A6C  28 00 00 00 */	cmplwi r0, 0
/* 80C51A70  40 82 00 0C */	bne lbl_80C51A7C
/* 80C51A74  38 60 00 00 */	li r3, 0
/* 80C51A78  48 00 00 08 */	b lbl_80C51A80
lbl_80C51A7C:
/* 80C51A7C  38 60 00 01 */	li r3, 1
lbl_80C51A80:
/* 80C51A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80C51A84  4B 71 07 A0 */	b _restgpr_28
/* 80C51A88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C51A8C  7C 08 03 A6 */	mtlr r0
/* 80C51A90  38 21 00 20 */	addi r1, r1, 0x20
/* 80C51A94  4E 80 00 20 */	blr 
