lbl_80D4F8B8:
/* 80D4F8B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4F8BC  7C 08 02 A6 */	mflr r0
/* 80D4F8C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4F8C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4F8C8  4B 61 29 0D */	bl _savegpr_27
/* 80D4F8CC  7C 7D 1B 78 */	mr r29, r3
/* 80D4F8D0  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4F8D4  38 63 09 C8 */	addi r3, r3, l_arcName@l /* 0x80D509C8@l */
/* 80D4F8D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4F8DC  38 80 00 0F */	li r4, 0xf
/* 80D4F8E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4F8E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4F8E8  3F C5 00 02 */	addis r30, r5, 2
/* 80D4F8EC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D4F8F0  7F C5 F3 78 */	mr r5, r30
/* 80D4F8F4  38 C0 00 80 */	li r6, 0x80
/* 80D4F8F8  4B 2E C9 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4F8FC  7C 7F 1B 78 */	mr r31, r3
/* 80D4F900  3C 80 00 08 */	lis r4, 8
/* 80D4F904  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D4F908  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D4F90C  4B 2C 53 49 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D4F910  90 7D 05 68 */	stw r3, 0x568(r29)
/* 80D4F914  80 1D 05 68 */	lwz r0, 0x568(r29)
/* 80D4F918  28 00 00 00 */	cmplwi r0, 0
/* 80D4F91C  40 82 00 0C */	bne lbl_80D4F928
/* 80D4F920  38 60 00 00 */	li r3, 0
/* 80D4F924  48 00 02 34 */	b lbl_80D4FB58
lbl_80D4F928:
/* 80D4F928  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4F92C  38 63 09 C8 */	addi r3, r3, l_arcName@l /* 0x80D509C8@l */
/* 80D4F930  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4F934  38 80 00 13 */	li r4, 0x13
/* 80D4F938  7F C5 F3 78 */	mr r5, r30
/* 80D4F93C  38 C0 00 80 */	li r6, 0x80
/* 80D4F940  4B 2E C9 AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4F944  7C 7B 1B 78 */	mr r27, r3
/* 80D4F948  38 60 00 18 */	li r3, 0x18
/* 80D4F94C  4B 57 F3 01 */	bl __nw__FUl
/* 80D4F950  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D4F954  41 82 00 20 */	beq lbl_80D4F974
/* 80D4F958  3C 80 80 D5 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D50A1C@ha */
/* 80D4F95C  38 04 0A 1C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D50A1C@l */
/* 80D4F960  90 1C 00 00 */	stw r0, 0(r28)
/* 80D4F964  38 80 00 00 */	li r4, 0
/* 80D4F968  4B 5D 8A 95 */	bl init__12J3DFrameCtrlFs
/* 80D4F96C  38 00 00 00 */	li r0, 0
/* 80D4F970  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D4F974:
/* 80D4F974  93 9D 05 70 */	stw r28, 0x570(r29)
/* 80D4F978  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80D4F97C  28 03 00 00 */	cmplwi r3, 0
/* 80D4F980  41 82 00 30 */	beq lbl_80D4F9B0
/* 80D4F984  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D4F988  7F 65 DB 78 */	mr r5, r27
/* 80D4F98C  38 C0 00 01 */	li r6, 1
/* 80D4F990  38 E0 00 00 */	li r7, 0
/* 80D4F994  3D 00 80 D5 */	lis r8, lit_3757@ha /* 0x80D50920@ha */
/* 80D4F998  C0 28 09 20 */	lfs f1, lit_3757@l(r8)  /* 0x80D50920@l */
/* 80D4F99C  39 00 00 00 */	li r8, 0
/* 80D4F9A0  39 20 FF FF */	li r9, -1
/* 80D4F9A4  4B 2B DC 99 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D4F9A8  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F9AC  40 82 00 0C */	bne lbl_80D4F9B8
lbl_80D4F9B0:
/* 80D4F9B0  38 60 00 00 */	li r3, 0
/* 80D4F9B4  48 00 01 A4 */	b lbl_80D4FB58
lbl_80D4F9B8:
/* 80D4F9B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4F9BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4F9C0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D4F9C4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D4F9C8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D4F9CC  7C 05 07 74 */	extsb r5, r0
/* 80D4F9D0  4B 2E 59 91 */	bl isSwitch__10dSv_info_cCFii
/* 80D4F9D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F9D8  41 82 00 30 */	beq lbl_80D4FA08
/* 80D4F9DC  80 9D 05 70 */	lwz r4, 0x570(r29)
/* 80D4F9E0  A8 04 00 08 */	lha r0, 8(r4)
/* 80D4F9E4  3C 60 80 D5 */	lis r3, lit_3759@ha /* 0x80D50928@ha */
/* 80D4F9E8  C8 23 09 28 */	lfd f1, lit_3759@l(r3)  /* 0x80D50928@l */
/* 80D4F9EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D4F9F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D4F9F4  3C 00 43 30 */	lis r0, 0x4330
/* 80D4F9F8  90 01 00 08 */	stw r0, 8(r1)
/* 80D4F9FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D4FA00  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D4FA04  D0 04 00 10 */	stfs f0, 0x10(r4)
lbl_80D4FA08:
/* 80D4FA08  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4FA0C  38 63 09 C8 */	addi r3, r3, l_arcName@l /* 0x80D509C8@l */
/* 80D4FA10  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4FA14  38 80 00 14 */	li r4, 0x14
/* 80D4FA18  7F C5 F3 78 */	mr r5, r30
/* 80D4FA1C  38 C0 00 80 */	li r6, 0x80
/* 80D4FA20  4B 2E C8 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4FA24  7C 7B 1B 78 */	mr r27, r3
/* 80D4FA28  38 60 00 18 */	li r3, 0x18
/* 80D4FA2C  4B 57 F2 21 */	bl __nw__FUl
/* 80D4FA30  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D4FA34  41 82 00 20 */	beq lbl_80D4FA54
/* 80D4FA38  3C 80 80 D5 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D50A1C@ha */
/* 80D4FA3C  38 04 0A 1C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D50A1C@l */
/* 80D4FA40  90 1C 00 00 */	stw r0, 0(r28)
/* 80D4FA44  38 80 00 00 */	li r4, 0
/* 80D4FA48  4B 5D 89 B5 */	bl init__12J3DFrameCtrlFs
/* 80D4FA4C  38 00 00 00 */	li r0, 0
/* 80D4FA50  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D4FA54:
/* 80D4FA54  93 9D 05 74 */	stw r28, 0x574(r29)
/* 80D4FA58  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80D4FA5C  28 03 00 00 */	cmplwi r3, 0
/* 80D4FA60  41 82 00 30 */	beq lbl_80D4FA90
/* 80D4FA64  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D4FA68  7F 65 DB 78 */	mr r5, r27
/* 80D4FA6C  38 C0 00 01 */	li r6, 1
/* 80D4FA70  38 E0 00 02 */	li r7, 2
/* 80D4FA74  3D 00 80 D5 */	lis r8, lit_3757@ha /* 0x80D50920@ha */
/* 80D4FA78  C0 28 09 20 */	lfs f1, lit_3757@l(r8)  /* 0x80D50920@l */
/* 80D4FA7C  39 00 00 00 */	li r8, 0
/* 80D4FA80  39 20 FF FF */	li r9, -1
/* 80D4FA84  4B 2B DB B9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D4FA88  2C 03 00 00 */	cmpwi r3, 0
/* 80D4FA8C  40 82 00 0C */	bne lbl_80D4FA98
lbl_80D4FA90:
/* 80D4FA90  38 60 00 00 */	li r3, 0
/* 80D4FA94  48 00 00 C4 */	b lbl_80D4FB58
lbl_80D4FA98:
/* 80D4FA98  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4FA9C  38 63 09 C8 */	addi r3, r3, l_arcName@l /* 0x80D509C8@l */
/* 80D4FAA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4FAA4  38 80 00 10 */	li r4, 0x10
/* 80D4FAA8  7F C5 F3 78 */	mr r5, r30
/* 80D4FAAC  38 C0 00 80 */	li r6, 0x80
/* 80D4FAB0  4B 2E C8 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4FAB4  3C 80 00 08 */	lis r4, 8
/* 80D4FAB8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D4FABC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D4FAC0  4B 2C 51 95 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D4FAC4  90 7D 05 6C */	stw r3, 0x56c(r29)
/* 80D4FAC8  80 1D 05 6C */	lwz r0, 0x56c(r29)
/* 80D4FACC  28 00 00 00 */	cmplwi r0, 0
/* 80D4FAD0  40 82 00 0C */	bne lbl_80D4FADC
/* 80D4FAD4  38 60 00 00 */	li r3, 0
/* 80D4FAD8  48 00 00 80 */	b lbl_80D4FB58
lbl_80D4FADC:
/* 80D4FADC  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4FAE0  38 63 09 C8 */	addi r3, r3, l_arcName@l /* 0x80D509C8@l */
/* 80D4FAE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4FAE8  38 80 00 1B */	li r4, 0x1b
/* 80D4FAEC  7F C5 F3 78 */	mr r5, r30
/* 80D4FAF0  38 C0 00 80 */	li r6, 0x80
/* 80D4FAF4  4B 2E C7 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4FAF8  7C 64 1B 78 */	mr r4, r3
/* 80D4FAFC  38 7D 05 78 */	addi r3, r29, 0x578
/* 80D4FB00  38 A0 00 01 */	li r5, 1
/* 80D4FB04  38 DD 06 F8 */	addi r6, r29, 0x6f8
/* 80D4FB08  4B 32 A4 31 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D4FB0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4FB10  41 82 00 0C */	beq lbl_80D4FB1C
/* 80D4FB14  38 60 00 00 */	li r3, 0
/* 80D4FB18  48 00 00 40 */	b lbl_80D4FB58
lbl_80D4FB1C:
/* 80D4FB1C  3C 60 80 D5 */	lis r3, l_arcName@ha /* 0x80D509C8@ha */
/* 80D4FB20  38 63 09 C8 */	addi r3, r3, l_arcName@l /* 0x80D509C8@l */
/* 80D4FB24  80 63 00 00 */	lwz r3, 0(r3)
/* 80D4FB28  38 80 00 1C */	li r4, 0x1c
/* 80D4FB2C  7F C5 F3 78 */	mr r5, r30
/* 80D4FB30  38 C0 00 80 */	li r6, 0x80
/* 80D4FB34  4B 2E C7 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D4FB38  7C 64 1B 78 */	mr r4, r3
/* 80D4FB3C  38 7D 06 38 */	addi r3, r29, 0x638
/* 80D4FB40  38 A0 00 01 */	li r5, 1
/* 80D4FB44  38 DD 07 28 */	addi r6, r29, 0x728
/* 80D4FB48  4B 32 A3 F1 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D4FB4C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D4FB50  7C 00 00 34 */	cntlzw r0, r0
/* 80D4FB54  54 03 D9 7E */	srwi r3, r0, 5
lbl_80D4FB58:
/* 80D4FB58  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4FB5C  4B 61 26 C5 */	bl _restgpr_27
/* 80D4FB60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4FB64  7C 08 03 A6 */	mtlr r0
/* 80D4FB68  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4FB6C  4E 80 00 20 */	blr 
