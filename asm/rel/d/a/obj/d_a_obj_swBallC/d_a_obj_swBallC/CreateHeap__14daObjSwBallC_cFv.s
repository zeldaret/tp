lbl_80CF5EF8:
/* 80CF5EF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF5EFC  7C 08 02 A6 */	mflr r0
/* 80CF5F00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF5F04  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF5F08  4B 66 C2 D0 */	b _savegpr_28
/* 80CF5F0C  7C 7F 1B 78 */	mr r31, r3
/* 80CF5F10  3C 60 80 CF */	lis r3, l_arcName@ha
/* 80CF5F14  38 63 6D B0 */	addi r3, r3, l_arcName@l
/* 80CF5F18  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF5F1C  38 80 00 06 */	li r4, 6
/* 80CF5F20  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CF5F24  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CF5F28  3F C5 00 02 */	addis r30, r5, 2
/* 80CF5F2C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CF5F30  7F C5 F3 78 */	mr r5, r30
/* 80CF5F34  38 C0 00 80 */	li r6, 0x80
/* 80CF5F38  4B 34 63 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF5F3C  7C 7D 1B 78 */	mr r29, r3
/* 80CF5F40  3C 80 00 08 */	lis r4, 8
/* 80CF5F44  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80CF5F48  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80CF5F4C  4B 31 ED 08 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CF5F50  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CF5F54  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80CF5F58  28 00 00 00 */	cmplwi r0, 0
/* 80CF5F5C  40 82 00 0C */	bne lbl_80CF5F68
/* 80CF5F60  38 60 00 00 */	li r3, 0
/* 80CF5F64  48 00 00 A8 */	b lbl_80CF600C
lbl_80CF5F68:
/* 80CF5F68  3C 60 80 CF */	lis r3, l_arcName@ha
/* 80CF5F6C  38 63 6D B0 */	addi r3, r3, l_arcName@l
/* 80CF5F70  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF5F74  38 80 00 0A */	li r4, 0xa
/* 80CF5F78  7F C5 F3 78 */	mr r5, r30
/* 80CF5F7C  38 C0 00 80 */	li r6, 0x80
/* 80CF5F80  4B 34 63 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF5F84  7C 7C 1B 78 */	mr r28, r3
/* 80CF5F88  38 60 00 18 */	li r3, 0x18
/* 80CF5F8C  4B 5D 8C C0 */	b __nw__FUl
/* 80CF5F90  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF5F94  41 82 00 20 */	beq lbl_80CF5FB4
/* 80CF5F98  3C 80 80 CF */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80CF5F9C  38 04 6F 08 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80CF5FA0  90 1E 00 00 */	stw r0, 0(r30)
/* 80CF5FA4  38 80 00 00 */	li r4, 0
/* 80CF5FA8  4B 63 24 54 */	b init__12J3DFrameCtrlFs
/* 80CF5FAC  38 00 00 00 */	li r0, 0
/* 80CF5FB0  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80CF5FB4:
/* 80CF5FB4  93 DF 05 74 */	stw r30, 0x574(r31)
/* 80CF5FB8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CF5FBC  28 03 00 00 */	cmplwi r3, 0
/* 80CF5FC0  41 82 00 30 */	beq lbl_80CF5FF0
/* 80CF5FC4  38 9D 00 58 */	addi r4, r29, 0x58
/* 80CF5FC8  7F 85 E3 78 */	mr r5, r28
/* 80CF5FCC  38 C0 00 01 */	li r6, 1
/* 80CF5FD0  38 E0 00 00 */	li r7, 0
/* 80CF5FD4  3D 00 80 CF */	lis r8, lit_3814@ha
/* 80CF5FD8  C0 28 6C DC */	lfs f1, lit_3814@l(r8)
/* 80CF5FDC  39 00 00 00 */	li r8, 0
/* 80CF5FE0  39 20 FF FF */	li r9, -1
/* 80CF5FE4  4B 31 76 58 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CF5FE8  2C 03 00 00 */	cmpwi r3, 0
/* 80CF5FEC  40 82 00 0C */	bne lbl_80CF5FF8
lbl_80CF5FF0:
/* 80CF5FF0  38 60 00 00 */	li r3, 0
/* 80CF5FF4  48 00 00 18 */	b lbl_80CF600C
lbl_80CF5FF8:
/* 80CF5FF8  3C 60 80 CF */	lis r3, lit_3850@ha
/* 80CF5FFC  C0 03 6C EC */	lfs f0, lit_3850@l(r3)
/* 80CF6000  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CF6004  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF6008  38 60 00 01 */	li r3, 1
lbl_80CF600C:
/* 80CF600C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF6010  4B 66 C2 14 */	b _restgpr_28
/* 80CF6014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF6018  7C 08 03 A6 */	mtlr r0
/* 80CF601C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF6020  4E 80 00 20 */	blr 
