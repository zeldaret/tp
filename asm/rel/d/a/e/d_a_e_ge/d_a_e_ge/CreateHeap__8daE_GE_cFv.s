lbl_806CC278:
/* 806CC278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CC27C  7C 08 02 A6 */	mflr r0
/* 806CC280  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CC284  39 61 00 30 */	addi r11, r1, 0x30
/* 806CC288  4B C9 5F 51 */	bl _savegpr_28
/* 806CC28C  7C 7F 1B 78 */	mr r31, r3
/* 806CC290  38 60 00 58 */	li r3, 0x58
/* 806CC294  4B C0 29 B9 */	bl __nw__FUl
/* 806CC298  7C 7E 1B 79 */	or. r30, r3, r3
/* 806CC29C  41 82 00 94 */	beq lbl_806CC330
/* 806CC2A0  3C 60 80 6D */	lis r3, d_a_e_ge__stringBase0@ha /* 0x806CD10C@ha */
/* 806CC2A4  38 63 D1 0C */	addi r3, r3, d_a_e_ge__stringBase0@l /* 0x806CD10C@l */
/* 806CC2A8  38 80 00 0C */	li r4, 0xc
/* 806CC2AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CC2B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CC2B4  3F 85 00 02 */	addis r28, r5, 2
/* 806CC2B8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806CC2BC  7F 85 E3 78 */	mr r5, r28
/* 806CC2C0  38 C0 00 80 */	li r6, 0x80
/* 806CC2C4  4B 97 00 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806CC2C8  7C 7D 1B 78 */	mr r29, r3
/* 806CC2CC  3C 60 80 6D */	lis r3, d_a_e_ge__stringBase0@ha /* 0x806CD10C@ha */
/* 806CC2D0  38 63 D1 0C */	addi r3, r3, d_a_e_ge__stringBase0@l /* 0x806CD10C@l */
/* 806CC2D4  38 80 00 0F */	li r4, 0xf
/* 806CC2D8  7F 85 E3 78 */	mr r5, r28
/* 806CC2DC  38 C0 00 80 */	li r6, 0x80
/* 806CC2E0  4B 97 00 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806CC2E4  7C 64 1B 78 */	mr r4, r3
/* 806CC2E8  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 806CC2EC  90 01 00 08 */	stw r0, 8(r1)
/* 806CC2F0  3C 00 00 08 */	lis r0, 8
/* 806CC2F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CC2F8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806CC2FC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806CC300  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CC304  7F C3 F3 78 */	mr r3, r30
/* 806CC308  38 A0 00 00 */	li r5, 0
/* 806CC30C  38 C0 00 00 */	li r6, 0
/* 806CC310  7F A7 EB 78 */	mr r7, r29
/* 806CC314  39 00 00 00 */	li r8, 0
/* 806CC318  3D 20 80 6D */	lis r9, lit_3906@ha /* 0x806CD008@ha */
/* 806CC31C  C0 29 D0 08 */	lfs f1, lit_3906@l(r9)  /* 0x806CD008@l */
/* 806CC320  39 20 00 00 */	li r9, 0
/* 806CC324  39 40 FF FF */	li r10, -1
/* 806CC328  4B 94 44 A9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806CC32C  7C 7E 1B 78 */	mr r30, r3
lbl_806CC330:
/* 806CC330  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 806CC334  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CC338  28 03 00 00 */	cmplwi r3, 0
/* 806CC33C  41 82 00 10 */	beq lbl_806CC34C
/* 806CC340  80 03 00 04 */	lwz r0, 4(r3)
/* 806CC344  28 00 00 00 */	cmplwi r0, 0
/* 806CC348  40 82 00 0C */	bne lbl_806CC354
lbl_806CC34C:
/* 806CC34C  38 60 00 00 */	li r3, 0
/* 806CC350  48 00 00 08 */	b lbl_806CC358
lbl_806CC354:
/* 806CC354  38 60 00 01 */	li r3, 1
lbl_806CC358:
/* 806CC358  39 61 00 30 */	addi r11, r1, 0x30
/* 806CC35C  4B C9 5E C9 */	bl _restgpr_28
/* 806CC360  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CC364  7C 08 03 A6 */	mtlr r0
/* 806CC368  38 21 00 30 */	addi r1, r1, 0x30
/* 806CC36C  4E 80 00 20 */	blr 
