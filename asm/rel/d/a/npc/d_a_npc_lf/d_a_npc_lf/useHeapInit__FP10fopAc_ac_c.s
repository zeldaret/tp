lbl_80A6A570:
/* 80A6A570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6A574  7C 08 02 A6 */	mflr r0
/* 80A6A578  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6A57C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6A580  4B 8F 7C 54 */	b _savegpr_27
/* 80A6A584  7C 7F 1B 78 */	mr r31, r3
/* 80A6A588  3C 60 80 A7 */	lis r3, stringBase0@ha
/* 80A6A58C  38 63 AA 14 */	addi r3, r3, stringBase0@l
/* 80A6A590  38 80 00 03 */	li r4, 3
/* 80A6A594  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A6A598  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A6A59C  3C A5 00 02 */	addis r5, r5, 2
/* 80A6A5A0  38 C0 00 80 */	li r6, 0x80
/* 80A6A5A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A6A5A8  4B 5D 1D 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A6A5AC  7C 7D 1B 78 */	mr r29, r3
/* 80A6A5B0  38 A0 00 00 */	li r5, 0
/* 80A6A5B4  3C 60 80 A7 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80A6A5B8  38 83 9B B4 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80A6A5BC  48 00 00 18 */	b lbl_80A6A5D4
lbl_80A6A5C0:
/* 80A6A5C0  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A6A5C4  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80A6A5C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A6A5CC  90 83 00 04 */	stw r4, 4(r3)
/* 80A6A5D0  38 A5 00 01 */	addi r5, r5, 1
lbl_80A6A5D4:
/* 80A6A5D4  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80A6A5D8  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80A6A5DC  7C 03 00 40 */	cmplw r3, r0
/* 80A6A5E0  41 80 FF E0 */	blt lbl_80A6A5C0
/* 80A6A5E4  3B 9F 05 BC */	addi r28, r31, 0x5bc
/* 80A6A5E8  3B 60 00 00 */	li r27, 0
/* 80A6A5EC  3F C0 11 00 */	lis r30, 0x1100
/* 80A6A5F0  48 00 00 38 */	b lbl_80A6A628
lbl_80A6A5F4:
/* 80A6A5F4  7F A3 EB 78 */	mr r3, r29
/* 80A6A5F8  3C 80 00 08 */	lis r4, 8
/* 80A6A5FC  38 BE 00 84 */	addi r5, r30, 0x84
/* 80A6A600  4B 5A A6 54 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A6A604  90 7C 00 00 */	stw r3, 0(r28)
/* 80A6A608  80 7C 00 00 */	lwz r3, 0(r28)
/* 80A6A60C  28 03 00 00 */	cmplwi r3, 0
/* 80A6A610  40 82 00 0C */	bne lbl_80A6A61C
/* 80A6A614  38 60 00 00 */	li r3, 0
/* 80A6A618  48 00 00 20 */	b lbl_80A6A638
lbl_80A6A61C:
/* 80A6A61C  93 83 00 14 */	stw r28, 0x14(r3)
/* 80A6A620  3B 7B 00 01 */	addi r27, r27, 1
/* 80A6A624  3B 9C 00 68 */	addi r28, r28, 0x68
lbl_80A6A628:
/* 80A6A628  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80A6A62C  7C 1B 00 00 */	cmpw r27, r0
/* 80A6A630  41 80 FF C4 */	blt lbl_80A6A5F4
/* 80A6A634  38 60 00 01 */	li r3, 1
lbl_80A6A638:
/* 80A6A638  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6A63C  4B 8F 7B E4 */	b _restgpr_27
/* 80A6A640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6A644  7C 08 03 A6 */	mtlr r0
/* 80A6A648  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6A64C  4E 80 00 20 */	blr 
