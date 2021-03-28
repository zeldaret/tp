lbl_8076A488:
/* 8076A488  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8076A48C  7C 08 02 A6 */	mflr r0
/* 8076A490  90 01 00 34 */	stw r0, 0x34(r1)
/* 8076A494  39 61 00 30 */	addi r11, r1, 0x30
/* 8076A498  4B BF 7D 40 */	b _savegpr_28
/* 8076A49C  7C 7F 1B 78 */	mr r31, r3
/* 8076A4A0  38 60 00 58 */	li r3, 0x58
/* 8076A4A4  4B B6 47 A8 */	b __nw__FUl
/* 8076A4A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8076A4AC  41 82 00 94 */	beq lbl_8076A540
/* 8076A4B0  3C 60 80 77 */	lis r3, stringBase0@ha
/* 8076A4B4  38 63 B6 C4 */	addi r3, r3, stringBase0@l
/* 8076A4B8  38 80 00 45 */	li r4, 0x45
/* 8076A4BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8076A4C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8076A4C4  3F 85 00 02 */	addis r28, r5, 2
/* 8076A4C8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8076A4CC  7F 85 E3 78 */	mr r5, r28
/* 8076A4D0  38 C0 00 80 */	li r6, 0x80
/* 8076A4D4  4B 8D 1E 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076A4D8  7C 7D 1B 78 */	mr r29, r3
/* 8076A4DC  3C 60 80 77 */	lis r3, stringBase0@ha
/* 8076A4E0  38 63 B6 C4 */	addi r3, r3, stringBase0@l
/* 8076A4E4  38 80 00 53 */	li r4, 0x53
/* 8076A4E8  7F 85 E3 78 */	mr r5, r28
/* 8076A4EC  38 C0 00 80 */	li r6, 0x80
/* 8076A4F0  4B 8D 1D FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076A4F4  7C 64 1B 78 */	mr r4, r3
/* 8076A4F8  38 1F 05 D0 */	addi r0, r31, 0x5d0
/* 8076A4FC  90 01 00 08 */	stw r0, 8(r1)
/* 8076A500  3C 00 00 08 */	lis r0, 8
/* 8076A504  90 01 00 0C */	stw r0, 0xc(r1)
/* 8076A508  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8076A50C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8076A510  90 01 00 10 */	stw r0, 0x10(r1)
/* 8076A514  7F C3 F3 78 */	mr r3, r30
/* 8076A518  38 A0 00 00 */	li r5, 0
/* 8076A51C  38 C0 00 00 */	li r6, 0
/* 8076A520  7F A7 EB 78 */	mr r7, r29
/* 8076A524  39 00 00 02 */	li r8, 2
/* 8076A528  3D 20 80 77 */	lis r9, lit_4009@ha
/* 8076A52C  C0 29 B4 64 */	lfs f1, lit_4009@l(r9)
/* 8076A530  39 20 00 00 */	li r9, 0
/* 8076A534  39 40 FF FF */	li r10, -1
/* 8076A538  4B 8A 62 98 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8076A53C  7C 7E 1B 78 */	mr r30, r3
lbl_8076A540:
/* 8076A540  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 8076A544  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8076A548  28 03 00 00 */	cmplwi r3, 0
/* 8076A54C  41 82 00 10 */	beq lbl_8076A55C
/* 8076A550  80 A3 00 04 */	lwz r5, 4(r3)
/* 8076A554  28 05 00 00 */	cmplwi r5, 0
/* 8076A558  40 82 00 0C */	bne lbl_8076A564
lbl_8076A55C:
/* 8076A55C  38 60 00 00 */	li r3, 0
/* 8076A560  48 00 00 84 */	b lbl_8076A5E4
lbl_8076A564:
/* 8076A564  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8076A568  38 E0 00 00 */	li r7, 0
/* 8076A56C  3C 60 80 76 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8076A570  38 83 51 9C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 8076A574  48 00 00 18 */	b lbl_8076A58C
lbl_8076A578:
/* 8076A578  80 66 00 28 */	lwz r3, 0x28(r6)
/* 8076A57C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 8076A580  7C 63 00 2E */	lwzx r3, r3, r0
/* 8076A584  90 83 00 04 */	stw r4, 4(r3)
/* 8076A588  38 E7 00 01 */	addi r7, r7, 1
lbl_8076A58C:
/* 8076A58C  80 C5 00 04 */	lwz r6, 4(r5)
/* 8076A590  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 8076A594  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 8076A598  7C 00 18 40 */	cmplw r0, r3
/* 8076A59C  41 80 FF DC */	blt lbl_8076A578
/* 8076A5A0  3C 60 80 77 */	lis r3, stringBase0@ha
/* 8076A5A4  38 63 B6 C4 */	addi r3, r3, stringBase0@l
/* 8076A5A8  38 80 00 55 */	li r4, 0x55
/* 8076A5AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8076A5B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8076A5B4  3C A5 00 02 */	addis r5, r5, 2
/* 8076A5B8  38 C0 00 80 */	li r6, 0x80
/* 8076A5BC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8076A5C0  4B 8D 1D 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076A5C4  3C 80 00 08 */	lis r4, 8
/* 8076A5C8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8076A5CC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8076A5D0  4B 8A A6 84 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8076A5D4  90 7F 06 78 */	stw r3, 0x678(r31)
/* 8076A5D8  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 8076A5DC  30 03 FF FF */	addic r0, r3, -1
/* 8076A5E0  7C 60 19 10 */	subfe r3, r0, r3
lbl_8076A5E4:
/* 8076A5E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8076A5E8  4B BF 7C 3C */	b _restgpr_28
/* 8076A5EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8076A5F0  7C 08 03 A6 */	mtlr r0
/* 8076A5F4  38 21 00 30 */	addi r1, r1, 0x30
/* 8076A5F8  4E 80 00 20 */	blr 
