lbl_806A7710:
/* 806A7710  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A7714  7C 08 02 A6 */	mflr r0
/* 806A7718  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A771C  39 61 00 30 */	addi r11, r1, 0x30
/* 806A7720  4B CB AA B9 */	bl _savegpr_28
/* 806A7724  7C 7F 1B 78 */	mr r31, r3
/* 806A7728  3C 60 80 6B */	lis r3, d_a_e_df__stringBase0@ha /* 0x806A9FFC@ha */
/* 806A772C  38 63 9F FC */	addi r3, r3, d_a_e_df__stringBase0@l /* 0x806A9FFC@l */
/* 806A7730  38 80 00 0D */	li r4, 0xd
/* 806A7734  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A7738  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A773C  3F A5 00 02 */	addis r29, r5, 2
/* 806A7740  3B BD C2 F8 */	addi r29, r29, -15624
/* 806A7744  7F A5 EB 78 */	mr r5, r29
/* 806A7748  38 C0 00 80 */	li r6, 0x80
/* 806A774C  4B 99 4B A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A7750  7C 7C 1B 78 */	mr r28, r3
/* 806A7754  38 60 00 58 */	li r3, 0x58
/* 806A7758  4B C2 74 F5 */	bl __nw__FUl
/* 806A775C  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A7760  41 82 00 68 */	beq lbl_806A77C8
/* 806A7764  3C 60 80 6B */	lis r3, d_a_e_df__stringBase0@ha /* 0x806A9FFC@ha */
/* 806A7768  38 63 9F FC */	addi r3, r3, d_a_e_df__stringBase0@l /* 0x806A9FFC@l */
/* 806A776C  38 80 00 0A */	li r4, 0xa
/* 806A7770  7F A5 EB 78 */	mr r5, r29
/* 806A7774  38 C0 00 80 */	li r6, 0x80
/* 806A7778  4B 99 4B 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A777C  7C 67 1B 78 */	mr r7, r3
/* 806A7780  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 806A7784  90 01 00 08 */	stw r0, 8(r1)
/* 806A7788  3C 00 00 08 */	lis r0, 8
/* 806A778C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A7790  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806A7794  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806A7798  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A779C  7F C3 F3 78 */	mr r3, r30
/* 806A77A0  7F 84 E3 78 */	mr r4, r28
/* 806A77A4  38 A0 00 00 */	li r5, 0
/* 806A77A8  38 C0 00 00 */	li r6, 0
/* 806A77AC  39 00 00 02 */	li r8, 2
/* 806A77B0  3D 20 80 6B */	lis r9, lit_3918@ha /* 0x806A9F38@ha */
/* 806A77B4  C0 29 9F 38 */	lfs f1, lit_3918@l(r9)  /* 0x806A9F38@l */
/* 806A77B8  39 20 00 00 */	li r9, 0
/* 806A77BC  39 40 FF FF */	li r10, -1
/* 806A77C0  4B 96 90 11 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806A77C4  7C 7E 1B 78 */	mr r30, r3
lbl_806A77C8:
/* 806A77C8  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 806A77CC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A77D0  28 03 00 00 */	cmplwi r3, 0
/* 806A77D4  41 82 00 10 */	beq lbl_806A77E4
/* 806A77D8  80 03 00 04 */	lwz r0, 4(r3)
/* 806A77DC  28 00 00 00 */	cmplwi r0, 0
/* 806A77E0  40 82 00 0C */	bne lbl_806A77EC
lbl_806A77E4:
/* 806A77E4  38 60 00 00 */	li r3, 0
/* 806A77E8  48 00 00 08 */	b lbl_806A77F0
lbl_806A77EC:
/* 806A77EC  38 60 00 01 */	li r3, 1
lbl_806A77F0:
/* 806A77F0  39 61 00 30 */	addi r11, r1, 0x30
/* 806A77F4  4B CB AA 31 */	bl _restgpr_28
/* 806A77F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A77FC  7C 08 03 A6 */	mtlr r0
/* 806A7800  38 21 00 30 */	addi r1, r1, 0x30
/* 806A7804  4E 80 00 20 */	blr 
