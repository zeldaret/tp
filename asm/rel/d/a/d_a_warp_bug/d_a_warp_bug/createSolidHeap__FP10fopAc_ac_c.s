lbl_80D67E3C:
/* 80D67E3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D67E40  7C 08 02 A6 */	mflr r0
/* 80D67E44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D67E48  39 61 00 20 */	addi r11, r1, 0x20
/* 80D67E4C  4B 5F A3 89 */	bl _savegpr_27
/* 80D67E50  7C 7E 1B 78 */	mr r30, r3
/* 80D67E54  3C 60 80 D7 */	lis r3, l_arcName@ha /* 0x80D68208@ha */
/* 80D67E58  38 63 82 08 */	addi r3, r3, l_arcName@l /* 0x80D68208@l */
/* 80D67E5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D67E60  3C 80 80 D7 */	lis r4, d_a_warp_bug__stringBase0@ha /* 0x80D681E0@ha */
/* 80D67E64  38 84 81 E0 */	addi r4, r4, d_a_warp_bug__stringBase0@l /* 0x80D681E0@l */
/* 80D67E68  38 84 00 08 */	addi r4, r4, 8
/* 80D67E6C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D67E70  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D67E74  3F 85 00 02 */	addis r28, r5, 2
/* 80D67E78  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80D67E7C  7F 85 E3 78 */	mr r5, r28
/* 80D67E80  38 C0 00 80 */	li r6, 0x80
/* 80D67E84  4B 2D 44 F9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D67E88  7C 7F 1B 78 */	mr r31, r3
/* 80D67E8C  3C 80 00 08 */	lis r4, 8
/* 80D67E90  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D67E94  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D67E98  4B 2A CD BD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D67E9C  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80D67EA0  3C 60 80 D7 */	lis r3, l_arcName@ha /* 0x80D68208@ha */
/* 80D67EA4  38 63 82 08 */	addi r3, r3, l_arcName@l /* 0x80D68208@l */
/* 80D67EA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D67EAC  3C 80 80 D7 */	lis r4, d_a_warp_bug__stringBase0@ha /* 0x80D681E0@ha */
/* 80D67EB0  38 84 81 E0 */	addi r4, r4, d_a_warp_bug__stringBase0@l /* 0x80D681E0@l */
/* 80D67EB4  38 84 00 12 */	addi r4, r4, 0x12
/* 80D67EB8  7F 85 E3 78 */	mr r5, r28
/* 80D67EBC  38 C0 00 80 */	li r6, 0x80
/* 80D67EC0  4B 2D 44 BD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D67EC4  7C 7B 1B 78 */	mr r27, r3
/* 80D67EC8  3C 60 80 D7 */	lis r3, l_arcName@ha /* 0x80D68208@ha */
/* 80D67ECC  38 63 82 08 */	addi r3, r3, l_arcName@l /* 0x80D68208@l */
/* 80D67ED0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D67ED4  3C 80 80 D7 */	lis r4, d_a_warp_bug__stringBase0@ha /* 0x80D681E0@ha */
/* 80D67ED8  38 84 81 E0 */	addi r4, r4, d_a_warp_bug__stringBase0@l /* 0x80D681E0@l */
/* 80D67EDC  38 84 00 1C */	addi r4, r4, 0x1c
/* 80D67EE0  7F 85 E3 78 */	mr r5, r28
/* 80D67EE4  38 C0 00 80 */	li r6, 0x80
/* 80D67EE8  4B 2D 44 95 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80D67EEC  7C 7C 1B 78 */	mr r28, r3
/* 80D67EF0  28 1B 00 00 */	cmplwi r27, 0
/* 80D67EF4  41 82 00 6C */	beq lbl_80D67F60
/* 80D67EF8  38 60 00 18 */	li r3, 0x18
/* 80D67EFC  4B 56 6D 51 */	bl __nw__FUl
/* 80D67F00  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D67F04  41 82 00 20 */	beq lbl_80D67F24
/* 80D67F08  3C 80 80 D7 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D6825C@ha */
/* 80D67F0C  38 04 82 5C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D6825C@l */
/* 80D67F10  90 1D 00 00 */	stw r0, 0(r29)
/* 80D67F14  38 80 00 00 */	li r4, 0
/* 80D67F18  4B 5C 04 E5 */	bl init__12J3DFrameCtrlFs
/* 80D67F1C  38 00 00 00 */	li r0, 0
/* 80D67F20  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D67F24:
/* 80D67F24  93 BE 05 6C */	stw r29, 0x56c(r30)
/* 80D67F28  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80D67F2C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D67F30  7F 65 DB 78 */	mr r5, r27
/* 80D67F34  38 C0 00 01 */	li r6, 1
/* 80D67F38  38 E0 00 02 */	li r7, 2
/* 80D67F3C  3D 00 80 D7 */	lis r8, lit_3709@ha /* 0x80D681DC@ha */
/* 80D67F40  C0 28 81 DC */	lfs f1, lit_3709@l(r8)  /* 0x80D681DC@l */
/* 80D67F44  39 00 00 00 */	li r8, 0
/* 80D67F48  39 20 FF FF */	li r9, -1
/* 80D67F4C  4B 2A 57 C1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D67F50  2C 03 00 00 */	cmpwi r3, 0
/* 80D67F54  40 82 00 0C */	bne lbl_80D67F60
/* 80D67F58  38 60 00 00 */	li r3, 0
/* 80D67F5C  48 00 00 8C */	b lbl_80D67FE8
lbl_80D67F60:
/* 80D67F60  28 1C 00 00 */	cmplwi r28, 0
/* 80D67F64  41 82 00 6C */	beq lbl_80D67FD0
/* 80D67F68  38 60 00 18 */	li r3, 0x18
/* 80D67F6C  4B 56 6C E1 */	bl __nw__FUl
/* 80D67F70  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D67F74  41 82 00 20 */	beq lbl_80D67F94
/* 80D67F78  3C 80 80 D7 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D6825C@ha */
/* 80D67F7C  38 04 82 5C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D6825C@l */
/* 80D67F80  90 1D 00 00 */	stw r0, 0(r29)
/* 80D67F84  38 80 00 00 */	li r4, 0
/* 80D67F88  4B 5C 04 75 */	bl init__12J3DFrameCtrlFs
/* 80D67F8C  38 00 00 00 */	li r0, 0
/* 80D67F90  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D67F94:
/* 80D67F94  93 BE 05 70 */	stw r29, 0x570(r30)
/* 80D67F98  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D67F9C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D67FA0  7F 85 E3 78 */	mr r5, r28
/* 80D67FA4  38 C0 00 01 */	li r6, 1
/* 80D67FA8  38 E0 00 02 */	li r7, 2
/* 80D67FAC  3D 00 80 D7 */	lis r8, lit_3709@ha /* 0x80D681DC@ha */
/* 80D67FB0  C0 28 81 DC */	lfs f1, lit_3709@l(r8)  /* 0x80D681DC@l */
/* 80D67FB4  39 00 00 00 */	li r8, 0
/* 80D67FB8  39 20 FF FF */	li r9, -1
/* 80D67FBC  4B 2A 56 81 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D67FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80D67FC4  40 82 00 0C */	bne lbl_80D67FD0
/* 80D67FC8  38 60 00 00 */	li r3, 0
/* 80D67FCC  48 00 00 1C */	b lbl_80D67FE8
lbl_80D67FD0:
/* 80D67FD0  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 80D67FD4  28 00 00 00 */	cmplwi r0, 0
/* 80D67FD8  40 82 00 0C */	bne lbl_80D67FE4
/* 80D67FDC  38 60 00 00 */	li r3, 0
/* 80D67FE0  48 00 00 08 */	b lbl_80D67FE8
lbl_80D67FE4:
/* 80D67FE4  38 60 00 01 */	li r3, 1
lbl_80D67FE8:
/* 80D67FE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D67FEC  4B 5F A2 35 */	bl _restgpr_27
/* 80D67FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D67FF4  7C 08 03 A6 */	mtlr r0
/* 80D67FF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D67FFC  4E 80 00 20 */	blr 
