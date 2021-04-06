lbl_8077FCF8:
/* 8077FCF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8077FCFC  7C 08 02 A6 */	mflr r0
/* 8077FD00  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077FD04  39 61 00 30 */	addi r11, r1, 0x30
/* 8077FD08  4B BE 24 D1 */	bl _savegpr_28
/* 8077FD0C  7C 7F 1B 78 */	mr r31, r3
/* 8077FD10  38 60 00 58 */	li r3, 0x58
/* 8077FD14  4B B4 EF 39 */	bl __nw__FUl
/* 8077FD18  7C 7E 1B 79 */	or. r30, r3, r3
/* 8077FD1C  41 82 00 94 */	beq lbl_8077FDB0
/* 8077FD20  3C 60 80 78 */	lis r3, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8077FD24  38 63 0F 74 */	addi r3, r3, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 8077FD28  38 80 00 1D */	li r4, 0x1d
/* 8077FD2C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077FD30  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077FD34  3F 85 00 02 */	addis r28, r5, 2
/* 8077FD38  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8077FD3C  7F 85 E3 78 */	mr r5, r28
/* 8077FD40  38 C0 00 80 */	li r6, 0x80
/* 8077FD44  4B 8B C5 A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8077FD48  7C 7D 1B 78 */	mr r29, r3
/* 8077FD4C  3C 60 80 78 */	lis r3, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8077FD50  38 63 0F 74 */	addi r3, r3, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 8077FD54  38 80 00 22 */	li r4, 0x22
/* 8077FD58  7F 85 E3 78 */	mr r5, r28
/* 8077FD5C  38 C0 00 80 */	li r6, 0x80
/* 8077FD60  4B 8B C5 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8077FD64  7C 64 1B 78 */	mr r4, r3
/* 8077FD68  38 1F 05 E0 */	addi r0, r31, 0x5e0
/* 8077FD6C  90 01 00 08 */	stw r0, 8(r1)
/* 8077FD70  3C 00 00 08 */	lis r0, 8
/* 8077FD74  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077FD78  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8077FD7C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8077FD80  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077FD84  7F C3 F3 78 */	mr r3, r30
/* 8077FD88  38 A0 00 00 */	li r5, 0
/* 8077FD8C  38 C0 00 00 */	li r6, 0
/* 8077FD90  7F A7 EB 78 */	mr r7, r29
/* 8077FD94  39 00 00 00 */	li r8, 0
/* 8077FD98  3D 20 80 78 */	lis r9, lit_3905@ha /* 0x80780DCC@ha */
/* 8077FD9C  C0 29 0D CC */	lfs f1, lit_3905@l(r9)  /* 0x80780DCC@l */
/* 8077FDA0  39 20 00 00 */	li r9, 0
/* 8077FDA4  39 40 FF FF */	li r10, -1
/* 8077FDA8  4B 89 0A 29 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8077FDAC  7C 7E 1B 78 */	mr r30, r3
lbl_8077FDB0:
/* 8077FDB0  93 DF 05 D4 */	stw r30, 0x5d4(r31)
/* 8077FDB4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077FDB8  28 03 00 00 */	cmplwi r3, 0
/* 8077FDBC  41 82 00 10 */	beq lbl_8077FDCC
/* 8077FDC0  80 03 00 04 */	lwz r0, 4(r3)
/* 8077FDC4  28 00 00 00 */	cmplwi r0, 0
/* 8077FDC8  40 82 00 0C */	bne lbl_8077FDD4
lbl_8077FDCC:
/* 8077FDCC  38 60 00 00 */	li r3, 0
/* 8077FDD0  48 00 00 50 */	b lbl_8077FE20
lbl_8077FDD4:
/* 8077FDD4  38 7F 30 1C */	addi r3, r31, 0x301c
/* 8077FDD8  38 80 00 16 */	li r4, 0x16
/* 8077FDDC  38 A0 00 10 */	li r5, 0x10
/* 8077FDE0  38 C0 00 01 */	li r6, 1
/* 8077FDE4  4B 89 27 FD */	bl init__19mDoExt_3DlineMat0_cFUsUsi
/* 8077FDE8  2C 03 00 00 */	cmpwi r3, 0
/* 8077FDEC  40 82 00 0C */	bne lbl_8077FDF8
/* 8077FDF0  38 60 00 00 */	li r3, 0
/* 8077FDF4  48 00 00 2C */	b lbl_8077FE20
lbl_8077FDF8:
/* 8077FDF8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077FDFC  80 C3 00 04 */	lwz r6, 4(r3)
/* 8077FE00  38 7F 06 84 */	addi r3, r31, 0x684
/* 8077FE04  7F E4 FB 78 */	mr r4, r31
/* 8077FE08  3C A0 80 78 */	lis r5, jc_data@ha /* 0x80781178@ha */
/* 8077FE0C  38 A5 11 78 */	addi r5, r5, jc_data@l /* 0x80781178@l */
/* 8077FE10  38 E0 00 09 */	li r7, 9
/* 8077FE14  4B 8B 5E 8D */	bl init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 8077FE18  30 03 FF FF */	addic r0, r3, -1
/* 8077FE1C  7C 60 19 10 */	subfe r3, r0, r3
lbl_8077FE20:
/* 8077FE20  39 61 00 30 */	addi r11, r1, 0x30
/* 8077FE24  4B BE 24 01 */	bl _restgpr_28
/* 8077FE28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077FE2C  7C 08 03 A6 */	mtlr r0
/* 8077FE30  38 21 00 30 */	addi r1, r1, 0x30
/* 8077FE34  4E 80 00 20 */	blr 
