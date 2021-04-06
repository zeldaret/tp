lbl_807AC204:
/* 807AC204  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807AC208  7C 08 02 A6 */	mflr r0
/* 807AC20C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807AC210  39 61 00 30 */	addi r11, r1, 0x30
/* 807AC214  4B BB 5F C5 */	bl _savegpr_28
/* 807AC218  7C 7F 1B 78 */	mr r31, r3
/* 807AC21C  38 60 00 58 */	li r3, 0x58
/* 807AC220  4B B2 2A 2D */	bl __nw__FUl
/* 807AC224  7C 7E 1B 79 */	or. r30, r3, r3
/* 807AC228  41 82 00 94 */	beq lbl_807AC2BC
/* 807AC22C  3C 60 80 7B */	lis r3, d_a_e_sw__stringBase0@ha /* 0x807AFE70@ha */
/* 807AC230  38 63 FE 70 */	addi r3, r3, d_a_e_sw__stringBase0@l /* 0x807AFE70@l */
/* 807AC234  38 80 00 0D */	li r4, 0xd
/* 807AC238  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AC23C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AC240  3F 85 00 02 */	addis r28, r5, 2
/* 807AC244  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807AC248  7F 85 E3 78 */	mr r5, r28
/* 807AC24C  38 C0 00 80 */	li r6, 0x80
/* 807AC250  4B 89 00 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807AC254  7C 7D 1B 78 */	mr r29, r3
/* 807AC258  3C 60 80 7B */	lis r3, d_a_e_sw__stringBase0@ha /* 0x807AFE70@ha */
/* 807AC25C  38 63 FE 70 */	addi r3, r3, d_a_e_sw__stringBase0@l /* 0x807AFE70@l */
/* 807AC260  38 80 00 10 */	li r4, 0x10
/* 807AC264  7F 85 E3 78 */	mr r5, r28
/* 807AC268  38 C0 00 80 */	li r6, 0x80
/* 807AC26C  4B 89 00 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807AC270  7C 64 1B 78 */	mr r4, r3
/* 807AC274  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 807AC278  90 01 00 08 */	stw r0, 8(r1)
/* 807AC27C  3C 00 00 08 */	lis r0, 8
/* 807AC280  90 01 00 0C */	stw r0, 0xc(r1)
/* 807AC284  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807AC288  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807AC28C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AC290  7F C3 F3 78 */	mr r3, r30
/* 807AC294  38 A0 00 00 */	li r5, 0
/* 807AC298  38 C0 00 00 */	li r6, 0
/* 807AC29C  7F A7 EB 78 */	mr r7, r29
/* 807AC2A0  39 00 00 00 */	li r8, 0
/* 807AC2A4  3D 20 80 7B */	lis r9, lit_3911@ha /* 0x807AFD34@ha */
/* 807AC2A8  C0 29 FD 34 */	lfs f1, lit_3911@l(r9)  /* 0x807AFD34@l */
/* 807AC2AC  39 20 00 00 */	li r9, 0
/* 807AC2B0  39 40 FF FF */	li r10, -1
/* 807AC2B4  4B 86 45 1D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807AC2B8  7C 7E 1B 78 */	mr r30, r3
lbl_807AC2BC:
/* 807AC2BC  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 807AC2C0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807AC2C4  28 03 00 00 */	cmplwi r3, 0
/* 807AC2C8  41 82 00 10 */	beq lbl_807AC2D8
/* 807AC2CC  80 03 00 04 */	lwz r0, 4(r3)
/* 807AC2D0  28 00 00 00 */	cmplwi r0, 0
/* 807AC2D4  40 82 00 0C */	bne lbl_807AC2E0
lbl_807AC2D8:
/* 807AC2D8  38 60 00 00 */	li r3, 0
/* 807AC2DC  48 00 00 08 */	b lbl_807AC2E4
lbl_807AC2E0:
/* 807AC2E0  38 60 00 01 */	li r3, 1
lbl_807AC2E4:
/* 807AC2E4  39 61 00 30 */	addi r11, r1, 0x30
/* 807AC2E8  4B BB 5F 3D */	bl _restgpr_28
/* 807AC2EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807AC2F0  7C 08 03 A6 */	mtlr r0
/* 807AC2F4  38 21 00 30 */	addi r1, r1, 0x30
/* 807AC2F8  4E 80 00 20 */	blr 
