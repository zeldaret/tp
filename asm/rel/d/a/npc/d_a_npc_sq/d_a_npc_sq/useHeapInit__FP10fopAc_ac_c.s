lbl_80AF6DB0:
/* 80AF6DB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF6DB4  7C 08 02 A6 */	mflr r0
/* 80AF6DB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF6DBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF6DC0  4B 86 B4 19 */	bl _savegpr_28
/* 80AF6DC4  7C 7F 1B 78 */	mr r31, r3
/* 80AF6DC8  38 60 00 54 */	li r3, 0x54
/* 80AF6DCC  4B 7D 7E 81 */	bl __nw__FUl
/* 80AF6DD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF6DD4  41 82 00 9C */	beq lbl_80AF6E70
/* 80AF6DD8  3C 60 80 AF */	lis r3, d_a_npc_sq__stringBase0@ha /* 0x80AF74A4@ha */
/* 80AF6DDC  38 63 74 A4 */	addi r3, r3, d_a_npc_sq__stringBase0@l /* 0x80AF74A4@l */
/* 80AF6DE0  38 80 00 09 */	li r4, 9
/* 80AF6DE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF6DE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6DEC  3F 85 00 02 */	addis r28, r5, 2
/* 80AF6DF0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80AF6DF4  7F 85 E3 78 */	mr r5, r28
/* 80AF6DF8  38 C0 00 80 */	li r6, 0x80
/* 80AF6DFC  4B 54 54 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AF6E00  7C 7D 1B 78 */	mr r29, r3
/* 80AF6E04  3C 60 80 AF */	lis r3, d_a_npc_sq__stringBase0@ha /* 0x80AF74A4@ha */
/* 80AF6E08  38 63 74 A4 */	addi r3, r3, d_a_npc_sq__stringBase0@l /* 0x80AF74A4@l */
/* 80AF6E0C  38 80 00 11 */	li r4, 0x11
/* 80AF6E10  7F 85 E3 78 */	mr r5, r28
/* 80AF6E14  38 C0 00 80 */	li r6, 0x80
/* 80AF6E18  4B 54 54 D5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AF6E1C  7C 64 1B 78 */	mr r4, r3
/* 80AF6E20  38 00 00 01 */	li r0, 1
/* 80AF6E24  90 01 00 08 */	stw r0, 8(r1)
/* 80AF6E28  38 00 00 00 */	li r0, 0
/* 80AF6E2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF6E30  3C 00 00 08 */	lis r0, 8
/* 80AF6E34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF6E38  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80AF6E3C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80AF6E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF6E44  7F C3 F3 78 */	mr r3, r30
/* 80AF6E48  38 A0 00 00 */	li r5, 0
/* 80AF6E4C  38 C0 00 00 */	li r6, 0
/* 80AF6E50  7F A7 EB 78 */	mr r7, r29
/* 80AF6E54  39 00 00 00 */	li r8, 0
/* 80AF6E58  3D 20 80 AF */	lis r9, lit_3813@ha /* 0x80AF7420@ha */
/* 80AF6E5C  C0 29 74 20 */	lfs f1, lit_3813@l(r9)  /* 0x80AF7420@l */
/* 80AF6E60  39 20 00 00 */	li r9, 0
/* 80AF6E64  39 40 FF FF */	li r10, -1
/* 80AF6E68  4B 51 8D E5 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80AF6E6C  7C 7E 1B 78 */	mr r30, r3
lbl_80AF6E70:
/* 80AF6E70  93 DF 06 1C */	stw r30, 0x61c(r31)
/* 80AF6E74  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80AF6E78  28 03 00 00 */	cmplwi r3, 0
/* 80AF6E7C  41 82 00 10 */	beq lbl_80AF6E8C
/* 80AF6E80  80 03 00 04 */	lwz r0, 4(r3)
/* 80AF6E84  28 00 00 00 */	cmplwi r0, 0
/* 80AF6E88  40 82 00 0C */	bne lbl_80AF6E94
lbl_80AF6E8C:
/* 80AF6E8C  38 60 00 00 */	li r3, 0
/* 80AF6E90  48 00 00 A8 */	b lbl_80AF6F38
lbl_80AF6E94:
/* 80AF6E94  38 60 00 18 */	li r3, 0x18
/* 80AF6E98  4B 7D 7D B5 */	bl __nw__FUl
/* 80AF6E9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF6EA0  41 82 00 20 */	beq lbl_80AF6EC0
/* 80AF6EA4  3C 80 80 AF */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80AF759C@ha */
/* 80AF6EA8  38 04 75 9C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80AF759C@l */
/* 80AF6EAC  90 1E 00 00 */	stw r0, 0(r30)
/* 80AF6EB0  38 80 00 00 */	li r4, 0
/* 80AF6EB4  4B 83 15 49 */	bl init__12J3DFrameCtrlFs
/* 80AF6EB8  38 00 00 00 */	li r0, 0
/* 80AF6EBC  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80AF6EC0:
/* 80AF6EC0  93 DF 06 20 */	stw r30, 0x620(r31)
/* 80AF6EC4  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80AF6EC8  28 00 00 00 */	cmplwi r0, 0
/* 80AF6ECC  40 82 00 0C */	bne lbl_80AF6ED8
/* 80AF6ED0  38 60 00 00 */	li r3, 0
/* 80AF6ED4  48 00 00 64 */	b lbl_80AF6F38
lbl_80AF6ED8:
/* 80AF6ED8  3C 60 80 AF */	lis r3, d_a_npc_sq__stringBase0@ha /* 0x80AF74A4@ha */
/* 80AF6EDC  38 63 74 A4 */	addi r3, r3, d_a_npc_sq__stringBase0@l /* 0x80AF74A4@l */
/* 80AF6EE0  38 80 00 14 */	li r4, 0x14
/* 80AF6EE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF6EE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6EEC  3C A5 00 02 */	addis r5, r5, 2
/* 80AF6EF0  38 C0 00 80 */	li r6, 0x80
/* 80AF6EF4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AF6EF8  4B 54 53 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AF6EFC  7C 65 1B 78 */	mr r5, r3
/* 80AF6F00  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80AF6F04  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF6F08  80 83 00 04 */	lwz r4, 4(r3)
/* 80AF6F0C  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80AF6F10  38 84 00 58 */	addi r4, r4, 0x58
/* 80AF6F14  38 C0 00 01 */	li r6, 1
/* 80AF6F18  38 E0 00 00 */	li r7, 0
/* 80AF6F1C  3D 00 80 AF */	lis r8, lit_3813@ha /* 0x80AF7420@ha */
/* 80AF6F20  C0 28 74 20 */	lfs f1, lit_3813@l(r8)  /* 0x80AF7420@l */
/* 80AF6F24  39 00 00 00 */	li r8, 0
/* 80AF6F28  39 20 FF FF */	li r9, -1
/* 80AF6F2C  4B 51 67 11 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80AF6F30  30 03 FF FF */	addic r0, r3, -1
/* 80AF6F34  7C 60 19 10 */	subfe r3, r0, r3
lbl_80AF6F38:
/* 80AF6F38  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF6F3C  4B 86 B2 E9 */	bl _restgpr_28
/* 80AF6F40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF6F44  7C 08 03 A6 */	mtlr r0
/* 80AF6F48  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF6F4C  4E 80 00 20 */	blr 
