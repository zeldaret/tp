lbl_80BF4E8C:
/* 80BF4E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF4E90  7C 08 02 A6 */	mflr r0
/* 80BF4E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF4E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF4E9C  4B 76 D3 3D */	bl _savegpr_28
/* 80BF4EA0  7C 7C 1B 78 */	mr r28, r3
/* 80BF4EA4  3C 60 80 BF */	lis r3, l_arcName@ha /* 0x80BF56E4@ha */
/* 80BF4EA8  38 63 56 E4 */	addi r3, r3, l_arcName@l /* 0x80BF56E4@l */
/* 80BF4EAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF4EB0  38 80 00 04 */	li r4, 4
/* 80BF4EB4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF4EB8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF4EBC  3F E5 00 02 */	addis r31, r5, 2
/* 80BF4EC0  3B FF C2 F8 */	addi r31, r31, -15624
/* 80BF4EC4  7F E5 FB 78 */	mr r5, r31
/* 80BF4EC8  38 C0 00 80 */	li r6, 0x80
/* 80BF4ECC  4B 44 74 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF4ED0  7C 7E 1B 78 */	mr r30, r3
/* 80BF4ED4  38 80 00 00 */	li r4, 0
/* 80BF4ED8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80BF4EDC  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80BF4EE0  4B 41 FD 75 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF4EE4  90 7C 05 70 */	stw r3, 0x570(r28)
/* 80BF4EE8  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80BF4EEC  28 00 00 00 */	cmplwi r0, 0
/* 80BF4EF0  40 82 00 0C */	bne lbl_80BF4EFC
/* 80BF4EF4  38 60 00 00 */	li r3, 0
/* 80BF4EF8  48 00 00 98 */	b lbl_80BF4F90
lbl_80BF4EFC:
/* 80BF4EFC  3C 60 80 BF */	lis r3, l_arcName@ha /* 0x80BF56E4@ha */
/* 80BF4F00  38 63 56 E4 */	addi r3, r3, l_arcName@l /* 0x80BF56E4@l */
/* 80BF4F04  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF4F08  38 80 00 07 */	li r4, 7
/* 80BF4F0C  7F E5 FB 78 */	mr r5, r31
/* 80BF4F10  38 C0 00 80 */	li r6, 0x80
/* 80BF4F14  4B 44 73 D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF4F18  7C 7D 1B 78 */	mr r29, r3
/* 80BF4F1C  38 60 00 18 */	li r3, 0x18
/* 80BF4F20  4B 6D 9D 2D */	bl __nw__FUl
/* 80BF4F24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF4F28  41 82 00 20 */	beq lbl_80BF4F48
/* 80BF4F2C  3C 80 80 BF */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BF573C@ha */
/* 80BF4F30  38 04 57 3C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BF573C@l */
/* 80BF4F34  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF4F38  38 80 00 00 */	li r4, 0
/* 80BF4F3C  4B 73 34 C1 */	bl init__12J3DFrameCtrlFs
/* 80BF4F40  38 00 00 00 */	li r0, 0
/* 80BF4F44  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_80BF4F48:
/* 80BF4F48  93 FC 05 74 */	stw r31, 0x574(r28)
/* 80BF4F4C  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80BF4F50  28 03 00 00 */	cmplwi r3, 0
/* 80BF4F54  41 82 00 30 */	beq lbl_80BF4F84
/* 80BF4F58  38 9E 00 58 */	addi r4, r30, 0x58
/* 80BF4F5C  7F A5 EB 78 */	mr r5, r29
/* 80BF4F60  38 C0 00 01 */	li r6, 1
/* 80BF4F64  38 E0 00 02 */	li r7, 2
/* 80BF4F68  3D 00 80 BF */	lis r8, lit_3711@ha /* 0x80BF56B0@ha */
/* 80BF4F6C  C0 28 56 B0 */	lfs f1, lit_3711@l(r8)  /* 0x80BF56B0@l */
/* 80BF4F70  39 00 00 00 */	li r8, 0
/* 80BF4F74  39 20 FF FF */	li r9, -1
/* 80BF4F78  4B 41 86 C5 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BF4F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80BF4F80  40 82 00 0C */	bne lbl_80BF4F8C
lbl_80BF4F84:
/* 80BF4F84  38 60 00 00 */	li r3, 0
/* 80BF4F88  48 00 00 08 */	b lbl_80BF4F90
lbl_80BF4F8C:
/* 80BF4F8C  38 60 00 01 */	li r3, 1
lbl_80BF4F90:
/* 80BF4F90  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF4F94  4B 76 D2 91 */	bl _restgpr_28
/* 80BF4F98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF4F9C  7C 08 03 A6 */	mtlr r0
/* 80BF4FA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF4FA4  4E 80 00 20 */	blr 
