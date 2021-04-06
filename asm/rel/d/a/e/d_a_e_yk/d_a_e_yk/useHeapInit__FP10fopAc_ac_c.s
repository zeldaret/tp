lbl_808070FC:
/* 808070FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80807100  7C 08 02 A6 */	mflr r0
/* 80807104  90 01 00 34 */	stw r0, 0x34(r1)
/* 80807108  39 61 00 30 */	addi r11, r1, 0x30
/* 8080710C  4B B5 B0 CD */	bl _savegpr_28
/* 80807110  7C 7F 1B 78 */	mr r31, r3
/* 80807114  38 60 00 58 */	li r3, 0x58
/* 80807118  4B AC 7B 35 */	bl __nw__FUl
/* 8080711C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80807120  41 82 00 94 */	beq lbl_808071B4
/* 80807124  3C 60 80 80 */	lis r3, d_a_e_yk__stringBase0@ha /* 0x80807D64@ha */
/* 80807128  38 63 7D 64 */	addi r3, r3, d_a_e_yk__stringBase0@l /* 0x80807D64@l */
/* 8080712C  38 80 00 09 */	li r4, 9
/* 80807130  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80807134  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80807138  3F 85 00 02 */	addis r28, r5, 2
/* 8080713C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80807140  7F 85 E3 78 */	mr r5, r28
/* 80807144  38 C0 00 80 */	li r6, 0x80
/* 80807148  4B 83 51 A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8080714C  7C 7D 1B 78 */	mr r29, r3
/* 80807150  3C 60 80 80 */	lis r3, d_a_e_yk__stringBase0@ha /* 0x80807D64@ha */
/* 80807154  38 63 7D 64 */	addi r3, r3, d_a_e_yk__stringBase0@l /* 0x80807D64@l */
/* 80807158  38 80 00 0C */	li r4, 0xc
/* 8080715C  7F 85 E3 78 */	mr r5, r28
/* 80807160  38 C0 00 80 */	li r6, 0x80
/* 80807164  4B 83 51 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80807168  7C 64 1B 78 */	mr r4, r3
/* 8080716C  38 1F 05 C4 */	addi r0, r31, 0x5c4
/* 80807170  90 01 00 08 */	stw r0, 8(r1)
/* 80807174  3C 00 00 08 */	lis r0, 8
/* 80807178  90 01 00 0C */	stw r0, 0xc(r1)
/* 8080717C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80807180  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80807184  90 01 00 10 */	stw r0, 0x10(r1)
/* 80807188  7F C3 F3 78 */	mr r3, r30
/* 8080718C  38 A0 00 00 */	li r5, 0
/* 80807190  38 C0 00 00 */	li r6, 0
/* 80807194  7F A7 EB 78 */	mr r7, r29
/* 80807198  39 00 00 02 */	li r8, 2
/* 8080719C  3D 20 80 80 */	lis r9, lit_3943@ha /* 0x80807CA4@ha */
/* 808071A0  C0 29 7C A4 */	lfs f1, lit_3943@l(r9)  /* 0x80807CA4@l */
/* 808071A4  39 20 00 00 */	li r9, 0
/* 808071A8  39 40 FF FF */	li r10, -1
/* 808071AC  4B 80 96 25 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 808071B0  7C 7E 1B 78 */	mr r30, r3
lbl_808071B4:
/* 808071B4  93 DF 05 C0 */	stw r30, 0x5c0(r31)
/* 808071B8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 808071BC  28 03 00 00 */	cmplwi r3, 0
/* 808071C0  41 82 00 10 */	beq lbl_808071D0
/* 808071C4  80 03 00 04 */	lwz r0, 4(r3)
/* 808071C8  28 00 00 00 */	cmplwi r0, 0
/* 808071CC  40 82 00 0C */	bne lbl_808071D8
lbl_808071D0:
/* 808071D0  38 60 00 00 */	li r3, 0
/* 808071D4  48 00 00 08 */	b lbl_808071DC
lbl_808071D8:
/* 808071D8  38 60 00 01 */	li r3, 1
lbl_808071DC:
/* 808071DC  39 61 00 30 */	addi r11, r1, 0x30
/* 808071E0  4B B5 B0 45 */	bl _restgpr_28
/* 808071E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808071E8  7C 08 03 A6 */	mtlr r0
/* 808071EC  38 21 00 30 */	addi r1, r1, 0x30
/* 808071F0  4E 80 00 20 */	blr 
