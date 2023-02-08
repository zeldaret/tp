lbl_80D55180:
/* 80D55180  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D55184  7C 08 02 A6 */	mflr r0
/* 80D55188  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D5518C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D55190  4B 60 D0 49 */	bl _savegpr_28
/* 80D55194  7C 7F 1B 78 */	mr r31, r3
/* 80D55198  3C 60 80 D5 */	lis r3, d_a_tag_TWgate__stringBase0@ha /* 0x80D55848@ha */
/* 80D5519C  38 63 58 48 */	addi r3, r3, d_a_tag_TWgate__stringBase0@l /* 0x80D55848@l */
/* 80D551A0  38 63 01 0B */	addi r3, r3, 0x10b
/* 80D551A4  38 80 00 07 */	li r4, 7
/* 80D551A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D551AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D551B0  3F 85 00 02 */	addis r28, r5, 2
/* 80D551B4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80D551B8  7F 85 E3 78 */	mr r5, r28
/* 80D551BC  38 C0 00 80 */	li r6, 0x80
/* 80D551C0  4B 2E 71 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D551C4  7C 7E 1B 78 */	mr r30, r3
/* 80D551C8  38 60 00 58 */	li r3, 0x58
/* 80D551CC  4B 57 9A 81 */	bl __nw__FUl
/* 80D551D0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D551D4  41 82 00 68 */	beq lbl_80D5523C
/* 80D551D8  3C 60 80 D5 */	lis r3, d_a_tag_TWgate__stringBase0@ha /* 0x80D55848@ha */
/* 80D551DC  38 63 58 48 */	addi r3, r3, d_a_tag_TWgate__stringBase0@l /* 0x80D55848@l */
/* 80D551E0  38 63 01 0B */	addi r3, r3, 0x10b
/* 80D551E4  38 80 00 04 */	li r4, 4
/* 80D551E8  7F 85 E3 78 */	mr r5, r28
/* 80D551EC  38 C0 00 80 */	li r6, 0x80
/* 80D551F0  4B 2E 70 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D551F4  7C 67 1B 78 */	mr r7, r3
/* 80D551F8  38 00 00 00 */	li r0, 0
/* 80D551FC  90 01 00 08 */	stw r0, 8(r1)
/* 80D55200  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D55204  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80D55208  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80D5520C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D55210  7F A3 EB 78 */	mr r3, r29
/* 80D55214  7F C4 F3 78 */	mr r4, r30
/* 80D55218  38 A0 00 00 */	li r5, 0
/* 80D5521C  38 C0 00 00 */	li r6, 0
/* 80D55220  39 00 00 00 */	li r8, 0
/* 80D55224  3D 20 80 D5 */	lis r9, lit_4080@ha /* 0x80D55830@ha */
/* 80D55228  C0 29 58 30 */	lfs f1, lit_4080@l(r9)  /* 0x80D55830@l */
/* 80D5522C  39 20 00 00 */	li r9, 0
/* 80D55230  39 40 FF FF */	li r10, -1
/* 80D55234  4B 2B B5 9D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80D55238  7C 7D 1B 78 */	mr r29, r3
lbl_80D5523C:
/* 80D5523C  93 BF 05 68 */	stw r29, 0x568(r31)
/* 80D55240  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D55244  28 03 00 00 */	cmplwi r3, 0
/* 80D55248  41 82 00 1C */	beq lbl_80D55264
/* 80D5524C  80 03 00 04 */	lwz r0, 4(r3)
/* 80D55250  28 00 00 00 */	cmplwi r0, 0
/* 80D55254  40 82 00 10 */	bne lbl_80D55264
/* 80D55258  4B 2B C0 B9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80D5525C  38 00 00 00 */	li r0, 0
/* 80D55260  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80D55264:
/* 80D55264  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D55268  30 03 FF FF */	addic r0, r3, -1
/* 80D5526C  7C 60 19 10 */	subfe r3, r0, r3
/* 80D55270  39 61 00 30 */	addi r11, r1, 0x30
/* 80D55274  4B 60 CF B1 */	bl _restgpr_28
/* 80D55278  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D5527C  7C 08 03 A6 */	mtlr r0
/* 80D55280  38 21 00 30 */	addi r1, r1, 0x30
/* 80D55284  4E 80 00 20 */	blr 
