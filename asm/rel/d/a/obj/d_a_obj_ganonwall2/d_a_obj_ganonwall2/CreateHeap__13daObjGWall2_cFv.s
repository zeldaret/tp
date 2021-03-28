lbl_80BF5950:
/* 80BF5950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF5954  7C 08 02 A6 */	mflr r0
/* 80BF5958  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF595C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF5960  4B 76 C8 78 */	b _savegpr_28
/* 80BF5964  7C 7C 1B 78 */	mr r28, r3
/* 80BF5968  3C 60 80 BF */	lis r3, l_arcName@ha
/* 80BF596C  38 63 62 0C */	addi r3, r3, l_arcName@l
/* 80BF5970  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF5974  38 80 00 05 */	li r4, 5
/* 80BF5978  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BF597C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BF5980  3F E5 00 02 */	addis r31, r5, 2
/* 80BF5984  3B FF C2 F8 */	addi r31, r31, -15624
/* 80BF5988  7F E5 FB 78 */	mr r5, r31
/* 80BF598C  38 C0 00 80 */	li r6, 0x80
/* 80BF5990  4B 44 69 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF5994  7C 7E 1B 78 */	mr r30, r3
/* 80BF5998  38 80 00 00 */	li r4, 0
/* 80BF599C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80BF59A0  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80BF59A4  4B 41 F2 B0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF59A8  90 7C 05 A8 */	stw r3, 0x5a8(r28)
/* 80BF59AC  80 1C 05 A8 */	lwz r0, 0x5a8(r28)
/* 80BF59B0  28 00 00 00 */	cmplwi r0, 0
/* 80BF59B4  40 82 00 0C */	bne lbl_80BF59C0
/* 80BF59B8  38 60 00 00 */	li r3, 0
/* 80BF59BC  48 00 00 98 */	b lbl_80BF5A54
lbl_80BF59C0:
/* 80BF59C0  3C 60 80 BF */	lis r3, l_arcName@ha
/* 80BF59C4  38 63 62 0C */	addi r3, r3, l_arcName@l
/* 80BF59C8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF59CC  38 80 00 08 */	li r4, 8
/* 80BF59D0  7F E5 FB 78 */	mr r5, r31
/* 80BF59D4  38 C0 00 80 */	li r6, 0x80
/* 80BF59D8  4B 44 69 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF59DC  7C 7D 1B 78 */	mr r29, r3
/* 80BF59E0  38 60 00 18 */	li r3, 0x18
/* 80BF59E4  4B 6D 92 68 */	b __nw__FUl
/* 80BF59E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF59EC  41 82 00 20 */	beq lbl_80BF5A0C
/* 80BF59F0  3C 80 80 BF */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BF59F4  38 04 62 64 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BF59F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF59FC  38 80 00 00 */	li r4, 0
/* 80BF5A00  4B 73 29 FC */	b init__12J3DFrameCtrlFs
/* 80BF5A04  38 00 00 00 */	li r0, 0
/* 80BF5A08  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80BF5A0C:
/* 80BF5A0C  93 FC 05 AC */	stw r31, 0x5ac(r28)
/* 80BF5A10  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 80BF5A14  28 03 00 00 */	cmplwi r3, 0
/* 80BF5A18  41 82 00 30 */	beq lbl_80BF5A48
/* 80BF5A1C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80BF5A20  7F A5 EB 78 */	mr r5, r29
/* 80BF5A24  38 C0 00 01 */	li r6, 1
/* 80BF5A28  38 E0 00 02 */	li r7, 2
/* 80BF5A2C  3D 00 80 BF */	lis r8, lit_3702@ha
/* 80BF5A30  C0 28 61 D8 */	lfs f1, lit_3702@l(r8)
/* 80BF5A34  39 00 00 00 */	li r8, 0
/* 80BF5A38  39 20 FF FF */	li r9, -1
/* 80BF5A3C  4B 41 7C 00 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BF5A40  2C 03 00 00 */	cmpwi r3, 0
/* 80BF5A44  40 82 00 0C */	bne lbl_80BF5A50
lbl_80BF5A48:
/* 80BF5A48  38 60 00 00 */	li r3, 0
/* 80BF5A4C  48 00 00 08 */	b lbl_80BF5A54
lbl_80BF5A50:
/* 80BF5A50  38 60 00 01 */	li r3, 1
lbl_80BF5A54:
/* 80BF5A54  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF5A58  4B 76 C7 CC */	b _restgpr_28
/* 80BF5A5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF5A60  7C 08 03 A6 */	mtlr r0
/* 80BF5A64  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF5A68  4E 80 00 20 */	blr 
